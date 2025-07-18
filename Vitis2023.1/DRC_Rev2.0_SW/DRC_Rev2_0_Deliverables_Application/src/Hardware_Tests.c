#include "Hardware_Tests.h"

//Standard C includes
#include <stdio.h>
#include <inttypes.h>
#include <stdarg.h>
#include <string.h>

//Xilinx specific includes
#include "xuartps.h"
#include "sleep.h"
#include "xtime_l.h"

//Project specific includes
#include "StructDefinitions.h"
#include "RegisterMaps.h"
#include "DRC_Parameters.h"
#include "PeripheralMacros.h"
#include "DRC_Functions.h"
#include "IOEXP.h"
#include "LSDAC.h"
#include "AFE7222.h"

#define NUM_PASSES 20

void TestMode1(){}

void TestMode2(){
	clearTerminal();
    printf("Test Mode 1");

    int pass = 0;
    int fail = 0;
    /*
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
	for(int i = 0; i < PIN_SETTINGS_LEN; i++){
		Pin_Settings[i] = AllDigitalPaths[i];
	};

	//Reinitialize Switch Settings For Desired States
    int Status = IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //loop digital IO bit test 20 times

    //GPIO set 1. Will initially be inputs, then outputs
    const net_t* GPIO_SINGLE_SET_1[] = {
    		&SE4,  &SE7,  &SE8,  &SE9,  &SE11, &SE12, &SE14, &SE16,
			&SE18, &SE20, &SE22, &SE23, &SE24, &SE25, &SE26, &SE27,
			&SE28, &SE29, &SE43, &SE47, &SE62, &SE64, &SE66, &SE68,
			&SE70, &SE72, &SE76, &SE79, &SE81, &SE83,
    };

    const size_t GPIO_S1_LEN = sizeof(GPIO_SINGLE_SET_1)/sizeof(GPIO_SINGLE_SET_1[0]);

    //GPIO set 2. Will initially be outputs, then inputs
    const net_t* GPIO_SINGLE_SET_2[] = {
    		&SE5,  &SE37, &SE38, &SE39, &SE41, &SE42, &SE44, &SE45,
			&SE19, &SE49, &SE52, &SE53, &SE54, &SE85, &SE56, &SE57,
			&SE58, &SE59, &SE73, &SE77, &SE63, &SE65, &SE67, &SE69,
			&SE71, &SE75, &SE78, &SE80, &SE82, &SE84,
    };

    const size_t GPIO_S2_LEN = sizeof(GPIO_SINGLE_SET_2)/sizeof(GPIO_SINGLE_SET_2[0]);

    for(int run = 0; run < NUM_PASSES; run++){
        for(int pin = 0; pin < GPIO_S1_LEN; pin++){
        	readIOPin(GPIO_SINGLE_SET_1[pin]);
        	setIOPin(GPIO_SINGLE_SET_2[pin], 1);
        	if(readIOPin(GPIO_SINGLE_SET_1[pin]) == 1){
        		printf("Pass");
        		pass++;
        	}
        	else{
        		printf("\nPin %d Fail\n", pin);
        		fail++;
        	}
        	setIOPin(GPIO_SINGLE_SET_2[pin], 0);
        	if(readIOPin(GPIO_SINGLE_SET_1[pin]) == 0){
        		printf("Pass");
        		pass++;
        	}
        	else{
        		printf("\nPin %d Fail\n", pin);
        		fail++;
        	}
        }
    }
    for(int run = 0; run < NUM_PASSES; run++){
        for(int pin = 0; pin < GPIO_S2_LEN; pin++){
        	readIOPin(GPIO_SINGLE_SET_2[pin]);
        	setIOPin(GPIO_SINGLE_SET_1[pin], 1);
        	if(readIOPin(GPIO_SINGLE_SET_2[pin]) == 1){
        		printf("Pass");
        		pass++;
        	}
        	else{
        		printf("\nPin %d Fail\n", pin);
        		fail++;
        	}
        	setIOPin(GPIO_SINGLE_SET_1[pin], 0);
        	if(readIOPin(GPIO_SINGLE_SET_2[pin]) == 0){
        		printf("Pass");
        		pass++;
        	}
        	else{
        		printf("\nPin %d Fail\n", pin);
        		fail++;
        	}
        }
    }

    //Will set 1 at a time as output and rest as input
    const net_t* GPIO_MULTI_SET_1[] = {
    		&SE2,  &SE3,  &SE10, &SE17, &SE21, &SE33, &SE40, &SE55, &SE74,
    };

    const size_t GPIO_M1_LEN = sizeof(GPIO_MULTI_SET_1)/sizeof(GPIO_MULTI_SET_1[0]);

    for(int run = 0; run < NUM_PASSES; run++){
        for(int pin = 0; pin < GPIO_M1_LEN; pin++){
        	readIOPin(GPIO_MULTI_SET_1[pin]);
        }
        for(int outPin = 0; outPin < GPIO_M1_LEN; outPin++){
            for(int inPin = 0; inPin < GPIO_M1_LEN; inPin++){
            	if(inPin == outPin){
            		continue;
            	}else{
                	setIOPin(GPIO_MULTI_SET_1[outPin], 1);
                	if(readIOPin(GPIO_MULTI_SET_1[inPin]) == 1){
                		printf("Pass");
                		pass++;
                	}
                	else{
                		printf("\nM1 out 1, outPin %d and inPin %d Fail\n", outPin, inPin);
                		fail++;
                	}
                	setIOPin(GPIO_MULTI_SET_1[outPin], 0);
                	if(readIOPin(GPIO_MULTI_SET_1[inPin]) == 0){
                		printf("Pass");
                		pass++;
                	}
                	else{
                		printf("\nM1 out 0, outPin %d and inPin %d Fail\n", outPin, inPin);
                		fail++;
                	}
                	readIOPin(GPIO_MULTI_SET_1[outPin]);
            	}
            }
        }
    }

    //Will set 1 at a time as output and rest as input
    const net_t* GPIO_MULTI_SET_2[] = {
    		&SE36, &SE48, &SE46, &SE51, &SE32, &SE34, &SE6, &SE50, &SE35
    };

    const size_t GPIO_M2_LEN = sizeof(GPIO_MULTI_SET_2)/sizeof(GPIO_MULTI_SET_2[0]);

    for(int run = 0; run < NUM_PASSES; run++){
        for(int pin = 0; pin < GPIO_M2_LEN; pin++){
        	readIOPin(GPIO_MULTI_SET_2[pin]);
        }
        for(int outPin = 0; outPin < GPIO_M2_LEN; outPin++){
            for(int inPin = 0; inPin < GPIO_M2_LEN; inPin++){
            	if(inPin == outPin){
            		continue;
            	}else{
                	setIOPin(GPIO_MULTI_SET_2[outPin], 1);
                	if(readIOPin(GPIO_MULTI_SET_2[inPin]) == 1){
                		printf("Pass");
                		pass++;
                	}
                	else{
                		printf("\nM2 out 1, outPin %d and inPin %d Fail\n", outPin, inPin);
                		fail++;
                	}
                	setIOPin(GPIO_MULTI_SET_2[outPin], 0);
                	if(readIOPin(GPIO_MULTI_SET_2[inPin]) == 0){
                		printf("Pass");
                		pass++;
                	}
                	else{
                		printf("\nM2 out 0, outPin %d and inPin %d Fail\n", outPin, inPin);
                		fail++;
                	}
                	readIOPin(GPIO_MULTI_SET_2[outPin]);
            	}
            }
        }
    }

    //GPIO connected to UART
    const net_t* REST_GPIO[] = {
    	&SE86, &SE89
    };
*/
    ////////////////////////////
    //phase 2 - LSDAC & HSADC
    ////////////////////////////

    printf("Starting LSDAC Test\n");

    XGpio_DiscreteWrite(&GPIO1_SPDCTRL, 2, 1000);
	XGpio_DiscreteWrite(&GPIO1_SPDCTRL, 1, 1000);

    XGpio_DiscreteWrite(&GPIO8_CTRL, 1, 0xFE);
    XGpio_DiscreteWrite(&GPIO8_CTRL, 1, 0xF6);

    int LSDAC_voltage_low = 0;
    int LSDAC_voltage_high = 10;
    int LSDAC_voltage_avg = 5;

    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P55_HS_ADC3B);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P33_LS1_DAC06);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P74_LS0_DAC03);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P50_HS_ADC3A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P35_LS0_DAC04);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P51_LS1_DAC03);

    HSADC_Init(3,  'B');
    HSADC_Init(3,  'A');


    for(int run = 0; run < NUM_PASSES; run++){
		LS_DAC_WriteVoltage(&LSDAC0, 3, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 6, LSDAC_voltage_low);
		printf("ADC 3B Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(3, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 3, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 6, LSDAC_voltage_high);
		printf("ADC 3B Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(3, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 3, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 6, LSDAC_voltage_low);
		printf("ADC 3B Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(3, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 3, LSDAC_voltage_avg);
		LS_DAC_WriteVoltage(&LSDAC1, 6, LSDAC_voltage_avg);
		printf("ADC 3B Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(3, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 3, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 6, LSDAC_voltage_high);
		printf("ADC 3B Expected: 10000mV, Received: %d mV\n", HSADC_getVoltage_mV(3, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 3, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 6, LSDAC_voltage_low);

		LS_DAC_WriteVoltage(&LSDAC0, 4, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 3, LSDAC_voltage_low);
		printf("ADC 3A Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(3, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 4, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 3, LSDAC_voltage_high);
		printf("ADC 3A Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(3, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 4, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 3, LSDAC_voltage_low);
		printf("ADC 3A Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(3, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 4, LSDAC_voltage_avg);
		LS_DAC_WriteVoltage(&LSDAC1, 3, LSDAC_voltage_avg);
		printf("ADC 3A Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(3, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 4, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 3, LSDAC_voltage_high);
		printf("ADC 3A Expected: 10000mV, Received: %d mV\n", HSADC_getVoltage_mV(3, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 4, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 3, LSDAC_voltage_low);
    }

    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P33_HS_ADC2B);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P17_LS1_DAC00);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P40_LS0_DAC02);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P51_HS_ADC0A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P6_LS0_DAC06);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P48_LS1_DAC01);

    HSADC_Init(2,  'B');
    HSADC_Init(0,  'A');


    for(int run = 0; run < NUM_PASSES * 100; run++){
		LS_DAC_WriteVoltage(&LSDAC0, 2, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 0, LSDAC_voltage_low);
		printf("ADC 2B Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(2, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 2, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 0, LSDAC_voltage_high);
		printf("ADC 2B Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(2, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 2, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 0, LSDAC_voltage_low);
		printf("ADC 2B Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(2, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 2, LSDAC_voltage_avg);
		LS_DAC_WriteVoltage(&LSDAC1, 0, LSDAC_voltage_avg);
		printf("ADC 2B Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(2, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 2, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 0, LSDAC_voltage_high);
		printf("ADC 2B Expected: 10000mV, Received: %d mV\n", HSADC_getVoltage_mV(2, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 2, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 0, LSDAC_voltage_low);

		LS_DAC_WriteVoltage(&LSDAC0, 6, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 1, LSDAC_voltage_low);
		printf("ADC 0A Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(0, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 6, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 1, LSDAC_voltage_high);
		printf("ADC 0A Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(0, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 6, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 1, LSDAC_voltage_low);
		printf("ADC 0A Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(0, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 6, LSDAC_voltage_avg);
		LS_DAC_WriteVoltage(&LSDAC1, 1, LSDAC_voltage_avg);
		printf("ADC 0A Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(0, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 6, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 1, LSDAC_voltage_high);
		printf("ADC 0A Expected: 10000mV, Received: %d mV\n", HSADC_getVoltage_mV(0, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 6, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 1, LSDAC_voltage_low);
    }


    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P17_HS_ADC1B);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P21_LS1_DAC02);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P10_LS0_DAC01);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P48_HS_ADC1A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P46_LS1_DAC07);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P36_LS0_DAC00);

    HSADC_Init(1,  'B');
    HSADC_Init(1,  'A');


    for(int run = 0; run < NUM_PASSES; run++){
		LS_DAC_WriteVoltage(&LSDAC0, 1, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 2, LSDAC_voltage_low);
		printf("ADC 1B Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(1, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 1, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 2, LSDAC_voltage_high);
		printf("ADC 1B Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(1, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 1, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 2, LSDAC_voltage_low);
		printf("ADC 1B Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(1, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 1, LSDAC_voltage_avg);
		LS_DAC_WriteVoltage(&LSDAC1, 2, LSDAC_voltage_avg);
		printf("ADC 1B Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(1, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 1, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 2, LSDAC_voltage_high);
		printf("ADC 1B Expected: 10000mV, Received: %d mV\n", HSADC_getVoltage_mV(1, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 1, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 2, LSDAC_voltage_low);

		LS_DAC_WriteVoltage(&LSDAC0, 0, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 7, LSDAC_voltage_low);
		printf("ADC 1A Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(1, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 0, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 7, LSDAC_voltage_high);
		printf("ADC 1A Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(1, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 0, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 7, LSDAC_voltage_low);
		printf("ADC 1A Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(1, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 0, LSDAC_voltage_avg);
		LS_DAC_WriteVoltage(&LSDAC1, 7, LSDAC_voltage_avg);
		printf("ADC 1A Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(1, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 0, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 7, LSDAC_voltage_high);
		printf("ADC 1A Expected: 10000mV, Received: %d mV\n", HSADC_getVoltage_mV(1, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 0, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 7, LSDAC_voltage_low);
    }

    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P21_HS_ADC0B);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P3_LS0_DAC07);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P2_LS1_DAC04);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P46_HS_ADC2A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P34_LS0_DAC05);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P32_LS1_DAC05);

    HSADC_Init(0,  'B');
    HSADC_Init(2,  'A');


    for(int run = 0; run < NUM_PASSES; run++){
		LS_DAC_WriteVoltage(&LSDAC0, 7, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 4, LSDAC_voltage_low);
		printf("ADC 0B Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(0, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 7, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 4, LSDAC_voltage_high);
		printf("ADC 0B Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(0, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 7, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 4, LSDAC_voltage_low);
		printf("ADC 0B Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(0, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 7, LSDAC_voltage_avg);
		LS_DAC_WriteVoltage(&LSDAC1, 4, LSDAC_voltage_avg);
		printf("ADC 0B Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(0, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 7, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 4, LSDAC_voltage_high);
		printf("ADC 0B Expected: 10000mV, Received: %d mV\n", HSADC_getVoltage_mV(0, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 7, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 4, LSDAC_voltage_low);

		LS_DAC_WriteVoltage(&LSDAC0, 5, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 5, LSDAC_voltage_low);
		printf("ADC 2A Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(2, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 5, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 5, LSDAC_voltage_high);
		printf("ADC 2A Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(2, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 5, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 5, LSDAC_voltage_low);
		printf("ADC 2A Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(2, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 5, LSDAC_voltage_avg);
		LS_DAC_WriteVoltage(&LSDAC1, 5, LSDAC_voltage_avg);
		printf("ADC 2A Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(2, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 5, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 5, LSDAC_voltage_high);
		printf("ADC 2A Expected: 10000mV, Received: %d mV\n", HSADC_getVoltage_mV(2, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 5, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 5, LSDAC_voltage_low);
    }

	printf("LSDAC and HSADC test End\n");

/*
	///////////////////////////////////////
	//PHASE 3: HSDAC Test
	//////////////////////////////////////

	printf("Begin HSDAC Test\n");

    LSDAC_voltage_low = 0;
    LSDAC_voltage_high = 5;

    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P74_LS0_DAC03);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P35_LS0_DAC04);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P6_LS0_DAC06);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P40_LS0_DAC02);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P36_LS0_DAC00);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P10_LS0_DAC01);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P34_LS0_DAC05);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P3_LS0_DAC07);

    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P55_HS_ADC3B);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P33_HS_DAC2A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P50_HS_ADC3A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P51_HS_DAC0B);

    HSADC_Init(3,  'B');
    HSADC_Init(3,  'A');

    HSDAC_Init(2,  1, 0);
    HSDAC_Init(0,  2, 0);

    for(int run = 0; run < NUM_PASSES; run++){
		LS_DAC_WriteVoltage(&LSDAC0, 3, LSDAC_voltage_low);
		HSDAC_setVoltage(2,  1, 0);
		printf("ADC 3B Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(3, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 3, LSDAC_voltage_high);
		HSDAC_setVoltage(2,  1, -5);
		printf("ADC 3B Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(3, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 3, LSDAC_voltage_high);
		HSDAC_setVoltage(2,  1, 5);
		printf("ADC 3B Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(3, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 3, LSDAC_voltage_low);

		LS_DAC_WriteVoltage(&LSDAC0, 4, LSDAC_voltage_low);
		HSDAC_setVoltage(0,  2, 0);
		printf("ADC 3A Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(3, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 4, LSDAC_voltage_high);
		HSDAC_setVoltage(0,  2, -5);
		printf("ADC 3A Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(3, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 4, LSDAC_voltage_high);
		HSDAC_setVoltage(0,  2, 5);
		printf("ADC 3A Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(3, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 4, LSDAC_voltage_low);
		HSDAC_setVoltage(2,  1, 0);
		HSDAC_setVoltage(0,  2, 0);
    }

    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P33_HS_ADC2B);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P17_HS_DAC1A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P51_HS_ADC0A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P48_HS_DAC1B);

    HSADC_Init(2,  'B');
    HSADC_Init(0,  'A');

    HSDAC_Init(1,  1, 0);
    HSDAC_Init(1,  2, 0);

    for(int run = 0; run < NUM_PASSES; run++){
		LS_DAC_WriteVoltage(&LSDAC0, 2, LSDAC_voltage_low);
		HSDAC_setVoltage(1,  1, 0);
		printf("ADC 2B Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(2, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 2, LSDAC_voltage_high);
		HSDAC_setVoltage(1,  1, -5);
		printf("ADC 2B Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(2, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 2, LSDAC_voltage_high);
		HSDAC_setVoltage(1,  1, 5);
		printf("ADC 2B Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(2, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 2, LSDAC_voltage_low);

		LS_DAC_WriteVoltage(&LSDAC0, 6, LSDAC_voltage_low);
		HSDAC_setVoltage(1,  2, 0);
		printf("ADC 0A Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(0, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 6, LSDAC_voltage_high);
		HSDAC_setVoltage(1,  2, -5);
		printf("ADC 0A Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(0, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 6, LSDAC_voltage_high);
		HSDAC_setVoltage(1,  2, 5);
		printf("ADC 0A Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(0, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 6, LSDAC_voltage_low);
		HSDAC_setVoltage(1,  1, 0);
		HSDAC_setVoltage(1,  2, 0);
    }

    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P17_HS_ADC1B);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P21_HS_DAC0A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P48_HS_ADC1A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P46_HS_DAC2B);

    HSADC_Init(1,  'B');
    HSADC_Init(1,  'A');

    HSDAC_Init(0,  1, 0);
    HSDAC_Init(2,  2, 0);


    for(int run = 0; run < NUM_PASSES; run++){
		LS_DAC_WriteVoltage(&LSDAC0, 1, LSDAC_voltage_low);
		HSDAC_setVoltage(0,  1, 0);
		printf("ADC 1B Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(1, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 1, LSDAC_voltage_high);
		HSDAC_setVoltage(0,  1, -5);
		printf("ADC 1B Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(1, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 1, LSDAC_voltage_high);
		HSDAC_setVoltage(0,  1, 5);
		printf("ADC 1B Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(1, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 1, LSDAC_voltage_low);

		LS_DAC_WriteVoltage(&LSDAC0, 0, LSDAC_voltage_low);
		HSDAC_setVoltage(2,  2, 0);
		printf("ADC 1A Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(1, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 0, LSDAC_voltage_high);
		HSDAC_setVoltage(2,  2, -5);
		printf("ADC 1A Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(1, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 0, LSDAC_voltage_high);
		HSDAC_setVoltage(2,  2, 5);
		printf("ADC 1A Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(1, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 0, LSDAC_voltage_low);
		HSDAC_setVoltage(0,  1, 0);
		HSDAC_setVoltage(2,  2, 0);
    }

    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P21_HS_ADC0B);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P2_HS_DAC3A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P46_HS_ADC2A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P32_HS_DAC3B);

    HSADC_Init(0,  'B');
    HSADC_Init(2,  'A');

    HSDAC_Init(3,  1, 0);
    HSDAC_Init(3,  2, 0);


    for(int run = 0; run < NUM_PASSES; run++){
		LS_DAC_WriteVoltage(&LSDAC0, 7, LSDAC_voltage_low);
		HSDAC_setVoltage(3,  1, 0);
		printf("ADC 0B Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(0, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 7, LSDAC_voltage_high);
		HSDAC_setVoltage(3,  1, -5);
		printf("ADC 0B Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(0, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 7, LSDAC_voltage_high);
		HSDAC_setVoltage(3,  1, 5);
		printf("ADC 0B Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(0, 'B'));
		LS_DAC_WriteVoltage(&LSDAC0, 7, LSDAC_voltage_low);

		LS_DAC_WriteVoltage(&LSDAC0, 5, LSDAC_voltage_low);
		HSDAC_setVoltage(3,  2, 0);
		printf("ADC 2A Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(2, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 5, LSDAC_voltage_high);
		HSDAC_setVoltage(3,  2, -5);
		printf("ADC 2A Expected: 0mV, Received: %d mV\n", HSADC_getVoltage_mV(2, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 5, LSDAC_voltage_high);
		HSDAC_setVoltage(3,  2, 5);
		printf("ADC 2A Expected: 5000mV, Received: %d mV\n", HSADC_getVoltage_mV(2, 'A'));
		LS_DAC_WriteVoltage(&LSDAC0, 5, LSDAC_voltage_low);
		HSDAC_setVoltage(3,  1, 0);
		HSDAC_setVoltage(3,  2, 0);
    }

*/



    printf("Test Mode 2 End.\n");
    sleep(1);
	// Test Mode 2 End
	////////////////////////////////////////////////////////////////////
}
