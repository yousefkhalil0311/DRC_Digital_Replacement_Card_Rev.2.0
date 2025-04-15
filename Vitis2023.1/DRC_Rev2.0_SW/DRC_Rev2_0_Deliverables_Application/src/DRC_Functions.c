#include "DRC_Functions.h"

//Xilinx specific includes
#include "XGpio.h"
#include "DRC_Parameters.h"
#include "IOEXP.h"
#include "AFE7222.h"

//sets the Status of the edge mounted LEDs.
void setLEDStatus (uint8_t status){
	XGpio_DiscreteWrite(&GPIO0_LEDS, 1, status);
}

//Sets the direction of an IO pin
void setIODirection(const net_t* pin, pinMode mode){
	uint32_t XGpioDirectionReg = XGpio_GetDataDirection(pin->instance, pin->channel);

	if(mode == OUTPUT){
		XGpioDirectionReg &= ~(1 << pin->bit_num);
	}
	if(mode == INPUT){
		XGpioDirectionReg |= (1 << pin->bit_num);
	}

	XGpio_SetDataDirection(pin->instance, pin->channel, XGpioDirectionReg);

	IOEXP_WriteDirection(pin->IOEXP, pin->DIR_CTRL, mode);

	return;
}

//sets the State of an IO pin
void setIOPin (const net_t* pin, uint8_t state){

	uint32_t outputData = 0;

	//store the change to the AXI output cache
	if(pin->instance == &GPIO9_SE){
		if(state){
			GPIO9_SE_OUTPUT_cache[pin->channel - 1] |= (1 << pin->bit_num);
		}
		else{
			GPIO9_SE_OUTPUT_cache[pin->channel - 1] &= ~(1 << pin->bit_num);
		}
		outputData = GPIO9_SE_OUTPUT_cache[pin->channel - 1];
	}
	else if (pin->instance == &GPIO10_DS){
		if(state){
			GPIO10_DS_OUTPUT_cache[pin->channel - 1] |= (1 << pin->bit_num);
		}
		else{
			GPIO10_DS_OUTPUT_cache[pin->channel - 1] &= ~(1 << pin->bit_num);
		}
		outputData = GPIO10_DS_OUTPUT_cache[pin->channel - 1];
	}
	else{
		return;
	}

	setIODirection(pin, OUTPUT);

	IOEXP_WriteDirection(pin->IOEXP, pin->DIR_CTRL, OUTPUT);

	XGpio_DiscreteWrite(pin->instance, pin->channel, outputData);

	return;

}

//sets the State of an IO pin
int readIOPin (const net_t* pin){

	setIODirection(pin, INPUT);

	IOEXP_WriteDirection(pin->IOEXP, pin->DIR_CTRL, INPUT);

	if (XGpio_DiscreteRead(pin->instance, pin->channel) & (1 << pin->bit_num)){
		return 1;
	}

	return 0;
}

//clear serial buffer
void clearBuffer(){
	int d;
	while((d = getchar()) != '\n' && d != EOF && d != '\r');
	return;
}

//clear serial terminal screen
void clearTerminal(){
	printf("\033[2J\033[H");
	return;
}

//Prints the state of an IO pin in its corresponding terminal output location
void displayPinState(uint8_t pinNum, uint8_t state){
	printf("\033[%d;%dH", 4 + pinNum%30, 30 * (pinNum/30));
	printf("Pin %d: %d\n", pinNum, state);
	return;
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
