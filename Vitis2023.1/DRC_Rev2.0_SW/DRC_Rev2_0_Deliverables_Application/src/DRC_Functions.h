#ifndef DRC_Functions_H
#define DRC_Functions_H

//Standard C includes
#include <stdio.h>
#include <stdint.h>

//Project specific includes
#include "StructDefinitions.h"
#include "PeripheralMacros.h"

//Sets the direction of an IO pin
void setIODirection(const net_t* pin, pinMode mode);

//sets the Status of the edge mounted LEDs.
void setLEDStatus (uint8_t status);

//sets the State of an IO pin
void setIOPin (const net_t* pin, uint8_t state);

//sets the State of an IO pin
int readIOPin (const net_t* pin);

//clear serial buffer
void clearBuffer();

//clear serial terminal screen
void clearTerminal();

//Prints the state of an IO pin in its corresponding terminal output location
void displayPinState(uint8_t pinNum, uint8_t state);

#endif
