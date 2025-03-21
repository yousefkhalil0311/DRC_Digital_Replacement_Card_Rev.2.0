/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <unistd.h>
#include <math.h>
#include "platform.h"
#include "xil_printf.h"
#include "xiic.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xspi.h"

//Project specific files
#include "RegisterMaps.h"
#include "XPAR_AXI_IDS.h"
#include "PeripheralMacros.h"
#include "StructDefinitions.h"

//define GPIO IDs for MinMax values of the converters
#define GPIO2_DATA0A_ID		XPAR_AXI_GPIO_2_DEVICE_ID
#define GPIO3_DATA0B_ID		XPAR_AXI_GPIO_3_DEVICE_ID
#define GPIO4_DATA1A_ID		XPAR_AXI_GPIO_4_DEVICE_ID
#define GPIO5_DATA1B_ID		XPAR_AXI_GPIO_5_DEVICE_ID
#define GPIO6_DATA2A_ID		XPAR_AXI_GPIO_6_DEVICE_ID
#define GPIO11_DATA2B_ID	XPAR_AXI_GPIO_11_DEVICE_ID
#define GPIO12_DATA3A_ID	XPAR_AXI_GPIO_12_DEVICE_ID
#define GPIO13_DATA3B_ID	XPAR_AXI_GPIO_13_DEVICE_ID

//GPIO bus XGpio instances
XGpio GPIO8_CTRL;
XGpio GPIO0_LEDS;
XGpio GPIO9_SE;
XGpio GPIO10_DS;
XGpio GPIO7_SPDT;
XGpio GPIO11_CLKP;
XGpio GPIO1_SPDCTRL;
//XGpio GPIO6_DATA3;
//XGpio GPIO3_DATA0;
//XGpio GPIO5_DATA2;
//XGpio GPIO4_DATA1;
XGpio GPIO2_DATA0A;
XGpio GPIO3_DATA0B;
XGpio GPIO4_DATA1A;
XGpio GPIO5_DATA1B;
XGpio GPIO6_DATA2A;
XGpio GPIO11_DATA2B;
XGpio GPIO12_DATA3A;
XGpio GPIO13_DATA3B;

//IIC bus XIic instances
XIic IIC0_IOEXP;

//SPI bus XSpi instances
XSpi SPI0_AFE;
XSpi SPI1_LSDAC;

//LSDAC structs
const LSDAC_t LSDAC0 = {&SPI1_LSDAC, 0x01};
const LSDAC_t LSDAC1 = {&SPI1_LSDAC, 0x02};

//SP4T switch structs. Maps SP4T switch control pins to IO expander pins
const SP4T_t SP4T0 = {	   0  , 0x010000, 0x000100};
const SP4T_t SP4T1 = {	   0  , 0x020000, 0x000200};
const SP4T_t SP4T2 = {	   0  , 0x040000, 0x000400};
const SP4T_t SP4T3 = {0x000001, 0x080000, 0x000800};
const SP4T_t SP4T4 = {	   0  , 0x100000, 0x001000};
const SP4T_t SP4T5 = {	   0  , 0x200000, 0x002000};
const SP4T_t SP4T6 = {	   0  , 0x400000, 0x004000};
const SP4T_t SP4T7 = {	   0  , 0x800000, 0x008000};
const SP4T_t NOT_SP4T = {	   0, 0, 0};

//LED XGpio pins
const net_t LED1 = {&GPIO0_LEDS, 0, 1, 0, 0};
const net_t LED2 = {&GPIO0_LEDS, 1, 1, 0, 1};
const net_t LED3 = {&GPIO0_LEDS, 2, 1, 0, 1};
const net_t LED4 = {&GPIO0_LEDS, 3, 1, 0, 0};

//CTRL XGpio pins
const net_t INT_n   = {&GPIO8_CTRL, 0, 1, 1, 0};
const net_t EXP_RST = {&GPIO8_CTRL, 1, 1, 0, 1};
const net_t CLR_n   = {&GPIO8_CTRL, 2, 1, 0, 1};
const net_t RESET   = {&GPIO8_CTRL, 3, 1, 0, 0};

//SPDT control XGpio pins
const net_t SPDT3_CTRL  = {&GPIO7_SPDT, 0, 1, 0, 1}; //Path_Select will override default_state here
const net_t SPDT6_CTRL  = {&GPIO7_SPDT, 1, 1, 0, 1}; //All paths must be either GPIO (instead of LSDAC) or ADC (instead of GPIO) to avoid damage
const net_t SPDT10_CTRL = {&GPIO7_SPDT, 2, 1, 0, 1};
const net_t SPDT34_CTRL = {&GPIO7_SPDT, 3, 1, 0, 1};
const net_t SPDT35_CTRL = {&GPIO7_SPDT, 4, 1, 0, 1};
const net_t SPDT36_CTRL = {&GPIO7_SPDT, 5, 1, 0, 1};
const net_t SPDT40_CTRL = {&GPIO7_SPDT, 6, 1, 0, 1};
const net_t SPDT50_CTRL = {&GPIO7_SPDT, 7, 1, 0, 1};
const net_t SPDT55_CTRL = {&GPIO7_SPDT, 8, 1, 0, 1};
const net_t SPDT74_CTRL = {&GPIO7_SPDT, 9, 1, 0, 1};
const net_t NOSPDT = {&GPIO7_SPDT, 0, 0, 0};

//SE XGpio pins
const net_t SE2  = {&GPIO9_SE, 0, 1, 2, 1, 2};
const net_t SE14 = {&GPIO9_SE, 1, 1, 2, 1, 14};
const net_t SE17 = {&GPIO9_SE, 2, 1, 2, 1, 17};
const net_t SE20 = {&GPIO9_SE, 3, 1, 2, 1, 20};
const net_t SE21 = {&GPIO9_SE, 4, 1, 2, 1, 21};
const net_t SE22 = {&GPIO9_SE, 5, 1, 2, 1, 22};
const net_t SE23 = {&GPIO9_SE, 6, 1, 2, 1, 23};
const net_t SE24 = {&GPIO9_SE, 7, 1, 2, 1, 24};
const net_t SE25 = {&GPIO9_SE, 8, 1, 2, 1, 25};
const net_t SE26 = {&GPIO9_SE, 9, 1, 2, 1, 26};
const net_t SE27 = {&GPIO9_SE, 10, 1, 2, 1, 27};
const net_t SE28 = {&GPIO9_SE, 11, 1, 2, 1, 28};
const net_t SE29 = {&GPIO9_SE, 12, 1, 2, 1, 29};
const net_t SE32 = {&GPIO9_SE, 13, 1, 2, 1, 32};
const net_t SE33 = {&GPIO9_SE, 14, 1, 2, 1, 33};
const net_t SE36 = {&GPIO9_SE, 15, 1, 2, 1, 36};
const net_t SE37 = {&GPIO9_SE, 16, 1, 2, 1, 37};
const net_t SE38 = {&GPIO9_SE, 17, 1, 2, 1, 38};
const net_t SE39 = {&GPIO9_SE, 18, 1, 2, 1, 39};
const net_t SE40 = {&GPIO9_SE, 19, 1, 2, 1, 40};
const net_t SE41 = {&GPIO9_SE, 20, 1, 2, 1, 41};
const net_t SE42 = {&GPIO9_SE, 21, 1, 2, 1, 42};
const net_t SE43 = {&GPIO9_SE, 22, 1, 2, 1, 43};
const net_t SE44 = {&GPIO9_SE, 23, 1, 2, 1, 44};
const net_t SE46 = {&GPIO9_SE, 24, 1, 2, 1, 46};
const net_t SE48 = {&GPIO9_SE, 25, 1, 2, 1, 48};
const net_t SE49 = {&GPIO9_SE, 26, 1, 2, 1, 49};
const net_t SE50 = {&GPIO9_SE, 27, 1, 2, 1, 50};
const net_t SE51 = {&GPIO9_SE, 28, 1, 2, 1, 51};
const net_t SE52 = {&GPIO9_SE, 29, 1, 2, 1, 52};
const net_t SE55 = {&GPIO9_SE, 30, 1, 2, 1, 55};
const net_t SE56 = {&GPIO9_SE, 31, 1, 2, 1, 56};
const net_t SE57 = {&GPIO9_SE, 0, 2, 2, 1, 57};
const net_t SE58 = {&GPIO9_SE, 1, 2, 2, 1, 58};
const net_t SE59 = {&GPIO9_SE, 2, 2, 2, 1, 59};
const net_t SE74 = {&GPIO9_SE, 3, 2, 2, 1, 74};
const net_t SE81 = {&GPIO9_SE, 4, 2, 2, 1, 81};
const net_t SE89 = {&GPIO9_SE, 5, 2, 2, 1, 89};

