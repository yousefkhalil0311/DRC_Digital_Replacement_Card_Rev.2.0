#ifndef IOEXP_H
#define IOEXP_H

//Standard C includes
#include <stdint.h>

//Xilinx specific includes
#include "XIic.h"

//Project specific includes
#include "StructDefinitions.h"
#include "PeripheralMacros.h"

//Sets IOEXP_STATE variable
void Set_IOEXP_STATE (uint32_t mask, uint8_t state);

//Sets SPDT_CTRL_STATE variable
void Set_SPDT_CTRL_STATE (uint32_t mask, uint8_t state);

//Sets the switch path for a given function
int IOEXP_Path_Select (XIic *instance, uint8_t address, SWState_t path);

//Initializes the SPDT and SP4T switches to set the functions of the multifunction pins
int IOEXP_MultiFuntion_Pin_Init (XIic *instance, uint8_t address);

//Initializes IO expander
int IOEXP_Init (XIic *instance, uint8_t address);

//Writes values to ports of IO expander
int IOEXP_Write (XIic *instance, uint8_t address, uint32_t state_words);

//Writes value to single pin of IO expander to control IO pin direction
int IOEXP_WriteDirection (DIRCTRL_IOEXP *IOEXP, uint32_t bitMask, pinMode mode);

#endif
