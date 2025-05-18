#include "AXI_Block_Init.h"

//Standard C includes
#include <stdbool.h>
#include <stdio.h>

//initializes AXI GPIO bus given XGpio ID with all connections and their default direction to the bus (if bidirectional, default is input)
int GPIO_Init_Wrapper (const net_t** signals, int num_signals, uint16_t busID){
	int Status;
	XGpio *instance = signals[0]->instance;
	if (instance == NULL){
		 //XST_FAILURE;
	}
	bool uses_ch1 = false;
	bool uses_ch2 = false;

	uint32_t ch1_direction = 0; //Default all outputs
	uint32_t ch2_direction = 0; //Default all outputs
	uint32_t ch1_initState = 0; //Default all outputs
	uint32_t ch2_initState = 0; //Default all outputs
	for (int i = 0; i < num_signals; i++){
		int channel = signals[i]->channel;
		switch (signals[i]->direction){
		case 0: //All are already considered outputs and a 0 is already in the place of the bit the GPIO corresponds to
			signals[i]->IOEXP->DIR_CTRL_STATE |= signals[i]->DIR_CTRL; //set the IOEXP bit if this pin is to be an output
			if (channel == 1) {
				ch1_initState = ch1_initState | (signals[i]->default_state << signals[i]->bit_num); //Set GPIO default state param
				uses_ch1 = true;
			}
			else if (channel == 2){
				ch2_initState = ch2_initState | (signals[i]->default_state << signals[i]->bit_num); //Set GPIO default state param
				uses_ch2 = true;
			}
			else{
				printf("Error: GPIO pin should have channel = 1 or 2.\n");
				return XST_FAILURE;
			}
			break;
		case 1: //Input
			//All inputs/IO pins will not use the default_state param of the pins, as they are initially set up as inputs
			if (channel == 1){
				ch1_direction = ch1_direction | (1 << signals[i]->bit_num); //Set bit corresponding to GPIO desired to be input
				uses_ch1 = true;
			}
			else if (channel == 2){
				ch2_direction = ch2_direction | (1 << signals[i]->bit_num); //Set bit corresponding to GPIO desired to be input
				uses_ch2 = true;
			}
			else {
				printf("Error: GPIO pin should have channel = 1 or 2.\n");
				return XST_FAILURE;
			}
			break;
		default:
			printf("Error: GPIO direction should be 0, 1, or 2");
			return XST_FAILURE;
		}
	}
	XGpio_Initialize (instance, busID);
	if (uses_ch1){
		Status = GPIO_Init (instance, 1, ch1_direction, ch1_initState);
		Status = XST_SUCCESS;
		if (Status != XST_SUCCESS){
			return XST_FAILURE;
		}
	}
	if (uses_ch2){
		Status = GPIO_Init (instance, 2, ch2_direction, ch2_initState);
		Status = XST_SUCCESS;
		if (Status != XST_SUCCESS){
			return XST_FAILURE;
		}
	}
	return XST_SUCCESS;
}

//initializes AXI GPIO bus given XGpio instance and sets pin direction (I/O) for each channel (0 for output, 1 for input)
int GPIO_Init (XGpio *instance, uint8_t channel, uint32_t ch_direction, uint32_t ch_initState){
	XGpio_SetDataDirection(instance, channel, ch_direction);
	XGpio_DiscreteWrite(instance, channel, ch_initState);
	return XST_SUCCESS;
}

int SPI_Init (XSpi *instance, uint16_t bus_id){

	int Status;
    XSpi_Config *ConfigPtr;

    ConfigPtr = XSpi_LookupConfig(bus_id);
    if (ConfigPtr == NULL){
    	return XST_DEVICE_NOT_FOUND;
    }

    Status = XSpi_CfgInitialize(instance, ConfigPtr, ConfigPtr->BaseAddress);
    if (Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    Status = XSpi_SetOptions(instance, XSP_MASTER_OPTION | XSP_MANUAL_SSELECT_OPTION);
    if (Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    XSpi_Start(instance);
    XSpi_IntrGlobalDisable(instance);

    //SPI1_LSDAC initialized. Usage:
    //Set CS pin: 	XSpi_SetSlaveSelect(Instance, cs pin)
    //Transfer data:XSpi_Transfer(Instance, Tx_Data_buffer, Rx_Data_buffer, Buffer size in bytes)
    //Transfer function return XST_SUCCESS and XST_FAILURE

    return XST_SUCCESS;
}

//initializes IIC bus given bus instance and adress
int IIC_Init (XIic *instance, uint16_t bus_id, uint8_t address){
	int Status;
	XIic_Config *ConfigPtr;

	ConfigPtr = XIic_LookupConfig(bus_id);
	if (ConfigPtr == NULL){
		return XST_DEVICE_NOT_FOUND;
	}

	Status = XIic_CfgInitialize(instance, ConfigPtr, ConfigPtr->BaseAddress);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XIic_SetAddress(instance, XII_ADDR_TO_SEND_TYPE, address);
	if(Status != XST_SUCCESS){
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}
