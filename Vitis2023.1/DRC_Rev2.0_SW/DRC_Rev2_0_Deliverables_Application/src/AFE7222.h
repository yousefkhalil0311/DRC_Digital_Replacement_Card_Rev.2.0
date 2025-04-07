#ifndef AFE7222_H
#define AFE7222_H

//Xilinx specific includes
#include "XSpi.h"

//Initializes AFEs specified by CS with reg map in RegisterMaps.c
int AFE_Init (XSpi *instance, uint8_t *data, int num_bytes, uint32_t CS);

#endif