//Diff IO XGpio set up as single ended for now
const net_t SE4  = {&GPIO10_DS, 0, 1, 2, 1, 4};
const net_t SE3  = {&GPIO10_DS, 0, 2, 2, 1, 3};
const net_t SE6  = {&GPIO10_DS, 1, 1, 2, 1, 6};
const net_t SE5  = {&GPIO10_DS, 1, 2, 2, 1, 5};
const net_t SE8  = {&GPIO10_DS, 2, 1, 2, 1, 8};
const net_t SE7  = {&GPIO10_DS, 2, 2, 2, 1, 7};
const net_t SE10 = {&GPIO10_DS, 3, 1, 2, 1, 10};
const net_t SE9  = {&GPIO10_DS, 3, 2, 2, 1, 9};
const net_t SE12 = {&GPIO10_DS, 4, 1, 2, 0, 12};
const net_t SE11 = {&GPIO10_DS, 4, 2, 2, 1, 11};
const net_t SE18 = {&GPIO10_DS, 5, 1, 2, 1, 18};
const net_t SE16 = {&GPIO10_DS, 5, 2, 2, 1, 16};
const net_t SE34 = {&GPIO10_DS, 6, 1, 2, 1, 34};
const net_t SE19 = {&GPIO10_DS, 6, 2, 2, 1, 19};
const net_t SE45 = {&GPIO10_DS, 7, 1, 2, 1, 45};
const net_t SE35 = {&GPIO10_DS, 7, 2, 2, 1, 35};
const net_t SE53 = {&GPIO10_DS, 8, 1, 2, 1, 53};
const net_t SE47 = {&GPIO10_DS, 8, 2, 2, 1, 47};
const net_t SE62 = {&GPIO10_DS, 9, 1, 2, 1, 62};
const net_t SE54 = {&GPIO10_DS, 9, 2, 2, 1, 54};
const net_t SE64 = {&GPIO10_DS, 10, 1, 2, 1, 64};
const net_t SE63 = {&GPIO10_DS, 10, 2, 2, 1, 63};
const net_t SE66 = {&GPIO10_DS, 11, 1, 2, 1, 66};
const net_t SE65 = {&GPIO10_DS, 11, 2, 2, 1, 65};
const net_t SE68 = {&GPIO10_DS, 12, 1, 2, 1, 68};
const net_t SE67 = {&GPIO10_DS, 12, 2, 2, 1, 67};
const net_t SE70 = {&GPIO10_DS, 13, 1, 2, 1, 70};
const net_t SE69 = {&GPIO10_DS, 13, 2, 2, 1, 69};
const net_t SE72 = {&GPIO10_DS, 14, 1, 2, 1, 72};
const net_t SE71 = {&GPIO10_DS, 14, 2, 2, 1, 71};
const net_t SE75 = {&GPIO10_DS, 15, 1, 2, 1, 75};
const net_t SE73 = {&GPIO10_DS, 15, 2, 2, 1, 73};
const net_t SE77 = {&GPIO10_DS, 16, 1, 2, 1, 77};
const net_t SE76 = {&GPIO10_DS, 16, 2, 2, 1, 76};
const net_t SE79 = {&GPIO10_DS, 17, 1, 2, 1, 79};
const net_t SE78 = {&GPIO10_DS, 17, 2, 2, 1, 78};
const net_t SE82 = {&GPIO10_DS, 18, 1, 2, 1, 82};
const net_t SE80 = {&GPIO10_DS, 18, 2, 2, 1, 80};
const net_t SE84 = {&GPIO10_DS, 19, 1, 2, 1, 84};
const net_t SE83 = {&GPIO10_DS, 19, 2, 2, 1, 83};
const net_t SE86 = {&GPIO10_DS, 20, 1, 2, 1, 86};
const net_t SE85 = {&GPIO10_DS, 20, 2, 2, 1, 85};
const net_t SE88 = {&GPIO10_DS, 21, 1, 2, 1, 88};
const net_t SE87 = {&GPIO10_DS, 21, 2, 2, 1, 87};

////DATA0/CLK0 XGpio pins
//const net_t DATA0_0   = {&GPIO3_DATA0,  0, 1, 2, 0};
//const net_t DATA0_1   = {&GPIO3_DATA0,  1, 1, 2, 0};
//const net_t DATA0_2   = {&GPIO3_DATA0,  2, 1, 2, 0};
//const net_t DATA0_3   = {&GPIO3_DATA0,  3, 1, 2, 0};
//const net_t DATA0_4   = {&GPIO3_DATA0,  4, 1, 2, 0};
//const net_t DATA0_5   = {&GPIO3_DATA0,  5, 1, 2, 0};
//const net_t DATA0_6   = {&GPIO3_DATA0,  6, 1, 2, 0};
//const net_t DATA0_7   = {&GPIO3_DATA0,  7, 1, 2, 0};
//const net_t DATA0_8   = {&GPIO3_DATA0,  8, 1, 2, 0};
//const net_t DATA0_9   = {&GPIO3_DATA0,  9, 1, 2, 0};
//const net_t DATA0_10  = {&GPIO3_DATA0, 10, 1, 2, 0};
//const net_t DATA0_11  = {&GPIO3_DATA0, 11, 1, 2, 0};
//const net_t DATA0_CLK = {&GPIO3_DATA0,  0, 2, 2, 0};
//
////DATA0/CLK0 XGpio pins
//const net_t DATA1_0   = {&GPIO4_DATA1,  0, 1, 2, 0};
//const net_t DATA1_1   = {&GPIO4_DATA1,  1, 1, 2, 0};
//const net_t DATA1_2   = {&GPIO4_DATA1,  2, 1, 2, 0};
//const net_t DATA1_3   = {&GPIO4_DATA1,  3, 1, 2, 0};
//const net_t DATA1_4   = {&GPIO4_DATA1,  4, 1, 2, 0};
//const net_t DATA1_5   = {&GPIO4_DATA1,  5, 1, 2, 0};
//const net_t DATA1_6   = {&GPIO4_DATA1,  6, 1, 2, 0};
//const net_t DATA1_7   = {&GPIO4_DATA1,  7, 1, 2, 0};
//const net_t DATA1_8   = {&GPIO4_DATA1,  8, 1, 2, 0};
//const net_t DATA1_9   = {&GPIO4_DATA1,  9, 1, 2, 0};
//const net_t DATA1_10  = {&GPIO4_DATA1, 10, 1, 2, 0};
//const net_t DATA1_11  = {&GPIO4_DATA1, 11, 1, 2, 0};
//const net_t DATA1_CLK = {&GPIO4_DATA1,  0, 2, 2, 0};
//
////DATA0/CLK0 XGpio pins
//const net_t DATA2_0   = {&GPIO5_DATA2,  0, 1, 2, 0};
//const net_t DATA2_1   = {&GPIO5_DATA2,  1, 1, 2, 0};
//const net_t DATA2_2   = {&GPIO5_DATA2,  2, 1, 2, 0};
//const net_t DATA2_3   = {&GPIO5_DATA2,  3, 1, 2, 0};
//const net_t DATA2_4   = {&GPIO5_DATA2,  4, 1, 2, 0};
//const net_t DATA2_5   = {&GPIO5_DATA2,  5, 1, 2, 0};
//const net_t DATA2_6   = {&GPIO5_DATA2,  6, 1, 2, 0};
//const net_t DATA2_7   = {&GPIO5_DATA2,  7, 1, 2, 0};
//const net_t DATA2_8   = {&GPIO5_DATA2,  8, 1, 2, 0};
//const net_t DATA2_9   = {&GPIO5_DATA2,  9, 1, 2, 0};
//const net_t DATA2_10  = {&GPIO5_DATA2, 10, 1, 2, 0};
//const net_t DATA2_11  = {&GPIO5_DATA2, 11, 1, 2, 0};
//const net_t DATA2_CLK = {&GPIO5_DATA2,  0, 2, 2, 0};
//
////DATA0/CLK0 XGpio pins
//const net_t DATA3_0   = {&GPIO6_DATA3,  0, 1, 2, 0};
//const net_t DATA3_1   = {&GPIO6_DATA3,  1, 1, 2, 0};
//const net_t DATA3_2   = {&GPIO6_DATA3,  2, 1, 2, 0};
//const net_t DATA3_3   = {&GPIO6_DATA3,  3, 1, 2, 0};
//const net_t DATA3_4   = {&GPIO6_DATA3,  4, 1, 2, 0};
//const net_t DATA3_5   = {&GPIO6_DATA3,  5, 1, 2, 0};
//const net_t DATA3_6   = {&GPIO6_DATA3,  6, 1, 2, 0};
//const net_t DATA3_7   = {&GPIO6_DATA3,  7, 1, 2, 0};
//const net_t DATA3_8   = {&GPIO6_DATA3,  8, 1, 2, 0};
//const net_t DATA3_9   = {&GPIO6_DATA3,  9, 1, 2, 0};
//const net_t DATA3_10  = {&GPIO6_DATA3, 10, 1, 2, 0};
//const net_t DATA3_11  = {&GPIO6_DATA3, 11, 1, 2, 0};
//const net_t DATA3_CLK = {&GPIO6_DATA3,  0, 2, 2, 0};

