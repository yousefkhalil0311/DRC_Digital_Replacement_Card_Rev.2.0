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
#include "AFE7222.h"
#include "IOEXP.h"
#include "Hardware_Tests.h"
#include "DRC_Functions.h"

int main()
{
    init_platform();
    int Status; 	//used to hold return status throughout the function.

  //Initialize LED GPIO AXI device
   printf("Boot: Initializing LED control GPIO device...\n");
   Status = GPIO_Init_Wrapper(GPIO_LED, GPIO_LED_LEN, GPIO0_LEDS_ID);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   // Initialize CTRL GPIO AXI device
   printf("Boot: Initializing system control GPIO device...\n");
   Status = GPIO_Init_Wrapper(GPIO_CTRL, GPIO_CTRL_LEN, GPIO8_CTRL_ID);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   // Initialize SPDT GPIO AXI device
   printf("Boot: Initializing SPDT switch control GPIO device...\n");
   Status = GPIO_Init_Wrapper(GPIO_SPDT, GPIO_SPDT_LEN, GPIO7_SPDT_ID);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   // Initialize Single Ended GPIO AXI device
   printf("Boot: Initializing single-ended signal GPIO device...\n");
   Status = GPIO_Init_Wrapper(GPIO_SE, GPIO_SE_LEN, GPIO9_SE_ID);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   // Initialize Differential (single-ended for this app) GPIO AXI device
   printf("Boot: Initializing differential-mode (used as single-ended) GPIO device...\n");
   Status = GPIO_Init_Wrapper(GPIO_DS, GPIO_DS_LEN, GPIO10_DS_ID);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   // Initialize AFE Mode Control GPIO AXI device
   printf("Boot: Initializing AFE mode control GPIO device...\n");
   Status = GPIO_Init_Wrapper(GPIO_AFE_CTRL, GPIO_AFE_CTRL_LEN, GPIO14_AFE_CNTRL_ID);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   // Initialize AFE7222 SPI device
   printf("Boot: Initializing AFE7222 SPI device...\n");
   Status = SPI_Init(&SPI0_AFE, SPI0_AFE_ID);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   // Initialize LTC2666 SPI device
   printf("Boot: Initializing LTC2666 DAC SPI device...\n");
   Status = SPI_Init(&SPI1_LSDAC, SPI1_LSDAC_ID);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   // Initialize DAC AXI block
   printf("Boot: Initializing constant value DAC GPIO devices...\n");
   XGpio_Initialize(&GPIO15_DAC0Const, GPIO15_DAC0Const_ID);
   XGpio_Initialize(&GPIO16_DAC1Const, GPIO16_DAC1Const_ID);
   XGpio_Initialize(&GPIO17_DAC2Const, GPIO17_DAC2Const_ID);
   XGpio_Initialize(&GPIO18_DAC3Const, GPIO18_DAC3Const_ID);

   // Initialize ADC Data AXI blocks
   printf("Boot: Initializing ADC probing AXI blocks...\n");
   XGpio_Initialize(&GPIO20_ADCDATA_0, GPIO20_ADCDATA_0_ID);
   XGpio_Initialize(&GPIO21_ADCDATA_1, GPIO21_ADCDATA_1_ID);
   XGpio_Initialize(&GPIO22_ADCDATA_2, GPIO22_ADCDATA_2_ID);
   XGpio_Initialize(&GPIO23_ADCDATA_3, GPIO23_ADCDATA_3_ID);

   // Initialize PL frequency control AXI GPIO block
   printf("Boot: Initializing PL frequency control AXI GPIO block...\n");
   XGpio_Initialize(&GPIO19_PL_OUTPUT_FREQ, GPIO19_PL_OUTPUT_FREQ_ID);
   XGpio_DiscreteWrite(&GPIO19_PL_OUTPUT_FREQ, 1, 3);
   XGpio_DiscreteWrite(&GPIO19_PL_OUTPUT_FREQ, 2, 5);

   // Initialize AFEs
   printf("Boot: Writing initial register values to AFE7222 devices...\n");
   for (int i = 0x01; i < (0x01 << 4); i = i << 1){
	   Status = AFE_Init(&SPI0_AFE, AFE_LPBK_REG_MAP, AFE_LPBK_REG_MAP_SIZE, i);
	   if(Status != XST_SUCCESS) return XST_FAILURE;
   }

   // Initialize IIC and IO Expanders
   printf("Boot: Initializing IIC0 and IO Expander U19...\n");
   Status = IIC_Init(&IIC0_IOEXP, IIC0_IOEXP_ID, IOEXP_U19.address);
   if(Status != XST_SUCCESS){
	   printf("Error: Failed to initialize IIC for IOEXP_U19\n");
	   return XST_FAILURE;
   }
   printf("Boot: Configuring IOEXP_U19...\n");
   Status = IOEXP_Init(&IIC0_IOEXP, IOEXP_U19.address);
   if(Status != XST_SUCCESS){
	   printf("Error: Failed to initialize IOEXP_U19\n");
	   return XST_FAILURE;
   }
   printf("Boot: Writing direction control to IOEXP_U19...\n");
   IOEXP_Write(IOEXP_U19.instance, IOEXP_U19.address, IOEXP_U19.DIR_CTRL_STATE);

   printf("Boot: Initializing IIC2 and IO Expander U20...\n");
   Status = IIC_Init(IOEXP_U20.instance, IIC2_IOEXP_ID, IOEXP_U20.address);
   if(Status != XST_SUCCESS){
	   printf("Error: Failed to initialize IIC for IOEXP_U20\n");
	   return XST_FAILURE;
   }
   printf("Boot: Configuring IOEXP_U20...\n");
   Status = IOEXP_Init(IOEXP_U20.instance, IOEXP_U20.address);
   if(Status != XST_SUCCESS){
	   printf("Error: Failed to initialize IOEXP_U20\n");
	   return XST_FAILURE;
   }
   printf("Boot: Writing direction control to IOEXP_U20...\n");
   IOEXP_Write(IOEXP_U20.instance, IOEXP_U20.address, IOEXP_U20.DIR_CTRL_STATE);

   printf("Boot: Reinitializing IIC2 for IO Expander U21...\n");
   Status = IIC_Init(IOEXP_U21.instance, IIC2_IOEXP_ID, IOEXP_U21.address);
   if(Status != XST_SUCCESS){
	   printf("Error: Failed to initialize IIC for IOEXP_U21\n");
	   return XST_FAILURE;
   }
   printf("Boot: Configuring IOEXP_U21...\n");
   Status = IOEXP_Init(IOEXP_U21.instance, IOEXP_U21.address);
   if(Status != XST_SUCCESS){
	   printf("Error: Failed to initialize IOEXP_U21\n");
	   return XST_FAILURE;
   }
   printf("Boot: Writing direction control to IOEXP_U21...\n");
   IOEXP_Write(IOEXP_U21.instance, IOEXP_U21.address, IOEXP_U21.DIR_CTRL_STATE);

   printf("Boot: Initializing IIC1 for IO Expander U18...\n");
   Status = IIC_Init(IOEXP_U18.instance, IIC1_IOEXP_ID, IOEXP_U18.address);
   if(Status != XST_SUCCESS){
	   printf("Error: Failed to initialize IIC for IOEXP_U18\n");
	   return XST_FAILURE;
   }
   printf("Boot: Configuring IOEXP_U18...\n");
   Status = IOEXP_Init(IOEXP_U18.instance, IOEXP_U18.address);
   if(Status != XST_SUCCESS){
	   printf("Error: Failed to initialize IOEXP_U18\n");
	   return XST_FAILURE;
   }
   printf("Boot: Writing direction control to IOEXP_U18...\n");
   IOEXP_Write(IOEXP_U18.instance, IOEXP_U18.address, IOEXP_U18.DIR_CTRL_STATE);

   setLEDStatus(0x1);

   printf("Boot: Initializing IIC0 for general IO Expander...\n");
   Status = IIC_Init(&IIC0_IOEXP, IIC0_IOEXP_ID, IOEXP0_ADDRESS);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   printf("Boot: Configuring general IO Expander...\n");
   Status = IOEXP_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   printf("Boot: Initializing multi-function IO pins...\n");
   Status = IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   // GPIO Input/Output Initializations
   printf("Boot: Initializing GPIO1 for SPDCTRL...\n");
   Status = XGpio_Initialize(&GPIO1_SPDCTRL, GPIO1_SPDCTRL_ID);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   printf("Boot: Initializing GPIO2 for DATA0A...\n");
   Status = XGpio_Initialize(&GPIO2_DATA0A, GPIO2_DATA0A_ID);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   printf("Boot: Initializing GPIO3 for DATA0B...\n");
   Status = XGpio_Initialize(&GPIO3_DATA0B, GPIO3_DATA0B_ID);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   printf("Boot: Initializing GPIO4 for DATA1A...\n");
   Status = XGpio_Initialize(&GPIO4_DATA1A, GPIO4_DATA1A_ID);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   printf("Boot: Initializing GPIO5 for DATA1B...\n");
   Status = XGpio_Initialize(&GPIO5_DATA1B, GPIO5_DATA1B_ID);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   printf("Boot: Initializing GPIO6 for DATA2A...\n");
   Status = XGpio_Initialize(&GPIO6_DATA2A, GPIO6_DATA2A_ID);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   printf("Boot: Initializing GPIO11 for DATA2B...\n");
   Status = XGpio_Initialize(&GPIO11_DATA2B, GPIO11_DATA2B_ID);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   printf("Boot: Initializing GPIO12 for DATA3A...\n");
   Status = XGpio_Initialize(&GPIO12_DATA3A, GPIO12_DATA3A_ID);
   if(Status != XST_SUCCESS) return XST_FAILURE;

   printf("Boot: Initializing GPIO13 for DATA3B...\n");
   Status = XGpio_Initialize(&GPIO13_DATA3B, GPIO13_DATA3B_ID);
   if(Status != XST_SUCCESS) return XST_FAILURE;



	setLEDStatus (0x4);

	setPath(P51_HS_ADC0A);

	while(1){
		printf("%lf", HSADC_getVoltage(0, 'A'));
	}

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
    while(0){
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
	printf("\033[2J\033[H");
    printf("DRC Rev. 2.0 Device Verification Test.\n");
    printf("Please Select a Test.\n");
    printf("1) LED Test.\n");
    printf("2) Digital Output Test.\n");
    printf("3) Digital Input Test.\n");
    printf("4) Low Speed DAC Ramp.\n");
    printf("5) Low Speed DAC Square Wave.\n");
    printf("6) High Speed ADC/DAC Loopback Mode A.\n");
    printf("7) High Speed ADC/DAC Loopback Mode B.\n");
    printf("8) High Speed DAC output mode. Tests High speed DAC to FPGA communication bus.\n");
    printf("9) High speed DAC Quadrature mode. Tests High speed DAC on board quadrature generation.\n");

    //store user selected value
    int readValue;
    if(scanf("%d", &readValue) != 1){
    	printf("Invalid input.\n");
    	usleep(100000);
    	clearBuffer();
    	goto QueryTest;
    }

    if(readValue < 1 || readValue > 9){
    	printf("Invalid input.\n");
    	usleep(100000);
    	clearBuffer();
    	goto QueryTest;
    }

    printf("%d\n", readValue);

    clearBuffer();
    parseCase:

    uint32_t runTime = 0;

    switch(readValue){
    case 1:
    	TestMode1();
    	break;

    case 2:
        uint32_t delay;

        printf("\nEnter delay between state changes (in ms): ");
        scanf("%u", &delay);

        if(delay < 0){
        	goto parseCase;
        }

    	TestMode2(delay);
    	break;

    case 3:
        printf("\nEnter length of test in seconds: ");
        scanf("%u", &runTime);

        if(runTime < 0){
        	goto parseCase;
        }
    	TestMode3(runTime);
    	break;

    case 4:
        printf("\nEnter length of test in seconds: ");
        scanf("%u", &runTime);

        if(runTime < 0){
        	goto parseCase;
        }
    	TestMode4(runTime);
    	break;

    case 5:
        printf("\nEnter length of test in seconds: ");
        scanf("%u", &runTime);

        if(runTime < 0){
        	goto parseCase;
        }
    	TestMode5(runTime);
    	break;

    case 6:
        printf("\nEnter length of test in seconds: ");
        scanf("%u", &runTime);

        if(runTime < 0){
        	goto parseCase;
        }
    	TestMode6(runTime);
    	break;

    case 7:
        printf("\nEnter length of test in seconds: ");
        scanf("%u", &runTime);

        if(runTime < 0){
        	goto parseCase;
        }
    	TestMode7(runTime);
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
