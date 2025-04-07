#ifndef AXI_Block_Init_H
#define AXI_Block_Init_H

//Standard C includes
#include <stdint.h>

//Xilinx specific includes
#include "XGpio.h"
#include "XSpi.h"
#include "XIic.h"

//Project specific includes
#include "StructDefinitions.h"

//initializes AXI GPIO bus given XGpio ID with all connections and their default direction to the bus (if bidirectional, default is input)
int GPIO_Init_Wrapper (const net_t **signals, int num_signals, uint16_t busID);

//initializes AXI GPIO bus given XGpio instance and sets pin direction (I/O) for each channel (0 for output, 1 for input)
int GPIO_Init (XGpio *instance, uint8_t channel, uint32_t ch_direction, uint32_t ch_initState);

//initializes spi bus given bus instance and id
int SPI_Init (XSpi *instance, uint16_t bus_id);

//initializes IIC bus given bus instance and id
int IIC_Init (XIic *instance, uint16_t bus_id, uint8_t address);

#endif