//CLKP/N (SAMPLECLK) XGpio pins
//const net_t SAMPLE_CLKP  = {&GPIO11_CLKP,  0, 1, 0, 0}; //diff output on fpga pins

//Arrays used in initialization of GPIO AXI blocks
const net_t* GPIO_LED[] = {
	&LED1, &LED2, &LED3, &LED4
};

//Arrays used in initialization of GPIO AXI blocks
const net_t* GPIO_CTRL[] = {
	&INT_n, &EXP_RST, &CLR_n, &RESET
};

//Arrays used in initialization of GPIO AXI blocks

const net_t* GPIO_SPDT[] = {
	&SPDT3_CTRL, &SPDT6_CTRL, &SPDT10_CTRL, &SPDT34_CTRL, &SPDT35_CTRL,
	&SPDT36_CTRL, &SPDT40_CTRL, &SPDT50_CTRL, &SPDT55_CTRL, &SPDT74_CTRL};

//Arrays used in initialization of GPIO AXI blocks
const net_t* GPIO_SE[] = {
    &SE2, &SE14, &SE17, &SE20, &SE21, &SE22, &SE23, &SE24, &SE25, &SE26,
    &SE27, &SE28, &SE29, &SE32, &SE33, &SE36, &SE37, &SE38, &SE39, &SE40,
    &SE41, &SE42, &SE43, &SE44, &SE46, &SE48, &SE49, &SE50, &SE51, &SE52,
    &SE55, &SE56, &SE57, &SE58, &SE59, &SE74, &SE81, &SE89
};

//Arrays used in initialization of GPIO AXI blocks
const net_t* GPIO_DS[] = {
    &SE4, &SE3, &SE6, &SE5, &SE8, &SE7, &SE10, &SE9, &SE12, &SE11,
    &SE18, &SE16, &SE34, &SE19, &SE45, &SE35, &SE53, &SE47, &SE62, &SE54,
    &SE64, &SE63, &SE66, &SE65, &SE68, &SE67, &SE70, &SE69, &SE72, &SE71,
    &SE75, &SE73, &SE77, &SE76, &SE79, &SE78, &SE82, &SE80, &SE84, &SE83,
    &SE86, &SE85, &SE88, &SE87
};

const net_t* ALL_GPIO[] = {
	&SE2,  &SE3,  &SE4,  &SE5,  &SE6,  &SE7,  &SE8,  &SE9,  &SE10, &SE11,
	&SE12, &SE14, &SE16, &SE17, &SE18, &SE19, &SE20, &SE21, &SE22, &SE23,
	&SE24, &SE25, &SE26, &SE27, &SE28, &SE29, &SE32, &SE33, &SE34, &SE35,
	&SE36, &SE37, &SE38, &SE39, &SE40, &SE41, &SE42, &SE43, &SE44, &SE45,
	&SE46, &SE47, &SE48, &SE49, &SE50, &SE51, &SE52, &SE53, &SE54, &SE55,
	&SE56, &SE57, &SE58, &SE59, &SE62, &SE63, &SE64, &SE65, &SE66, &SE67,
	&SE68, &SE69, &SE70, &SE71, &SE72, &SE73, &SE74, &SE75, &SE76, &SE77,
	&SE78, &SE79, &SE80, &SE81, &SE82, &SE83, &SE84, &SE85, &SE86, &SE87,
	&SE88, &SE89
};

//Arrays used in initialization of GPIO AXI blocks
const net_t* GPIO_DATA0[] = {
	//&DATA0_0, &DATA0_1, &DATA0_2, &DATA0_3, &DATA0_4, &DATA0_5, &DATA0_6,
	//&DATA0_7, &DATA0_8, &DATA0_9, &DATA0_10, &DATA0_11, &DATA0_CLK
};

const net_t* GPIO_DATA1[] = {
	//&DATA1_0, &DATA1_1, &DATA1_2, &DATA1_3, &DATA1_4, &DATA1_5, &DATA1_6,
	//&DATA1_7, &DATA1_8, &DATA1_9, &DATA1_10, &DATA1_11, &DATA1_CLK
};

const net_t* GPIO_DATA2[] = {
	//&DATA2_0, &DATA2_1, &DATA2_2, &DATA2_3, &DATA2_4, &DATA2_5, &DATA2_6,
	//&DATA2_7, &DATA2_8, &DATA2_9, &DATA2_10, &DATA2_11, &DATA2_CLK
};

const net_t* GPIO_DATA3[] = {
	//&DATA3_0, &DATA3_1, &DATA3_2, &DATA3_3, &DATA3_4, &DATA3_5, &DATA3_6,
	//&DATA3_7, &DATA3_8, &DATA3_9, &DATA3_10, &DATA3_11, &DATA3_CLK
};

//Arrays used in initialization of GPIO AXI blocks
const net_t* GPIO_SAMPLECLK[]  = {
	//&SAMPLE_CLKP
};

const SWState_t P2_LS1_DAC04  = { 2, SP4T, 1, NOSPDT, SP4T7};
const SWState_t P2_DIGIO2     = { 2, SP4T, 2, NOSPDT, SP4T7};
//Port 3 not connected
const SWState_t P2_HS_DAC3A   = { 2, SP4T, 4, NOSPDT, SP4T7};


const SWState_t P17_LS1_DAC00 = {17, SP4T, 1, NOSPDT, SP4T3};
const SWState_t P17_DIGIO17   = {17, SP4T, 2, NOSPDT, SP4T3};
const SWState_t P17_HS_ADC1B  = {17, SP4T, 3, NOSPDT, SP4T3};
const SWState_t P17_HS_DAC1A  = {17, SP4T, 4, NOSPDT, SP4T3};
const SWState_t P17_DISABLE   = {17, SP4T, 0, NOSPDT, SP4T3};


const SWState_t P21_LS1_DAC02 = {21, SP4T, 1, NOSPDT, SP4T1};
const SWState_t P21_DIGIO21   = {21, SP4T, 2, NOSPDT, SP4T1};
const SWState_t P21_HS_ADC0B  = {21, SP4T, 3, NOSPDT, SP4T1};
const SWState_t P21_HS_DAC0A  = {21, SP4T, 4, NOSPDT, SP4T1};


