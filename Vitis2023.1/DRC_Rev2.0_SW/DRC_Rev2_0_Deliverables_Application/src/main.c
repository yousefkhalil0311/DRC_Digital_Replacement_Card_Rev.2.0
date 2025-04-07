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

//Standard C includes
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <unistd.h>
#include <math.h>

//Xilinx specific includes
#include "platform.h"
#include "xil_printf.h"
#include "xiic.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xspi.h"
#include "xuartps.h"

//Project specific includes
#include "RegisterMaps.h"
#include "XPAR_AXI_IDS.h"
#include "PeripheralMacros.h"
#include "StructDefinitions.h"
#include "DRC_Parameters.h"
#include "AXI_Block_Init.h"


//sets the Status of the edge mounted LEDs.
void setLEDStatus (uint8_t status){
	XGpio_DiscreteWrite(&GPIO0_LEDS, 1, status);
}

//sets the State of an IO pin
void setIOPin (const net_t* pin, uint8_t state){
	//pin->IOEXP->DIR_CTRL_STATE = 0xFFFF;
    //IOEXP_Write (pin->IOEXP->instance, pin->IOEXP->address, pin->IOEXP->DIR_CTRL_STATE);
	//XGpio_SetDataDirection(pin->instance, pin->channel, 0x0);
	XGpio_DiscreteWrite(pin->instance, pin->channel, state << pin->bit_num);
}

//sets the State of an IO pin
int readIOPin (const net_t* pin){
	//pin->IOEXP->DIR_CTRL_STATE = 0x0000;
    //IOEXP_Write (pin->IOEXP->instance, pin->IOEXP->address, pin->IOEXP->DIR_CTRL_STATE);
	//XGpio_SetDataDirection(pin->instance, pin->channel, 0xFFFFFFFF);
	if (XGpio_DiscreteRead(pin->instance, pin->channel) & (1 << pin->bit_num)){
		return 1;
	}
	return 0;
}

