#ifndef LSDAC_H
#define LSDAC_H

//Standard C includes
#include <stdint.h>

//Project specific includes
#include "StructDefinitions.h"

//Writes Value to 1 channel of LS DAC
int LS_DAC_Write(const LSDAC_t *LSDAC, uint8_t CHANNEL, uint16_t DATA);

//Writes Values to all channels of LS DAC
int LS_DAC_WriteAll(const LSDAC_t *LSDAC, uint16_t DATA);

//Wrapper for LS_DAC_Write. Writes voltage to LSDAC channel
int LS_DAC_WriteVoltage(const LSDAC_t *LSDAC, uint8_t CHANNEL, double voltage);

#endif