const SWState_t P32_LS1_DAC05 = {32, SP4T, 1, NOSPDT, SP4T6};
const SWState_t P32_DIGIO32   = {32, SP4T, 2, NOSPDT, SP4T6};
//Port 3 not connected
const SWState_t P32_HS_DAC3B  = {32, SP4T, 4, NOSPDT, SP4T6};


const SWState_t P33_LS1_DAC06 = {33, SP4T, 1, NOSPDT, SP4T5};
const SWState_t P33_DIGIO33   = {33, SP4T, 2, NOSPDT, SP4T5};
const SWState_t P33_HS_ADC2B  = {33, SP4T, 3, NOSPDT, SP4T5};
const SWState_t P33_HS_DAC2A  = {33, SP4T, 4, NOSPDT, SP4T5};


const SWState_t P46_LS1_DAC07 = {46, SP4T, 1, NOSPDT, SP4T4};
const SWState_t P46_DIGIO46   = {46, SP4T, 2, NOSPDT, SP4T4};
const SWState_t P46_HS_ADC2A  = {46, SP4T, 3, NOSPDT, SP4T4};
const SWState_t P46_HS_DAC2B  = {46, SP4T, 4, NOSPDT, SP4T4};


const SWState_t P48_LS1_DAC01 = {48, SP4T, 1, NOSPDT, SP4T2};
const SWState_t P48_DIGIO48   = {48, SP4T, 2, NOSPDT, SP4T2};
const SWState_t P48_HS_ADC1A  = {48, SP4T, 3, NOSPDT, SP4T2};
const SWState_t P48_HS_DAC1B  = {48, SP4T, 4, NOSPDT, SP4T2};


const SWState_t P51_LS1_DAC03 = {51, SP4T, 1, NOSPDT, SP4T0};
const SWState_t P51_DIGIO51   = {51, SP4T, 2, NOSPDT, SP4T0};
const SWState_t P51_HS_ADC0A  = {51, SP4T, 3, NOSPDT, SP4T0};
const SWState_t P51_HS_DAC0B  = {51, SP4T, 4, NOSPDT, SP4T0};


const SWState_t P3_LS0_DAC07  = { 3, SPDT, 1, SPDT3_CTRL, NOT_SP4T};
const SWState_t P3_DIGIO3     = { 3, SPDT, 2, SPDT3_CTRL, NOT_SP4T};


const SWState_t P6_LS0_DAC06  = { 6, SPDT, 1, SPDT6_CTRL, NOT_SP4T};
const SWState_t P6_DIGIO6     = { 6, SPDT, 2, SPDT6_CTRL, NOT_SP4T};


const SWState_t P10_LS0_DAC01 = {10, SPDT, 1, SPDT10_CTRL, NOT_SP4T};
const SWState_t P10_DIGIO10   = {10, SPDT, 2, SPDT10_CTRL, NOT_SP4T};


const SWState_t P34_LS0_DAC05 = {34, SPDT, 1, SPDT34_CTRL, NOT_SP4T};
const SWState_t P34_DIGIO34   = {34, SPDT, 2, SPDT34_CTRL, NOT_SP4T};


const SWState_t P35_LS0_DAC04 = {35, SPDT, 1, SPDT35_CTRL, NOT_SP4T};
const SWState_t P35_DIGIO35   = {35, SPDT, 2, SPDT35_CTRL, NOT_SP4T};


const SWState_t P36_LS0_DAC00 = {36, SPDT, 1, SPDT36_CTRL, NOT_SP4T};
const SWState_t P36_DIGIO36   = {36, SPDT, 2, SPDT36_CTRL, NOT_SP4T};


const SWState_t P40_LS0_DAC02 = {40, SPDT, 1, SPDT40_CTRL, NOT_SP4T};
const SWState_t P40_DIGIO40   = {40, SPDT, 2, SPDT40_CTRL, NOT_SP4T};


const SWState_t P50_HS_ADC3A  = {50, SPDT, 2, SPDT50_CTRL, NOT_SP4T};
const SWState_t P50_DIGIO50   = {50, SPDT, 1, SPDT50_CTRL, NOT_SP4T};


const SWState_t P55_HS_ADC3B  = {55, SPDT, 2, SPDT55_CTRL, NOT_SP4T};
const SWState_t P55_DIGIO55   = {55, SPDT, 1, SPDT55_CTRL, NOT_SP4T};


const SWState_t P74_LS0_DAC03 = {74, SPDT, 1, SPDT74_CTRL, NOT_SP4T};
const SWState_t P74_DIGIO74   = {74, SPDT, 2, SPDT74_CTRL, NOT_SP4T};

//Config Settings for system
SWState_t Pin_Settings[] = {

		//Pin 2 path setting (uncomment 1)
		//P2_LS1_DAC04,
		//P2_DIGIO2,
		P2_HS_DAC3A,

		//Pin 17 path setting (uncomment 1)
		//P17_LS1_DAC00,
		//P17_DIGIO17,
		P17_HS_ADC1B,
		//P17_HS_DAC1A,
		//P17_DISABLE,

		//Pin 21 path setting (uncomment 1)
		//P21_LS1_DAC02,
		//P21_DIGIO21,
		P21_HS_ADC0B,
		//P21_HS_DAC0A,

		//Pin 32 path setting (uncomment 1)
		//P32_LS1_DAC05,
		//P32_DIGIO32,
		P32_HS_DAC3B,

		//Pin 33 path setting (uncomment 1)
		//P33_LS1_DAC06,
		//P33_DIGIO33,
		P33_HS_ADC2B,
		//P33_HS_DAC2A,

		//Pin 46 path setting (uncomment 1)
		//P46_LS1_DAC07,
		//P46_DIGIO46,
		P46_HS_ADC2A,
		//P46_HS_DAC2B,

		//Pin 48 path setting (uncomment 1)
		//P48_LS1_DAC01,
		//P48_DIGIO48,
		P48_HS_ADC1A,
		//P48_HS_DAC1B,

		//Pin 51 path setting (uncomment 1)
		//P51_LS1_DAC03,
		//P51_DIGIO51,
		P51_HS_ADC0A,
		//P51_HS_DAC0B,

		//Pin 3 path setting (uncomment 1)
		//P3_LS0_DAC07,
		P3_DIGIO3,

		//Pin 6 path setting (uncomment 1)
		//P6_LS0_DAC06,
		P6_DIGIO6,

		//Pin 10 path setting (uncomment 1)
		//P10_LS0_DAC01,
		P10_DIGIO10,

		//Pin 34 path setting (uncomment 1)
		//P34_LS0_DAC05,
		P34_DIGIO34,

		//Pin 35 path setting (uncomment 1)
		//P35_LS0_DAC04,
		P35_DIGIO35,

		//Pin 36 path setting (uncomment 1)
		//P36_LS0_DAC00,
		P36_DIGIO36,

		//Pin 40 path setting (uncomment 1)
		//P40_LS0_DAC02,
		P40_DIGIO40,

		//Pin 50 path setting (uncomment 1)
		P50_HS_ADC3A,
		//P50_DIGIO50,

		//Pin 55 path setting (uncomment 1)
		P55_HS_ADC3B,
		//P55_DIGIO55,

		//Pin 74 path setting (uncomment 1)
		//P74_LS0_DAC03,
		P74_DIGIO74
};

//function prototypes

void TestMode1();
void TestMode2(uint32_t runTime);
void TestMode3(uint32_t runTime);
void TestMode4(uint32_t runTime);
void TestMode5(uint32_t runTime);
void TestMode6();
void TestMode7();

//sets the Status of the edge mounted LEDs.
void setLEDStatus (uint8_t status);

//sets the State of an IO pin
void setIOPin (const net_t* pin, uint8_t state);

//sets the State of an IO pin
int readIOPin (const net_t* pin);

