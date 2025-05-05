#ifndef AFE7222_H
#define AFE7222_H

//Xilinx specific includes
#include "XSpi.h"

//Initializes AFEs specified by CS with reg map in RegisterMaps.c
int AFE_Init (XSpi *instance, uint8_t *data, int num_bytes, uint32_t CS);

//Programs all AFE converters with the values in the regMap register map
void programAFEConverters(uint8_t* regMap, int regMapSize);

//Gets a register value from the regMap and register address specified
uint8_t getRegMapVal(uint8_t* regMap, int regMapSize, uint16_t regNum);

//sets a value in the regMap and register address specified
void setRegMapVal(uint8_t* regMap, int regMapSize, uint16_t regNum, uint8_t regVal);

#endif

