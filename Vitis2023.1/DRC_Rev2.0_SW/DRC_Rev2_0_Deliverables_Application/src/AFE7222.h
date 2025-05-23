#ifndef AFE7222_H
#define AFE7222_H

//Xilinx specific includes
#include "XSpi.h"

//Initializes AFEs specified by CS with reg map in RegisterMaps.c
int AFE_Init (XSpi *instance, uint8_t *data, int num_bytes, uint32_t CS);

//Programs an AFE7222 converter.  cs is the chip select bit 1 << AFE#
int programAFEConverter(uint8_t cs, uint8_t* regMap, int regMapSize);

//Programs all AFE converters with the values in the regMap register map
int programAFEConverters(uint8_t* regMap, int regMapSize);

//Gets a register value from the regMap and register address specified
uint8_t getRegMapVal(uint8_t* regMap, int regMapSize, uint16_t regNum);

//sets a value in the regMap and register address specified
void setRegMapVal(uint8_t* regMap, int regMapSize, uint16_t regNum, uint8_t regVal);

//Sets AFE7222 and FPGA data path to read ADC values. Returns a sample after being set up.
int HSADC_Init(uint8_t converterNum, uint8_t channel);

//Returns a sample from a specified ADC channel.
int HSADC_getVoltage_mV(uint8_t converterNum, uint8_t channel);

#endif