//initializes AXI GPIO bus given XGpio ID with all connections and their default direction to the bus (if bidirectional, default is input)
int GPIO_Init_Wrapper (const net_t **signals, int num_signals, uint16_t busID);

//initializes AXI GPIO bus given XGpio instance and sets pin direction (I/O) for each channel (0 for output, 1 for input)
int GPIO_Init (XGpio *instance, uint8_t channel, uint32_t ch_direction, uint32_t ch_initState);

//Sets IOEXP_STATE variable
void Set_IOEXP_STATE (uint32_t mask, uint8_t state);

//Sets SPDT_CTRL_STATE variable
void Set_SPDT_CTRL_STATE (uint32_t mask, uint8_t state);

//Sets the switch path for a given function
int IOEXP_Path_Select (XIic *instance, uint8_t address, SWState_t path);

//Initializes the SPDT and SP4T switches to set the functions of the multifunction pins
int IOEXP_MultiFuntion_Pin_Init (XIic *instance, uint8_t address);

//initializes IIC bus given bus instance and id
int IIC_Init (XIic *instance, uint16_t bus_id, uint8_t address);

//Initializes IO expander
int IOEXP_Init (XIic *instance, uint8_t address, uint8_t *config_words, int num_bytes);

//Writes values to ports of IO expander
int IOEXP_Write (XIic *instance, uint8_t address, uint32_t state_words);

//initializes spi bus given bus instance and id
int SPI_Init (XSpi *instance, uint16_t bus_id);

//Initializes AFEs specified by CS with reg map in RegisterMaps.c
int AFE_Init (XSpi *instance, uint8_t *data, int num_bytes, uint32_t CS);

//Writes Value to 1 channel of LS DAC
int LS_DAC_Write(const LSDAC_t *LSDAC, uint8_t CHANNEL, uint16_t DATA);

//Writes Vlues to all channels of LS DAC
int LS_DAC_WriteAll(const LSDAC_t *LSDAC, uint16_t DATA);


//System Parameters
//CONFIG COMMAND 0x8C, Following bytes set P7-0, P17-10 and P20 to outputs. P27-21 are inputs
uint8_t IO_EXP_PIN_CONFIG[4] = {IOEXP_config_cmd, 0x00, 0x00, 0xFE};

uint32_t IOEXP_STATE = 0x000001; //pin data. 1 is on 0 is off. P7-0, P17-10, P27-20

uint32_t SPDT_CTRL_STATE = 0x000000;

#define numSamples 100

int sinSamples[numSamples];
int cosSamples[numSamples];

