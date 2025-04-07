#include "IOEXP.h"

//Project specific includes
#include "PeripheralMacros.h"
#include "DRC_Parameters.h"

//CONFIG COMMAND 0x8C, Following bytes set P7-0, P17-10 and P27-P20 to outputs.
uint8_t IO_EXP_PIN_CONFIG[4] = {IOEXP_config_cmd, 0x00, 0x00, 0x00};

uint32_t IOEXP_STATE = 0x000001; //pin data. 1 is on 0 is off. P7-0, P17-10, P27-20

uint32_t SPDT_CTRL_STATE = 0x000000;

void Set_IOEXP_STATE (uint32_t mask, uint8_t state){
	if(state){
		IOEXP_STATE = (~mask & IOEXP_STATE) | (mask);
	}
	else{
		IOEXP_STATE = (~mask & IOEXP_STATE);
	}
}

void Set_SPDT_CTRL_STATE (uint32_t mask, uint8_t state){
	if(state){
		SPDT_CTRL_STATE = (~mask & SPDT_CTRL_STATE) | (mask);
	}
	else{
		SPDT_CTRL_STATE = (~mask & SPDT_CTRL_STATE);
	}
}

//Sets the switch path for a given function
int IOEXP_Path_Select (XIic *instance, uint8_t address, SWState_t path){
	//int Status;
	if (path.switch_type == SPDT) {
		switch(path.port){
		case 0:
			print("Error: Can't disable SPDT switch. \n");
			return XST_FAILURE;
		case 1:
			//set fpga pin low
			Set_SPDT_CTRL_STATE (1 << path.fpga_ctrl_pin.bit_num, 0);
			break;
		case 2:
			//set fpga pin high
			Set_SPDT_CTRL_STATE (1 << path.fpga_ctrl_pin.bit_num, 1);
			break;
		default:
			print("Error: Bad port num on SPDT switch. \n");
			return XST_FAILURE;
		}
		XGpio_DiscreteWrite(&GPIO7_SPDT, 1, SPDT_CTRL_STATE);
	}
	if (path.switch_type == SP4T){
		if (path.port > 4){
			print("Error: Port > 4 on SP4T switch. \n");
			return XST_FAILURE;
		}
		if(path.port > 0){
			path.port--; //convert ports 1-4 to ports 0-3 for SW truth table
			if (path.SP4T_Switch.IOEXP_EN != 0) {
				Set_IOEXP_STATE (path.SP4T_Switch.IOEXP_EN, 1);
			}
			Set_IOEXP_STATE (path.SP4T_Switch.IOEXP_CTRL1, (path.port >> 1) & 1);
			Set_IOEXP_STATE (path.SP4T_Switch.IOEXP_CTRL2, (path.port >> 0) & 1);
		}

		else{
			//disable port
			if (path.SP4T_Switch.IOEXP_EN == 0){
				//Path doesn't have a disable option
				print("Error: Switch doesn't have disable mode.");
				return XST_FAILURE;
			}

			Set_IOEXP_STATE (path.SP4T_Switch.IOEXP_EN, 0);
		}
		IOEXP_Write(instance, IOEXP0_ADDRESS, IOEXP_STATE);

	}
	return XST_SUCCESS;
}

//Initializes the SPDT and SP4T switches to set the functions of the multifunction pins
int IOEXP_MultiFuntion_Pin_Init (XIic *instance, uint8_t address){
	int Status;
	int num_Pins = PIN_SETTINGS_LEN;
	for (int i = 0; i < num_Pins; i++){
		Status = IOEXP_Path_Select(instance, address, Pin_Settings[i]);
		if (Status != XST_SUCCESS){
			return XST_FAILURE;
		}
	}

	return XST_SUCCESS;
}

int IOEXP_Init (XIic *instance, uint8_t address){
	int Status;
	Status = XIic_Send(instance->BaseAddress, address, IO_EXP_PIN_CONFIG, sizeof(IO_EXP_PIN_CONFIG), XIIC_STOP);
	if(Status != sizeof(IO_EXP_PIN_CONFIG)){
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int IOEXP_Write (XIic *instance, uint8_t address, uint32_t state){ //state_words = {P7_0, P17_10, P27_20}
	int Status;

	uint8_t data[] = { //converts 24 LSBs of state_words to 3 bytes.
			IOEXP_write_cmd,
			(state >> 16) & 0xFF, //P7_0
			(state >> 8) & 0xFF,  //P17_10
			(state >> 0) & 0xFF,  //P27_20
	};

	Status = XIic_Send(instance->BaseAddress, address, data, 4, XIIC_STOP);
	if(Status != 4){
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}
