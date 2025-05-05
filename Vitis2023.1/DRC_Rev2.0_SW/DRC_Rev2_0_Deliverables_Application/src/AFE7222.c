#include "AFE7222.h"

//Standard C includes
#include <stdio.h>

//Xilinx specific includes
#include "xspi.h"

//Project specific includes
#include "DRC_Parameters.h"

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

//Programs all AFE converters with the values in the regMap register map
void programAFEConverters(uint8_t* regMap, int regMapSize){
	for (int i = 0x01; i < (0x01 << 4); i = i << 1){
		   int Status = AFE_Init(&SPI0_AFE, regMap, regMapSize, i);
		   if(Status != XST_SUCCESS) return XST_FAILURE;
	}
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