int main()
{
    init_platform();
    int Status; 	//used to hold return status throughout the function.

    //Initialize LED GPIO AXI device
    Status = GPIO_Init_Wrapper (GPIO_LED, sizeof(GPIO_LED) / sizeof(GPIO_LED[0]), GPIO0_LEDS_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Initialize CTRL GPIO AXI device
    Status = GPIO_Init_Wrapper (GPIO_CTRL, sizeof(GPIO_CTRL) / sizeof(GPIO_CTRL[0]), GPIO8_CTRL_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Initialize SPDT GPIO AXI device
    Status = GPIO_Init_Wrapper (GPIO_SPDT, sizeof(GPIO_SPDT) / sizeof(GPIO_SPDT[0]), GPIO7_SPDT_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Initialize Single Ended GPIO AXI device
    Status = GPIO_Init_Wrapper (GPIO_SE, sizeof(GPIO_SE) / sizeof(GPIO_SE[0]), GPIO9_SE_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Initialize Differential(In this app single ended) GPIO AXI device
    Status = GPIO_Init_Wrapper (GPIO_DS, sizeof(GPIO_DS) / sizeof(GPIO_DS[0]), GPIO10_DS_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Initialize AFE0 DATA & DCLK GPIO AXI device
    //Status = GPIO_Init_Wrapper (GPIO_DATA0, sizeof(GPIO_DATA0) / sizeof(GPIO_DATA0[0]), GPIO3_DATA0_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Initialize AFE1 DATA & DCLK GPIO AXI device
    //Status = GPIO_Init_Wrapper (GPIO_DATA1, sizeof(GPIO_DATA1) / sizeof(GPIO_DATA1[0]), GPIO4_DATA1_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Initialize AFE2 DATA & DCLK GPIO AXI device
    //Status = GPIO_Init_Wrapper (GPIO_DATA2, sizeof(GPIO_DATA2) / sizeof(GPIO_DATA2[0]), GPIO5_DATA2_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Initialize AFE3 DATA & DCLK GPIO AXI device
    //Status = GPIO_Init_Wrapper (GPIO_DATA3, sizeof(GPIO_DATA3) / sizeof(GPIO_DATA3[0]), GPIO6_DATA3_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Initialize Sample Clock GPIO AXI device
    //Status = GPIO_Init_Wrapper (GPIO_SAMPLECLK, sizeof(GPIO_SAMPLECLK) / sizeof(GPIO_SAMPLECLK[0]), GPIO11_CLKP_ID);
    if(Status != XST_SUCCESS){
    	//return XST_FAILURE;
    }

    //Initialize AFE7222 SPI devices
    Status = SPI_Init(&SPI0_AFE, SPI0_AFE_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Initialize LTC2666 SPI devices
    Status = SPI_Init(&SPI1_LSDAC, SPI1_LSDAC_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    for (int i = 0x01; i < (0x01 << 4); i = i << 1){//Initializes all AFEs;
        Status = AFE_Init(&SPI0_AFE, AFE_REG_MAP, AFE_REG_MAP_SIZE, i);
        if(Status != XST_SUCCESS){
        	return XST_FAILURE;
        }
    }

    Status = IIC_Init (&IIC0_IOEXP, IIC0_IOEXP_ID, IOEXP0_ADDRESS);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    Status = IOEXP_Init(&IIC0_IOEXP, IOEXP0_ADDRESS, IO_EXP_PIN_CONFIG, 4);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    Status = IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    Status = XGpio_Initialize(&GPIO1_SPDCTRL,  GPIO1_SPDCTRL_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    Status = XGpio_Initialize(&GPIO2_DATA0A,  GPIO2_DATA0A_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    Status = XGpio_Initialize(&GPIO3_DATA0B,  GPIO3_DATA0B_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    Status = XGpio_Initialize(&GPIO4_DATA1A,  GPIO4_DATA1A_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    Status = XGpio_Initialize(&GPIO5_DATA1B,  GPIO5_DATA1B_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    Status = XGpio_Initialize(&GPIO6_DATA2A,  GPIO6_DATA2A_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    Status = XGpio_Initialize(&GPIO11_DATA2B,  GPIO11_DATA2B_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    Status = XGpio_Initialize(&GPIO12_DATA3A,  GPIO12_DATA3A_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    Status = XGpio_Initialize(&GPIO13_DATA3B,  GPIO13_DATA3B_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }
/*//For DAC Control application
    while(1){
        printf("Please enter SPDCTRL value: ");
        int readValue;
        usleep(100000);
        fflush(stdin);
        scanf("%d", &readValue);
        fflush(stdin);
        if(readValue == 4097){
            printf("Please enter sleep time\n");
            int sleeptime;
            fflush(stdin);
            scanf("%d", &sleeptime);
            fflush(stdin);
        	for(int i = 0; i < 4096; i++){
        		XGpio_DiscreteWrite(&GPIO1_SPDCTRL, 1, i);
        		printf("Current Value: %d\n", i);
        		usleep(sleeptime);
        	}
    		usleep(100000);
        }else{
            XGpio_DiscreteWrite(&GPIO1_SPDCTRL, 1, readValue);
        }
        usleep(100000);
    }
*/
    uint32_t chvalmax;
    uint32_t chvalmin;
    printf("DRC ADC MinMax Test.\n");
    while(1){
    	chvalmax = XGpio_DiscreteRead(&GPIO2_DATA0A, 1);
    	chvalmin = XGpio_DiscreteRead(&GPIO2_DATA0A, 2);
    	printf("Pin 51:\nMax: %X, \nMin: %X\n\n", chvalmax, chvalmin);
    	chvalmax = XGpio_DiscreteRead(&GPIO3_DATA0B, 1);
    	chvalmin = XGpio_DiscreteRead(&GPIO3_DATA0B, 2);
    	/*printf("Pin 21:\nMax: %X, \nMin: %X\n\n", chvalmax, chvalmin);
    	chvalmax = XGpio_DiscreteRead(&GPIO4_DATA1A, 1);
    	chvalmin = XGpio_DiscreteRead(&GPIO4_DATA1A, 2);
    	printf("Pin 48:\nMax: %X, \nMin: %X\n\n", chvalmax, chvalmin);
    	chvalmax = XGpio_DiscreteRead(&GPIO5_DATA1B, 1);
    	chvalmin = XGpio_DiscreteRead(&GPIO5_DATA1B, 2);
    	printf("Pin 17:\nMax: %X, \nMin: %X\n\n", chvalmax, chvalmin);
    	chvalmax = XGpio_DiscreteRead(&GPIO6_DATA2A, 1);
    	chvalmin = XGpio_DiscreteRead(&GPIO6_DATA2A, 2);
    	printf("Pin 46:\nMax: %X, \nMin: %X\n\n", chvalmax, chvalmin);
    	chvalmax = XGpio_DiscreteRead(&GPIO11_DATA2B, 1);
    	chvalmin = XGpio_DiscreteRead(&GPIO11_DATA2B, 2);
    	printf("Pin 33:\nMax: %X, \nMin: %X\n\n", chvalmax, chvalmin);
    	chvalmax = XGpio_DiscreteRead(&GPIO12_DATA3A, 1);
    	chvalmin = XGpio_DiscreteRead(&GPIO12_DATA3A, 2);
    	printf("Pin 50:\nMax: %X, \nMin: %X\n\n", chvalmax, chvalmin);
    	chvalmax = XGpio_DiscreteRead(&GPIO13_DATA3B, 1);
    	chvalmin = XGpio_DiscreteRead(&GPIO13_DATA3B, 2);
    	printf("Pin 55:\nMax: %X, \nMin: %X\n\n", chvalmax, chvalmin);*/
    }

	////////////////////////////////////////////////////////////////////
	// Test Procedure Begin
	////////////////////////////////////////////////////////////////////

    // Print out testing options
    QueryTest:
    printf("DRC Test Procedure.\n");
    printf("Please Select a Test.\n");
    printf("1) Set LED Status to 1.\n");
    printf("2) Set all pins to Digital paths and cycle IO pins.\n");
    printf("3) Read IO Pins and report state changes.\n");
    printf("4) Low speed DAC triangle wave outputs.\n");
    printf("5) Low speed DAC square wave outputs. Transition time test.\n");
    printf("6) High speed ADC/DAC loopback mode A. Tests channel A on each ADC/DAC pair.\n");
    printf("7) High speed ADC/DAC loopback mode B. Tests channel B on each ADC/DAC pair.\n");

    //store user selected value
    int readValue;
    scanf("%d", &readValue);

    //clear buffer
    int d;
    while((d = getchar()) != '\n' && d != EOF);

    //store user selected runTime of test
    uint32_t runTime;
    printf("Enter runTime: ");
    scanf("%u", &runTime);

    //clear buffer
    while((d = getchar()) != '\n' && d != EOF);

    for(int i = 0; i < readValue; i++){
    	setIOPin(&SE88, 1);
    	usleep(20000);
    	setIOPin(&SE88, 0);
    	usleep(20000);
    }

    setIOPin(&SE89, 1);
	usleep(20000);
	setIOPin(&SE89, 0);

    switch(readValue){
    case 1:
    	TestMode1();
    	break;
    case 2:
    	TestMode2(runTime);
    	break;
    case 3:
    	TestMode3(runTime);
    	break;
    case 4:
    	TestMode4(runTime);
    	break;
    case 5:
    	TestMode5(runTime);
    	break;
    case 6:
    	TestMode6();
    	break;
    case 7:
    	TestMode7();
    	break;
    default:
    	printf("Invalid Test\n");
    	break;
    }
	goto QueryTest;

    //for (int sample = 0; sample < numSamples; sample++){
     //   sinSamples[sample] = (int) (4095 * (0.5 + 0.5 * sin((((float) sample)/numSamples) * 2 * M_PI)));
     //   cosSamples[sample] = (int) (4095 * (0.5 + 0.5 * cos((((float) sample)/numSamples) * 2 * M_PI)));
    //}
    //uint32_t i = 0;
	//XGpio_DiscreteWrite(&GPIO3_DATA0, 2, 0);

    while(1){

    	//Generate sin and cos signal
    	//XGpio_DiscreteWrite(&GPIO3_DATA0, 1, sinSamples[i%numSamples]);
    	//XGpio_DiscreteWrite(&GPIO3_DATA0, 2, 1);
    	//XGpio_DiscreteWrite(&GPIO3_DATA0, 1, cosSamples[i%numSamples]);
    	//XGpio_DiscreteWrite(&GPIO3_DATA0, 2, 0);
    }



    cleanup_platform();
    return 0;
}

void TestMode1(){
	////////////////////////////////////////////////////////////////////
	// Test Mode 1 Begin
	// Edge mounted LEDs will cycle
    printf("Test Mode 1: Cycle Status LEDs.\n\n");

	for(int i = 1; i <= 0x8; i <<= 1){
		setLEDStatus(i);
		sleep(1);
	}
	for(int i = 8; i >= 0x1; i >>= 1){
		setLEDStatus(i);
		sleep(1);
	}

    printf("Test Mode 1 End.\n.\n.\n.\n");
	// Test Mode 1 End
	////////////////////////////////////////////////////////////////////
}

void TestMode2(uint32_t runTime){
	////////////////////////////////////////////////////////////////////
	// Test Mode 2 Begin
	// Set all pins to digital mode, and cycle each pin between ON and OFF
    //
    printf("Test Mode 2: Set all pins to Digital paths and cycle IO pins.\n");
    printf("Runtime: %u\n\n", runTime);

	//Change Status to Mode 2
	setLEDStatus(0x02);

	// Array with all digital paths
	const SWState_t AllDigitalPaths[] = {
			P2_DIGIO2,
			P17_DIGIO17,
			P21_DIGIO21,
			P32_DIGIO32,
			P33_DIGIO33,
			P46_DIGIO46,
			P48_DIGIO48,
			P51_DIGIO51,
			P3_DIGIO3,
			P6_DIGIO6,
			P10_DIGIO10,
			P34_DIGIO34,
			P35_DIGIO35,
			P36_DIGIO36,
			P40_DIGIO40,
			P50_DIGIO50,
			P55_DIGIO55,
			P74_DIGIO74
	};

	//Set Pin_Settings Array to desired Array settings
	for(int i = 0; i < sizeof(Pin_Settings) / sizeof(Pin_Settings[0]); i++){
		Pin_Settings[i] = AllDigitalPaths[i];
	};

	//Reinitialize Switch Settings For Desired States
    /*Status = */IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
//    if(Status != XST_SUCCESS){
//    	return XST_FAILURE;
//    }

    int numIOPins = sizeof(ALL_GPIO) / sizeof(ALL_GPIO[0]);

    //Cascade LEDs
	for (int j = 0; j < numIOPins; j++){
		setIOPin(ALL_GPIO[j], 1);
		usleep(500000);
		setIOPin(ALL_GPIO[j], 0);
    }
	XGpio_DiscreteWrite(&GPIO9_SE, 1, 0xFFFFFFFF);
	XGpio_DiscreteWrite(&GPIO9_SE, 2, 0xFFFFFFFF);
	XGpio_DiscreteWrite(&GPIO10_DS, 1, 0xFFFFFFFF);
	XGpio_DiscreteWrite(&GPIO10_DS, 2, 0xFFFFFFFF);
	for(int i = runTime; i >= 0; i--){
	    printf("%d\n", i);
	    sleep(1);
	}
	XGpio_DiscreteWrite(&GPIO9_SE, 1, 0);
	XGpio_DiscreteWrite(&GPIO9_SE, 2, 0);
	XGpio_DiscreteWrite(&GPIO10_DS, 1, 0);
	XGpio_DiscreteWrite(&GPIO10_DS, 2, 0);

    printf("Test Mode 2 End.\n.\n.\n.\n");
	// Test Mode 2 End
	////////////////////////////////////////////////////////////////////
}

void TestMode3(uint32_t runTime){
	////////////////////////////////////////////////////////////////////
	// Test Mode 3 Begin
	// Read IO Test
    printf("Test Mode 3: Read IO Pins and report state changes.\n");
    printf("Runtime: %u\n\n", runTime);

	//Change Status to Mode 3
	setLEDStatus(0x03);

	// Array with all digital paths
	const SWState_t AllDigitalPaths[] = {
			P2_DIGIO2,
			P17_DIGIO17,
			P21_DIGIO21,
			P32_DIGIO32,
			P33_DIGIO33,
			P46_DIGIO46,
			P48_DIGIO48,
			P51_DIGIO51,
			P3_DIGIO3,
			P6_DIGIO6,
			P10_DIGIO10,
			P34_DIGIO34,
			P35_DIGIO35,
			P36_DIGIO36,
			P40_DIGIO40,
			P50_DIGIO50,
			P55_DIGIO55,
			P74_DIGIO74
	};

	//Set Pin_Settings Array to desired Array settings
	for(int i = 0; i < sizeof(Pin_Settings) / sizeof(Pin_Settings[0]); i++){
		Pin_Settings[i] = AllDigitalPaths[i];
	};

	//Reinitialize Switch Settings For Desired States
    /*Status = */IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
//    if(Status != XST_SUCCESS){
//    	return XST_FAILURE;
//    }

    int numIOPins = sizeof(ALL_GPIO) / sizeof(ALL_GPIO[0]);

	//Array to hold previous states of IO pins to compare to read value
	int states[numIOPins];

	//Array to hold whether each IO pin changed (it works)
	int changes[numIOPins];

	//Set all elements to 0
	for (int i = 0; i < numIOPins; i++){
		states[i] = 0;
		changes[i] = 0;
	}

	//Cycle through reading each IO pin. If its state changes, print out.
    for (uint32_t i = 0; i < runTime; i+=numIOPins){
    	for (int j = 0; j < numIOPins; j++){
    		if (states[j] != readIOPin(ALL_GPIO[j])){
    			printf("IO Pin %d transitioned to %d\n", ALL_GPIO[j]->IOpinNum, states[j] ? 0 : 1);
    			states[j] = states[j] ? 0 : 1;
    			changes[j] = 1;
    		}

    	}
    }

    sleep(1);
	printf("\n\n\nTest 3 Results:\n\n\n\n");
	sleep(1);

	int allIOGood = 1;
	for (int j = 0; j < numIOPins; j++){
		if (changes[j] == 0){
			printf("IO Pin %d failed.\n", ALL_GPIO[j]->IOpinNum);
			allIOGood = 0;
		}
	}
	if(allIOGood){
		printf("Test 3 Successful\n\n\n\n");
	}

    printf("Test Mode 3 End.\n.\n.\n.\n");

    sleep(1);
	// Test Mode 3 End
	////////////////////////////////////////////////////////////////////
}

void TestMode4(uint32_t runTime){
	////////////////////////////////////////////////////////////////////
	// Test Mode 4 Begin
	// LSDAC Triangle Wave Test
    printf("Test Mode 4: Low speed DAC triangle wave outputs. \n");
    printf("Runtime: %u\n\n", runTime);

	//Change Status to Mode 4
	setLEDStatus(0x04);


	//Configure Switches for all Low Speed DAC Paths
	const SWState_t AllLSDACPaths[] = {
			P2_LS1_DAC04,
			P17_LS1_DAC00,
			P21_LS1_DAC02,
			P32_LS1_DAC05,
			P33_LS1_DAC06,
			P46_LS1_DAC07,
			P48_LS1_DAC01,
			P51_LS1_DAC03,
			P3_LS0_DAC07,
			P6_LS0_DAC06,
			P10_LS0_DAC01,
			P34_LS0_DAC05,
			P35_LS0_DAC04,
			P36_LS0_DAC00,
			P40_LS0_DAC02,
			P74_LS0_DAC03,
	};

	//Set Pin_Settings Array to desired Array settings
	for(int i = 0; i < sizeof(Pin_Settings) / sizeof(Pin_Settings[0]); i++){
		Pin_Settings[i] = AllLSDACPaths[i];
	};

	//Reinitialize Switch Settings For Desired States
    /*Status = */IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
//    if(Status != XST_SUCCESS){
//    	return XST_FAILURE;
//    }

	//Cycling through LSDAC values
	for (uint32_t i = 0; i < runTime; i+=4096){
    	for(int j = 0; j < 4096; j++){
        	LS_DAC_WriteAll(&LSDAC0, j);
        	LS_DAC_WriteAll(&LSDAC1, 4095 - j);
    	}
	}
	LS_DAC_WriteAll(&LSDAC0, 0);
	LS_DAC_WriteAll(&LSDAC1, 0);

    printf("Test Mode 4 End.\n.\n.\n.\n");
	// Test Mode 4 End
	////////////////////////////////////////////////////////////////////
}

void TestMode5(uint32_t runTime){
	////////////////////////////////////////////////////////////////////
	// Test Mode 5 Begin
	// LSDAC Fast Square Wave Test
    printf("Test Mode 5: Low speed DAC square wave outputs. Transition time test.\n");
    printf("Runtime: %u\n\n", runTime);

	//Change Status to Mode 5
	setLEDStatus(0x05);

	//Configure Switches for all Low Speed DAC Paths
	const SWState_t AllLSDACPaths[] = {
			P2_LS1_DAC04,
			P17_LS1_DAC00,
			P21_LS1_DAC02,
			P32_LS1_DAC05,
			P33_LS1_DAC06,
			P46_LS1_DAC07,
			P48_LS1_DAC01,
			P51_LS1_DAC03,
			P3_LS0_DAC07,
			P6_LS0_DAC06,
			P10_LS0_DAC01,
			P34_LS0_DAC05,
			P35_LS0_DAC04,
			P36_LS0_DAC00,
			P40_LS0_DAC02,
			P74_LS0_DAC03,
	};

	//Set Pin_Settings Array to desired Array settings
	for(int i = 0; i < sizeof(Pin_Settings) / sizeof(Pin_Settings[0]); i++){
		Pin_Settings[i] = AllLSDACPaths[i];
	};

	//Reinitialize Switch Settings For Desired States
    /*Status = */IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
//    if(Status != XST_SUCCESS){
//    	return XST_FAILURE;
//    }

	//Cycling through LSDAC values
	for(uint32_t i = 0; i < runTime; i+=4096){
    	for(int j = 0; j < 4096; j++){
        	LS_DAC_WriteAll(&LSDAC0, 4095);
        	LS_DAC_WriteAll(&LSDAC0, 0);
        	LS_DAC_WriteAll(&LSDAC0, 4095);
        	LS_DAC_WriteAll(&LSDAC0, 0);
        	LS_DAC_WriteAll(&LSDAC1, 4095);
        	LS_DAC_WriteAll(&LSDAC1, 0);
        	LS_DAC_WriteAll(&LSDAC1, 4095);
        	LS_DAC_WriteAll(&LSDAC1, 0);
    	}
	}
	LS_DAC_WriteAll(&LSDAC0, 0);
	LS_DAC_WriteAll(&LSDAC1, 0);

    printf("Test Mode 5 End.\n.\n.\n.\n");
	// Test Mode 5 End
	////////////////////////////////////////////////////////////////////
}

void TestMode6(){
	////////////////////////////////////////////////////////////////////
	// Test Mode 6 Begin
	// HS ADC/DAC loopback test for channel A
    printf("Test Mode 6: High speed ADC/DAC loopback mode A. Tests channel A on each ADC/DAC pair.\n");
    printf("Following pins used for loopback test.\n");
    printf("Pin 51 (ADC0A) to Pin 21 (DAC0A)\n");
    printf("Pin 48 (ADC1A) to Pin 17 (DAC1A)\n");
    printf("Pin 46 (ADC2A) to Pin 33 (DAC2A)\n");
    printf("Pin 50 (ADC3A) to Pin 2  (DAC3A)\n\n\n");

	setLEDStatus(0x06);

	//Configure paths for High Speed ADC/DAC loopback mode
	//NOTE: LSDAC and Channel B converter paths are here to keep structure of path configuration consistent
	//in the case where a path is not necessary for this loopback test
	SWState_t HSLoopbackA[] = {

			P2_HS_DAC3A,
			P17_HS_DAC1A,
			P21_HS_DAC0A,
			P32_HS_DAC3B,
			P33_HS_DAC2A,
			P46_HS_ADC2A,
			P48_HS_ADC1A,
			P51_HS_ADC0A,
			P3_LS0_DAC07,
			P6_LS0_DAC06,
			P10_LS0_DAC01,
			P34_LS0_DAC05,
			P35_LS0_DAC04,
			P36_LS0_DAC00,
			P40_LS0_DAC02,
			P50_HS_ADC3A,
			P55_HS_ADC3B,
			P74_LS0_DAC03
	};

	//Set Pin_Settings Array to desired Array settings
	for(int i = 0; i < sizeof(Pin_Settings) / sizeof(Pin_Settings[0]); i++){
		Pin_Settings[i] = HSLoopbackA[i];
	};

	//Reinitialize Switch Settings For Desired States
    /*Status = */IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
//    if(Status != XST_SUCCESS){
//    	return XST_FAILURE;
//    }

    printf("System configured in channel A loopback mode.\n");
    printf("Mode will persist until another test is selected.\n");
    printf("\n.\n.\n.\n");
	// Test Mode 6 End
	////////////////////////////////////////////////////////////////////
}

void TestMode7(){
	////////////////////////////////////////////////////////////////////
	// Test Mode 7 Begin
	// HS ADC/DAC loopback test for channel B
    printf("Test Mode 6: High speed ADC/DAC loopback mode A. Tests channel A on each ADC/DAC pair.\n");
    printf("Following pins used for loopback test.\n");
    printf("Pin 21 (ADC0B) to Pin 51 (DAC0B)\n");
    printf("Pin 17 (ADC1B) to Pin 48 (DAC1B)\n");
    printf("Pin 33 (ADC2B) to Pin 46 (DAC2B)\n");
    printf("Pin 55 (ADC3B) to Pin 32 (DAC3B)\n\n\n");

	setLEDStatus(0x07);

	//Configure paths for High Speed ADC/DAC loopback mode
	//NOTE: LSDAC and Channel A converter paths are here to keep structure of path configuration consistent
	//in the case where a path is not necessary for this loopback test
	SWState_t HSLoopbackB[] = {
			P2_HS_DAC3A,
			P17_HS_ADC1B,
			P21_HS_ADC0B,
			P32_HS_DAC3B,
			P33_HS_ADC2B,
			P46_HS_DAC2B,
			P48_HS_DAC1B,
			P51_HS_DAC0B,
			P3_LS0_DAC07,
			P6_LS0_DAC06,
			P10_LS0_DAC01,
			P34_LS0_DAC05,
			P35_LS0_DAC04,
			P36_LS0_DAC00,
			P40_LS0_DAC02,
			P50_HS_ADC3A,
			P55_HS_ADC3B,
			P74_LS0_DAC03
	};

	//Set Pin_Settings Array to desired Array settings
	for(int i = 0; i < sizeof(Pin_Settings) / sizeof(Pin_Settings[0]); i++){
		Pin_Settings[i] = HSLoopbackB[i];
	};

	//Reinitialize Switch Settings For Desired States
    /*Status = */IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
//    if(Status != XST_SUCCESS){
//    	return XST_FAILURE;
//    }

    printf("System configured in channel B loopback mode.\n");
    printf("Mode will persist until another test is selected.\n");
    printf("\n.\n.\n.\n");
	// Test Mode 7 End
	////////////////////////////////////////////////////////////////////
}


//sets the Status of the edge mounted LEDs.
void setLEDStatus (uint8_t status){
	XGpio_DiscreteWrite(&GPIO0_LEDS, 1, status);
}

//sets the State of an IO pin
void setIOPin (const net_t* pin, uint8_t state){
	XGpio_SetDataDirection(pin->instance, pin->channel, 0x0);
	XGpio_DiscreteWrite(pin->instance, pin->channel, state << pin->bit_num);
}

//sets the State of an IO pin
int readIOPin (const net_t* pin){
	XGpio_SetDataDirection(pin->instance, pin->channel, 0xFFFFFFFF);
	if (XGpio_DiscreteRead(pin->instance, pin->channel) & (1 << pin->bit_num)){
		return 1;
	}
	return 0;
}

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
		case 1: //Input -> fall through to case 2

		case 2: //Bidirectional -> initialize as input
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
	int num_Pins = sizeof(Pin_Settings) / sizeof(Pin_Settings[0]);
	for (int i = 0; i < num_Pins; i++){
		Status = IOEXP_Path_Select(instance, address, Pin_Settings[i]);
		if (Status != XST_SUCCESS){
			return XST_FAILURE;
		}
	}

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

int IOEXP_Init (XIic *instance, uint8_t address, uint8_t *config_words, int num_bytes){
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

int AFE_Init (XSpi *instance, uint8_t *data, int num_bytes, uint32_t CS){

	int Status;
	XSpi_SetSlaveSelect(instance, CS);

	uint8_t data_words[num_bytes];
	for (int i = 0; i < num_bytes; i++){
		data_words[i] = data[i];
	}

	uint8_t Rx_buffer[3];

	for (int i = 0; i < num_bytes; i+=3){
		Status = XSpi_Transfer(instance, &data_words[i], Rx_buffer, 3);
		if (Status != XST_SUCCESS){
			return XST_FAILURE;
		}
	}

	return XST_SUCCESS;
}


//instance, CHANNEL => 0x00 - 0x07, DATA => 0 - 4095
int LS_DAC_Write(const LSDAC_t *LSDAC, uint8_t CHANNEL, uint16_t DATA){

	int Status;
	XSpi_SetSlaveSelect(LSDAC->instance, LSDAC->CS);

	uint8_t CMD = 0x03; //Write to channel n, update channel n

	//LTC2666-12 uses 24 bit (3 bytes) input words. (4 bit Command, 4 bit DAC Channel select, 16 bits for data (4 LSBs are don't care bits)
	uint8_t data_words[3] = {
			(CMD << 4) | (0x0F & CHANNEL),
			DATA >> 4,
			(DATA << 4) & 0xFF
	};

	uint8_t Rx_buffer[3];
	//Write words to specified LS_DAC
	Status = XSpi_Transfer(LSDAC->instance, data_words, Rx_buffer, 3);
	if(Status != XST_SUCCESS){
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int LS_DAC_WriteAll(const LSDAC_t *LSDAC, uint16_t DATA){

	int Status;
	XSpi_SetSlaveSelect(LSDAC->instance, LSDAC->CS);

	uint8_t CMD = 0x0A; //Write to all, update all

	//LTC2666-12 uses 24 bit (3 bytes) input words. (4 bit Command, 4 bit DAC Channel select, 16 bits for data (4 LSBs are don't care bits)
	uint8_t data_words[3] = {
			(CMD << 4),          //CHANNEL bits don't matter here
			DATA >> 4,           //data in lower 12 bits of DATA, need to shift down to take bits representing highest 8 bits of data
			(DATA << 4) & 0xFF   //take lower 4 bits of data and pad with 4 zeros
	};

	uint8_t Rx_buffer[3];
	//Write words to specified LS_DAC
	Status = XSpi_Transfer(LSDAC->instance, data_words, Rx_buffer, 3);
	if(Status != XST_SUCCESS){
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}