int main()
{
    init_platform();
    int Status; 	//used to hold return status throughout the function.

    //Initialize LED GPIO AXI device
    printf("Initializing LED GPIO AXI device.\n");
    Status = GPIO_Init_Wrapper (GPIO_LED, GPIO_LED_LEN, GPIO0_LEDS_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Initialize CTRL GPIO AXI device
    printf("Initializing CTRL GPIO AXI device.\n");
    Status = GPIO_Init_Wrapper (GPIO_CTRL, GPIO_CTRL_LEN, GPIO8_CTRL_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Initialize SPDT GPIO AXI device
    printf("Initializing SPDT GPIO AXI device.\n");
    Status = GPIO_Init_Wrapper (GPIO_SPDT, GPIO_SPDT_LEN, GPIO7_SPDT_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Initialize Single Ended GPIO AXI device
    printf("Initializing Single Ended GPIO AXI device.\n");
    Status = GPIO_Init_Wrapper (GPIO_SE, GPIO_SE_LEN, GPIO9_SE_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Initialize Differential(In this app single ended) GPIO AXI device
    printf("Initializing Differential(In this app single ended) GPIO AXI device.\n");
    Status = GPIO_Init_Wrapper (GPIO_DS, GPIO_DS_LEN, GPIO10_DS_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Initialize AFE Mode Control GPIO AXI device
    printf("Initializing AFE Mode control GPIO AXI device.\n");
    Status = GPIO_Init_Wrapper (GPIO_AFE_CTRL, GPIO_AFE_CTRL_LEN, GPIO14_AFE_CNTRL_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Initialize AFE7222 SPI devices
    printf("Initializing AFE7222 SPI devices.\n");
    Status = SPI_Init(&SPI0_AFE, SPI0_AFE_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Initialize LTC2666 SPI devices
    printf("Initializing LTC2666 SPI devices.\n");
    Status = SPI_Init(&SPI1_LSDAC, SPI1_LSDAC_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    XGpio_Initialize(&GPIO15_DAC0Const, GPIO15_DAC0Const_ID);
    XGpio_Initialize(&GPIO16_DAC1Const, GPIO16_DAC1Const_ID);
    XGpio_Initialize(&GPIO17_DAC2Const, GPIO17_DAC2Const_ID);
    XGpio_Initialize(&GPIO18_DAC3Const, GPIO18_DAC3Const_ID);
    XGpio_DiscreteWrite(&GPIO15_DAC0Const, 1, 0x700);
    XGpio_DiscreteWrite(&GPIO15_DAC0Const, 2, 0x700);
    XGpio_DiscreteWrite(&GPIO16_DAC1Const, 1, 0x000);
    XGpio_DiscreteWrite(&GPIO16_DAC1Const, 2, 0x000);
    XGpio_DiscreteWrite(&GPIO17_DAC2Const, 1, 0x000);
    XGpio_DiscreteWrite(&GPIO17_DAC2Const, 2, 0x000);
    XGpio_DiscreteWrite(&GPIO18_DAC3Const, 1, 0x000);
    XGpio_DiscreteWrite(&GPIO18_DAC3Const, 2, 0x000);
    printf("Writing registers to AFE chips.\n");
//    for (int i = 0x01; i < (0x01 << 2); i = i << 1){//Initializes AFEs 0 and 1;
//        Status = AFE_Init(&SPI0_AFE, AFE_REG_MAP, AFE_REG_MAP_SIZE, i);
//        if(Status != XST_SUCCESS){
//        	return XST_FAILURE;
//        }
//    }
    for (int i = 0x01; i < (0x01 << 4); i = i << 1){//Initializes AFEs 2 and 3;
        Status = AFE_Init(&SPI0_AFE, AFE_LPBK_REG_MAP, AFE_LPBK_REG_MAP_SIZE, i);
        if(Status != XST_SUCCESS){
        	return XST_FAILURE;
        }
    }

    printf("Initializing IIC0.\n");
    Status = IIC_Init (&IIC0_IOEXP, IIC0_IOEXP_ID, IOEXP_U19.address);
    if(Status != XST_SUCCESS){
    	printf("Failed to initialize IIC for IOEXP_U19\n");
    	return XST_FAILURE;
    }

    printf("Initializing IOEXP_U19.\n");
    Status = IOEXP_Init(&IIC0_IOEXP, IOEXP_U19.address);
    if(Status != XST_SUCCESS){
    	printf("Failed to initialize IOEXP_U19\n");
    	return XST_FAILURE;
    }

    printf("Writing to IOEXP_U19.\n");
    IOEXP_Write (IOEXP_U19.instance, IOEXP_U19.address, IOEXP_U19.DIR_CTRL_STATE);



    printf("Initializing IIC2.\n");
    Status = IIC_Init (IOEXP_U20.instance, IIC2_IOEXP_ID, IOEXP_U20.address);
    if(Status != XST_SUCCESS){
    	printf("Failed to initialize IIC for IOEXP_U20\n");
    	return XST_FAILURE;
    }

    printf("Initializing IOEXP_U20.\n");
    Status = IOEXP_Init(IOEXP_U20.instance, IOEXP_U20.address);
    if(Status != XST_SUCCESS){
    	printf("Failed to initialize IOEXP_U20\n");
    	return XST_FAILURE;
    }

    printf("Writing to IOEXP_U20.\n");
    IOEXP_Write (IOEXP_U20.instance, IOEXP_U20.address, IOEXP_U20.DIR_CTRL_STATE);



    printf("Reinitializing IIC2.\n");
    Status = IIC_Init (IOEXP_U21.instance, IIC2_IOEXP_ID, IOEXP_U21.address);
    if(Status != XST_SUCCESS){
    	printf("Failed to initialize IIC for IOEXP_U21\n");
    	return XST_FAILURE;
    }

    printf("Initializing IOEXP_U21.\n");
    Status = IOEXP_Init(IOEXP_U21.instance, IOEXP_U21.address);
    if(Status != XST_SUCCESS){
    	printf("Failed to initialize IOEXP_U21\n");
    	return XST_FAILURE;
    }

    printf("Writing to IOEXP_U21.\n");
    IOEXP_Write (IOEXP_U21.instance, IOEXP_U21.address, IOEXP_U21.DIR_CTRL_STATE);



    printf("Initializing.\n");
    Status = IIC_Init (IOEXP_U18.instance, IIC1_IOEXP_ID, IOEXP_U18.address);
    if(Status != XST_SUCCESS){
    	printf("Failed to initialize IIC for IOEXP_U18\n");
    	return XST_FAILURE;
    }

    printf("Initializing.\n");
    Status = IOEXP_Init(IOEXP_U18.instance, IOEXP_U18.address);
    if(Status != XST_SUCCESS){
    	printf("Failed to initialize IOEXP_U18\n");
    	return XST_FAILURE;
    }

    printf("Writing to IOEXP_U21.\n");
    IOEXP_Write (IOEXP_U18.instance, IOEXP_U18.address, IOEXP_U18.DIR_CTRL_STATE);



	setLEDStatus (0x1);
    printf("Initializing.\n");
    Status = IIC_Init (&IIC0_IOEXP, IIC0_IOEXP_ID, IOEXP0_ADDRESS);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    printf("Initializing.\n");
    Status = IOEXP_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    printf("Initializing.\n");
    Status = IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    printf("Initializing.\n");
    Status = XGpio_Initialize(&GPIO1_SPDCTRL,  GPIO1_SPDCTRL_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    printf("Initializing.\n");
    Status = XGpio_Initialize(&GPIO2_DATA0A,  GPIO2_DATA0A_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    printf("Initializing.\n");
    Status = XGpio_Initialize(&GPIO3_DATA0B,  GPIO3_DATA0B_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    printf("Initializing.\n");
    Status = XGpio_Initialize(&GPIO4_DATA1A,  GPIO4_DATA1A_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    printf("Initializing.\n");
    Status = XGpio_Initialize(&GPIO5_DATA1B,  GPIO5_DATA1B_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    printf("Initializing.\n");
    Status = XGpio_Initialize(&GPIO6_DATA2A,  GPIO6_DATA2A_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    printf("Initializing.\n");
    Status = XGpio_Initialize(&GPIO11_DATA2B,  GPIO11_DATA2B_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    printf("Initializing.\n");
    Status = XGpio_Initialize(&GPIO12_DATA3A,  GPIO12_DATA3A_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    printf("Initializing1.\n");
    Status = XGpio_Initialize(&GPIO13_DATA3B,  GPIO13_DATA3B_ID);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }


	setLEDStatus (0x4);

//	XSpi_SetSlaveSelect(instance, CS);
//	uint8_t Rx_buffer[3];
//	uint8_t Tx_buffer0[3] = {0x11, 0x72, 0x10};
//	uint8_t Tx_buffer1[3] = {0x11, 0x80, 0x00};
//	uint8_t Tx_buffer2[3] = {0x11, 0x90, 0x00};
//	uint8_t Tx_buffer3[3] = {0x11, 0xA0, 0x00};
//
//	for(uint32_t i = 0; i < 1 << 12; i++){
//
//		Tx_buffer0[1] = ((Tx_buffer0[1] >> 4) << 4) | (i >> 28);
//		Tx_buffer0[2] = i >> 20 & 0xF0;
//		Tx_buffer1[1] = ((Tx_buffer1[1] >> 4) << 4) | (0x0F & (i >> 20));
//		Tx_buffer1[2] = i >> 16 & 0xF0;
//		Tx_buffer2[1] = ((Tx_buffer2[1] >> 4) << 4) | (0x0F & (i >> 16));
//		Tx_buffer2[2] = i >> 12 & 0xF0;
//		Tx_buffer3[1] = ((Tx_buffer3[1] >> 4) << 4) | (0x0F & (i >> 12));
//		Tx_buffer3[2] = i >> 8 & 0xF0;
//
//		XSpi_Transfer(SPI0_AFE, )
//	}

//For DAC Control application
//    printf("Initializing.\n");
//    while(1){
//        printf("Please enter SPDCTRL value: ");
//        int readValue;
//        usleep(100000);
//        fflush(stdin);
//        scanf("%d", &readValue);
//        fflush(stdin);
//        printf("\n");
//        if(readValue == 4097){
//            printf("Please enter sleep time\n");
//            int sleeptime;
//            fflush(stdin);
//            scanf("%d", &sleeptime);
//            fflush(stdin);
//        	for(int i = 0; i < 4096; i++){
//        		XGpio_DiscreteWrite(&GPIO1_SPDCTRL, 1, i);
//        		printf("Current Value: %d\n", i);
//        		usleep(sleeptime);
//        	}
//    		usleep(100000);
//        }else{
//            XGpio_DiscreteWrite(&GPIO1_SPDCTRL, 1, readValue);
//        }
//        usleep(100000);
//        printf("Please enter SMPLCTRL value: ");
//        usleep(100000);
//        fflush(stdin);
//        scanf("%d", &readValue);
//        fflush(stdin);
//        printf("\n");
//        if(readValue == 4097){
//            printf("Please enter sleep time\n");
//            int sleeptime;
//            fflush(stdin);
//            scanf("%d", &sleeptime);
//            fflush(stdin);
//        	for(int i = 0; i < 4096; i++){
//        		XGpio_DiscreteWrite(&GPIO1_SPDCTRL, 1, i);
//        		printf("Current Value: %d\n", i);
//        		usleep(sleeptime);
//        	}
//    		usleep(100000);
//        }else{
//            XGpio_DiscreteWrite(&GPIO1_SPDCTRL, 2, readValue);
//        }
//        usleep(100000);
//    }

	        		XGpio_DiscreteWrite(&GPIO1_SPDCTRL, 1, 1);
	            XGpio_DiscreteWrite(&GPIO1_SPDCTRL, 2, 1);
    uint32_t chvalmax;
    uint32_t chvalmin;
    printf("DRC ADC MinMax Test.\n");
    while(1){
    	chvalmax = XGpio_DiscreteRead(&GPIO2_DATA0A, 1);
    	chvalmin = XGpio_DiscreteRead(&GPIO2_DATA0A, 2);
    	printf("Pin 51:\nMax: %X, \nMin: %X\n\n", chvalmax, chvalmin);
    	chvalmax = XGpio_DiscreteRead(&GPIO3_DATA0B, 1);
    	chvalmin = XGpio_DiscreteRead(&GPIO3_DATA0B, 2);
    	printf("Pin 21:\nMax: %X, \nMin: %X\n\n", chvalmax, chvalmin);
//    	chvalmax = XGpio_DiscreteRead(&GPIO4_DATA1A, 1);
//    	chvalmin = XGpio_DiscreteRead(&GPIO4_DATA1A, 2);
//    	printf("Pin 48:\nMax: %X, \nMin: %X\n\n", chvalmax, chvalmin);
//    	chvalmax = XGpio_DiscreteRead(&GPIO5_DATA1B, 1);
//    	chvalmin = XGpio_DiscreteRead(&GPIO5_DATA1B, 2);
//    	printf("Pin 17:\nMax: %X, \nMin: %X\n\n", chvalmax, chvalmin);
//    	chvalmax = XGpio_DiscreteRead(&GPIO6_DATA2A, 1);
//    	chvalmin = XGpio_DiscreteRead(&GPIO6_DATA2A, 2);
//    	printf("Pin 46:\nMax: %X, \nMin: %X\n\n", chvalmax, chvalmin);
//    	chvalmax = XGpio_DiscreteRead(&GPIO11_DATA2B, 1);
//    	chvalmin = XGpio_DiscreteRead(&GPIO11_DATA2B, 2);
//    	printf("Pin 33:\nMax: %X, \nMin: %X\n\n", chvalmax, chvalmin);
//    	chvalmax = XGpio_DiscreteRead(&GPIO12_DATA3A, 1);
//    	chvalmin = XGpio_DiscreteRead(&GPIO12_DATA3A, 2);
//    	printf("Pin 50:\nMax: %X, \nMin: %X\n\n", chvalmax, chvalmin);
//    	chvalmax = XGpio_DiscreteRead(&GPIO13_DATA3B, 1);
//    	chvalmin = XGpio_DiscreteRead(&GPIO13_DATA3B, 2);
//    	printf("Pin 55:\nMax: %X, \nMin: %X\n\n", chvalmax, chvalmin);
    	usleep(50000);
    	printf("\033[2J\033[H");
    	usleep(50000);
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
    printf("Runtime = Frequency division in TestMode8.\n");
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
    case 8:
    	TestMode8(runTime);
    	break;
    default:
    	printf("Invalid Test\n");
    	break;
    }
	goto QueryTest;



    cleanup_platform();
    return 0;
}
