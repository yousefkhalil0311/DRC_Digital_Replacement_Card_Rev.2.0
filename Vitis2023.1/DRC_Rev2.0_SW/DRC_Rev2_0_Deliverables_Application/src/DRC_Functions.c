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

//change IO pin configuration for 1 Multifunction pin
int setPath(SWState_t path){

	int i = 0;

	//iterate over Pin_Settings to change switch states.
	while(i < PIN_SETTINGS_LEN){

		//Replace the SWState_t in the array with the same pin_num field in Pin_Settings to the path variable
		if(Pin_Settings[i].pin_num == path.pin_num){

			Pin_Settings[path.pin_num] = path;

			//Reinitialize Switch Settings For Desired States
		    int Status = IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
		    if(Status != XST_SUCCESS){
		    	return XST_FAILURE;
		    }

		}

		i++;
	}

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
