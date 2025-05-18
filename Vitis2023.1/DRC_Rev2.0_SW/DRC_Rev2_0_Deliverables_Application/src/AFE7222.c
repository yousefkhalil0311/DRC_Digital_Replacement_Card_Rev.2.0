#include "AFE7222.h"

//Standard C includes
#include <stdio.h>

//Xilinx specific includes
#include "xspi.h"

//Project specific includes
#include "DRC_Parameters.h"
#include "RegisterMaps.h"


//store current state of DAC/ADC control data path within the FPGA

static uint8_t GPIO14_AFE_CTRL_CACHE = 0x0F;

int AFE_Init (XSpi *instance, uint8_t *data, int num_bytes, uint32_t CS){

	int Status;
	XSpi_SetSlaveSelect(instance, CS);

	uint8_t data_words[num_bytes];
	for (int i = 0; i < num_bytes; i++){
		data_words[i] = data[i];
	}

	uint8_t Rx_buffer[3];

	for (int i = 0; i < num_bytes; i+=3){
		Status = XSpi_Transfer(instance, &data_words[i], Rx_buffer, 3);
		if (Status != XST_SUCCESS){
			return XST_FAILURE;
		}
	}

	return XST_SUCCESS;
}

//Programs an AFE7222 converter.  cs is the chip select bit 1 << AFE#
int programAFEConverter(uint8_t cs, uint8_t* regMap, int regMapSize){

	//Write register map to converter
   int Status = AFE_Init(&SPI0_AFE, regMap, regMapSize, cs);

   if(Status != XST_SUCCESS) return XST_FAILURE;
   return XST_SUCCESS;

}

//Programs all AFE converters with the values in the regMap register map
int programAFEConverters(uint8_t* regMap, int regMapSize){

	for (int i = 0x01; i < (0x01 << 4); i = i << 1){

		//program individual converter
	   int Status = programAFEConverter(i, regMap, regMapSize);

	   if(Status != XST_SUCCESS) return XST_FAILURE;

	}

	return XST_SUCCESS;
}

//Gets a register value from the regMap and register address specified
uint8_t getRegMapVal(uint8_t* regMap, int regMapSize, uint16_t regNum){
	for(int regIndex = 0; regIndex < regMapSize; regIndex+=3){

		//store first 12 bits of each 3 byte sequence as register address
		uint16_t currentReg = (regMap[regIndex] << 4) | (regMap[regIndex + 1] >> 4);

		//return current register content of regNum in regMap (bits 4-11)
		if(regNum == currentReg){
			return (regMap[regIndex + 1] << 4) | (regMap[regIndex + 2] >> 4);
		}
	}

	printf("Error: getRegMapVal - Failed to find register. ");
	return 0;
}

//sets a value in the regMap and register address specified
void setRegMapVal(uint8_t* regMap, int regMapSize, uint16_t regNum, uint8_t regVal){

	for(int regIndex = 0; regIndex < regMapSize; regIndex+=3){

		//store first 12 bits of each 3 byte sequence as register address
		uint16_t currentReg = (regMap[regIndex] << 4) | (regMap[regIndex + 1] >> 4);

		//return current register content of regNum in regMap (bits 4-11)
		if(regNum == currentReg){
			regMap[regIndex + 1] = (regMap[regIndex + 1] & 0xF0) | (regVal >> 4);
			regMap[regIndex + 2] = (regVal << 4) & 0xF0;
			return;
		}
	}

	printf("Error: setRegMapVal - Failed to find register. ");
}

//Initializes AFE7222 DAC.
void HSDAC_Init(uint8_t converterNum, uint8_t channel, int mV_Value){

	//program converter to be in DAC only mode
	programAFEConverter(1 << converterNum, AFE_REG_MAP, AFE_REG_MAP_SIZE);

	//Reset cache bit corresponding to this converter
	GPIO14_AFE_CTRL_CACHE &= ~(0x08 >> converterNum);

    //Set data path to connect DAC control block to AFE7222 pins
    XGpio_DiscreteWrite(&GPIO14_AFE_CTRL, 1, GPIO14_AFE_CTRL_CACHE);

	//set HSDAC controller to be in const voltage mode(this will set const mode for all converters)
	XGpio_DiscreteWrite(&GPIO8_CTRL, 2, 1);

	HSDAC_setVoltage(converterNum, channel, mV_Value);

	//clear bit in control mask to enable FE output
	uint8_t ctrlMask = (1 << (converterNum + 4)) & 0xF6;

	//Enable DAC's Frontend
	XGpio_DiscreteWrite(&GPIO8_CTRL, 1, ctrlMask);

}

//Sets a constant output voltage on the specified AFE7222 DAC. -5.0V <= voltage <= 5.0V
void HSDAC_setVoltage(uint8_t converterNum, uint8_t channel, int mV_Value){

	//set bounds for voltage input
	if(mV_Value > 5.0) mV_Value = 5.0;
	if(mV_Value < -5.0) mV_Value = -5.0;

	int voltageValue = (mV_Value * 2047) / 5;

	XGpio* xgpioInstanceTable[] = {&GPIO15_DAC0Const, &GPIO16_DAC1Const, &GPIO17_DAC2Const, &GPIO18_DAC3Const};

	XGpio* instance;

	instance = xgpioInstanceTable[converterNum];

	//write voltage value to corresponding HSDAC controller
	XGpio_DiscreteWrite(instance, channel, voltageValue);

}

//Sets AFE7222 and FPGA data path to read ADC values. Returns a sample after being set up.
int HSADC_Init(uint8_t converterNum, uint8_t channel){

	//program converter to be in reset mode (Loopback mode is equivalent to ADC only mode in this test case)
	programAFEConverter(1 << converterNum, AFE_LPBK_REG_MAP, AFE_LPBK_REG_MAP_SIZE);

	//Set cache bit corresponding to this converter
	GPIO14_AFE_CTRL_CACHE = 0xF;//|= (0x08 >> converterNum);

    //Set data path to connect ADC control block to AFE7222 pins
    XGpio_DiscreteWrite(&GPIO14_AFE_CTRL, 1, GPIO14_AFE_CTRL_CACHE);

	return HSADC_getVoltage_mV(converterNum, channel);
}

//Returns a sample from a specified ADC channel.
int HSADC_getVoltage_mV(uint8_t converterNum, uint8_t channel){

	XGpio* instance;
	uint8_t AXIGPIO_channel;

	if(channel == 'A') {
		AXIGPIO_channel = 1;
	}
	else if(channel == 'B') {
		AXIGPIO_channel = 2;
	}
	else{
		return -1;
	}

	//set ADC read block parameters
    switch(converterNum){

    case 0:
    	instance = &GPIO20_ADCDATA_0;
    	break;
    case 1:
    	instance = &GPIO21_ADCDATA_1;
    	break;
    case 2:
    	instance = &GPIO22_ADCDATA_2;
    	break;
    case 3:
    	instance = &GPIO23_ADCDATA_3;
    	break;
    default:
    	break;

    };

    //read current ADC digital data
    int readValue = XGpio_DiscreteRead(instance, AXIGPIO_channel);

	//convert 12 bit signed value from ADC to unsigned value (0-10V mapping)
	int unsignedADCVal = readValue ^ 0x800;

    int voltage = (unsignedADCVal * 5000) / 2047;

	return voltage;
}
