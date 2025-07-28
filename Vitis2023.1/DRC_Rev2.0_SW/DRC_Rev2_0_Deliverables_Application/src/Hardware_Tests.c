#include "Hardware_Tests.h"

//Standard C includes
#include <stdio.h>
#include <inttypes.h>
#include <stdarg.h>
#include <string.h>
#include <stdbool.h>

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

#define NUM_PASSES 5

uint8_t verbosity = 0;

int LSDAC_voltage_low = 0;
int LSDAC_voltage_high = 10;
int LSDAC_voltage_avg = 5;

void printBIT(const char* format, ...){
	if(verbosity >= 0){
		va_list args;
		va_start(args, format);
		vprintf(format, args);
		va_end(args);
	}
}

void printATP(const char* format, ...){
	if(verbosity >= 1){
		va_list args;
		va_start(args, format);
		vprintf(format, args);
		va_end(args);
	}
}

void printDEBUG(const char* format, ...){
	if(verbosity >= 2){
		va_list args;
		va_start(args, format);
		vprintf(format, args);
		va_end(args);
	}
}


void TestMode(uint8_t verbosityLevel){

	verbosity = verbosityLevel;

	//clearTerminal();

    int pass = 1;
    int fail = 0;

    printATP("IO LOOPBACK TEST BEGIN\n");
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
        		printDEBUG("RUN %d: IO SINGLE SET %d Pass\n", run, pin);
        	}
        	else{
        		printDEBUG("RUN %d: IO SINGLE SET %d Fail\n", run, pin);
        		fail++;
        	}
        	setIOPin(GPIO_SINGLE_SET_2[pin], 0);
        	if(readIOPin(GPIO_SINGLE_SET_1[pin]) == 0){
        		printDEBUG("RUN %d: IO SINGLE SET %d Pass\n", run, pin);
        	}
        	else{
        		printDEBUG("RUN %d: IO SINGLE SET %d Fail\n", run, pin);
        		fail++;
        	}
        }
    }
    for(int run = 0; run < NUM_PASSES; run++){
        for(int pin = 0; pin < GPIO_S2_LEN; pin++){
        	readIOPin(GPIO_SINGLE_SET_2[pin]);
        	setIOPin(GPIO_SINGLE_SET_1[pin], 1);
        	if(readIOPin(GPIO_SINGLE_SET_2[pin]) == 1){
        		printDEBUG("RUN %d: IO SINGLE SET %d Pass\n", run, pin);
        	}
        	else{
        		printDEBUG("RUN %d: IO SINGLE SET %d Fail\n", run, pin);
        		fail++;
        	}
        	setIOPin(GPIO_SINGLE_SET_1[pin], 0);
        	if(readIOPin(GPIO_SINGLE_SET_2[pin]) == 0){
        		printDEBUG("RUN %d: IO SINGLE SET %d Pass\n", run, pin);
        	}
        	else{
        		printDEBUG("RUN %d: IO SINGLE SET %d Fail\n", run, pin);
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
                		printDEBUG("RUN %d: M1 out 1, outPin %d and inPin %d Pass\n", run, outPin, inPin);
                	}
                	else{
                		printDEBUG("RUN %d: M1 out 1, outPin %d and inPin %d Fail\n", run, outPin, inPin);
                		fail++;
                	}
                	setIOPin(GPIO_MULTI_SET_1[outPin], 0);
                	if(readIOPin(GPIO_MULTI_SET_1[inPin]) == 0){
                		printDEBUG("RUN %d: M1 out 0, outPin %d and inPin %d Pass\n", run, outPin, inPin);
                	}
                	else{
                		printDEBUG("RUN %d: M1 out 0, outPin %d and inPin %d Fail\n", run, outPin, inPin);
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
                		printDEBUG("RUN %d: M2 out 1, outPin %d and inPin %d Pass\n", run, outPin, inPin);
                	}
                	else{
                		printDEBUG("RUN %d: M2 out 1, outPin %d and inPin %d Fail\n", run, outPin, inPin);
                		fail++;
                	}
                	setIOPin(GPIO_MULTI_SET_2[outPin], 0);
                	if(readIOPin(GPIO_MULTI_SET_2[inPin]) == 0){
                		printDEBUG("RUN %d: M2 out 0, outPin %d and inPin %d Pass\n", run, outPin, inPin);
                	}
                	else{
                		printDEBUG("RUN %d: M2 out 0, outPin %d and inPin %d Fail\n", run, outPin, inPin);
                		fail++;
                	}
                	readIOPin(GPIO_MULTI_SET_2[outPin]);
            	}
            }
        }
    }

    printATP("IO LOOPBACK TEST END\n");
    printATP("Result: %s\n", fail == 0 ? "PASS" : "FAIL");

    ////////////////////////////
    //phase 2 - LSDAC & HSADC
    ////////////////////////////

    printATP("Starting LSDAC/HSADC Test\n");

//    XGpio_DiscreteWrite(&GPIO1_SPDCTRL, 2, 1000);
//	XGpio_DiscreteWrite(&GPIO1_SPDCTRL, 1, 1000);
//
//    XGpio_DiscreteWrite(&GPIO8_CTRL, 1, 0xFE);
//    XGpio_DiscreteWrite(&GPIO8_CTRL, 1, 0xF6);


    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P55_HS_ADC3B);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P33_LS1_DAC06);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P74_LS0_DAC03);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P50_HS_ADC3A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P35_LS0_DAC04);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P51_LS1_DAC03);

    HSADC_Init(3,  'B');
    HSADC_Init(3,  'A');

    uint8_t LSDAC_HSADC_PASS_0A = 0x00;
    uint8_t LSDAC_HSADC_PASS_0B = 0x00;
    uint8_t LSDAC_HSADC_PASS_1A = 0x00;
    uint8_t LSDAC_HSADC_PASS_1B = 0x00;
    uint8_t LSDAC_HSADC_PASS_2A = 0x00;
    uint8_t LSDAC_HSADC_PASS_2B = 0x00;
    uint8_t LSDAC_HSADC_PASS_3A = 0x00;
    uint8_t LSDAC_HSADC_PASS_3B = 0x00;

    for(int run = 0; run < NUM_PASSES; run++){
		LS_DAC_WriteVoltage(&LSDAC0, 3, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 6, LSDAC_voltage_low);
		usleep(100000);

		int val = HSADC_getVoltage_mV(3, 'B');

		printDEBUG("RUN %d: ADC 3B Expected: 0mV, Received: %d mV\n", run, val);

		if(val < 1000){
			LSDAC_HSADC_PASS_3B |= 1<<0;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 3, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 6, LSDAC_voltage_high);
		usleep(100000);

		val = HSADC_getVoltage_mV(3, 'B');

		printDEBUG("RUN %d: ADC 3B Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_3B |= 1<<1;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 3, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 6, LSDAC_voltage_low);
		usleep(100000);

		val = HSADC_getVoltage_mV(3, 'B');

		printDEBUG("RUN %d: ADC 3B Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_3B |= 1<<2;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 3, LSDAC_voltage_avg);
		LS_DAC_WriteVoltage(&LSDAC1, 6, LSDAC_voltage_avg);
		usleep(100000);

		val = HSADC_getVoltage_mV(3, 'B');

		printDEBUG("RUN %d: ADC 3B Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_3B |= 1<<3;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 3, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 6, LSDAC_voltage_high);
		usleep(100000);

		val = HSADC_getVoltage_mV(3, 'B');

		printDEBUG("RUN %d: ADC 3B Expected: 10000mV, Received: %d mV\n", run, val);

		if(val > 6000){
			LSDAC_HSADC_PASS_3B |= 1<<4;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 3, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 6, LSDAC_voltage_low);

		LS_DAC_WriteVoltage(&LSDAC0, 4, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 3, LSDAC_voltage_low);
		usleep(100000);

		val = HSADC_getVoltage_mV(3, 'A');

		printDEBUG("RUN %d: ADC 3A Expected: 0mV, Received: %d mV\n", run, val);

		if(val < 1000){
			LSDAC_HSADC_PASS_3A |= 1<<0;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 4, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 3, LSDAC_voltage_high);
		usleep(100000);

		val = HSADC_getVoltage_mV(3, 'A');

		printDEBUG("RUN %d: ADC 3A Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_3A |= 1<<1;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 4, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 3, LSDAC_voltage_low);
		usleep(100000);

		val = HSADC_getVoltage_mV(3, 'A');

		printDEBUG("RUN %d: ADC 3A Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_3A |= 1<<2;
		}
		LS_DAC_WriteVoltage(&LSDAC0, 4, LSDAC_voltage_avg);
		LS_DAC_WriteVoltage(&LSDAC1, 3, LSDAC_voltage_avg);
		usleep(100000);

		val = HSADC_getVoltage_mV(3, 'A');

		printDEBUG("RUN %d: ADC 3A Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_3A |= 1<<3;
		}
		LS_DAC_WriteVoltage(&LSDAC0, 4, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 3, LSDAC_voltage_high);
		usleep(100000);

		val = HSADC_getVoltage_mV(3, 'A');

		printDEBUG("RUN %d: ADC 3A Expected: 10000mV, Received: %d mV\n", run, val);

		if(val > 6000){
			LSDAC_HSADC_PASS_3A |= 1<<4;
		}
		LS_DAC_WriteVoltage(&LSDAC0, 4, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 3, LSDAC_voltage_low);
    }
	printATP("Channel 3A : %s\n", LSDAC_HSADC_PASS_3A == 0x1F ? "PASS" : "FAIL");
	printATP("Channel 3B : %s\n", LSDAC_HSADC_PASS_3B == 0x1F ? "PASS" : "FAIL");

    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P33_HS_ADC2B);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P17_LS1_DAC00);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P40_LS0_DAC02);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P51_HS_ADC0A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P6_LS0_DAC06);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P48_LS1_DAC01);

    HSADC_Init(2,  'B');
    HSADC_Init(0,  'A');


    for(int run = 0; run < NUM_PASSES; run++){
		LS_DAC_WriteVoltage(&LSDAC0, 2, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 0, LSDAC_voltage_low);
		usleep(100000);

		int val = HSADC_getVoltage_mV(2, 'B');

		printDEBUG("RUN %d: ADC 2B Expected: 0mV, Received: %d mV\n", run, val);

		if(val < 1000){
			LSDAC_HSADC_PASS_2B |= 1<<0;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 2, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 0, LSDAC_voltage_high);
		usleep(100000);

		val = HSADC_getVoltage_mV(2, 'B');

		printDEBUG("RUN %d: ADC 2B Expected: 800mV, Received: %d mV\n", run, val);

		if(val > 500 && val < 7500){
			LSDAC_HSADC_PASS_2B |= 1<<1;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 2, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 0, LSDAC_voltage_low);
		usleep(100000);

		val = HSADC_getVoltage_mV(2, 'B');

		printDEBUG("RUN %d: ADC 2B Expected: 2500mV, Received: %d mV\n", run, val);

		if(val > 1500 && val < 7500){
			LSDAC_HSADC_PASS_2B |= 1<<2;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 2, LSDAC_voltage_avg);
		LS_DAC_WriteVoltage(&LSDAC1, 0, LSDAC_voltage_avg);
		usleep(100000);

		val = HSADC_getVoltage_mV(2, 'B');

		printDEBUG("RUN %d: ADC 2B Expected: 2500mV, Received: %d mV\n", run, val);

		if(val > 1500 && val < 7500){
			LSDAC_HSADC_PASS_2B |= 1<<3;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 2, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 0, LSDAC_voltage_high);
		usleep(100000);

		val = HSADC_getVoltage_mV(2, 'B');

		printDEBUG("RUN %d: ADC 2B Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500){
			LSDAC_HSADC_PASS_2B |= 1<<4;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 2, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 0, LSDAC_voltage_low);
		usleep(100000);
		LS_DAC_WriteVoltage(&LSDAC0, 6, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 1, LSDAC_voltage_low);
		usleep(100000);

		val = HSADC_getVoltage_mV(0, 'A');

		printDEBUG("RUN %d: ADC 0A Expected: 0mV, Received: %d mV\n", run, val);

		if(val < 1000){
			LSDAC_HSADC_PASS_0A |= 1<<0;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 6, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 1, LSDAC_voltage_high);
		usleep(100000);

		val = HSADC_getVoltage_mV(0, 'A');

		printDEBUG("RUN %d: ADC 0A Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_0A |= 1<<1;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 6, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 1, LSDAC_voltage_low);
		usleep(100000);

		val = HSADC_getVoltage_mV(0, 'A');

		printDEBUG("RUN %d: ADC 0A Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_0A |= 1<<2;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 6, LSDAC_voltage_avg);
		LS_DAC_WriteVoltage(&LSDAC1, 1, LSDAC_voltage_avg);
		usleep(100000);

		val = HSADC_getVoltage_mV(0, 'A');

		printDEBUG("RUN %d: ADC 0A Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_0A |= 1<<3;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 6, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 1, LSDAC_voltage_high);
		usleep(100000);

		val = HSADC_getVoltage_mV(0, 'A');

		printDEBUG("RUN %d: ADC 0A Expected: 10000mV, Received: %d mV\n", run, val);

		if(val > 6000){
			LSDAC_HSADC_PASS_0A |= 1<<4;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 6, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 1, LSDAC_voltage_low);
    }
	printATP("Channel 0A : %s\n", LSDAC_HSADC_PASS_0A == 0x1F ? "PASS" : "FAIL");
	printATP("Channel 2B : %s\n", LSDAC_HSADC_PASS_2B == 0x1F ? "PASS" : "FAIL");


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
		usleep(100000);

		int val = HSADC_getVoltage_mV(1, 'B');

		printDEBUG("RUN %d: ADC 1B Expected: 0mV, Received: %d mV\n", run, val);

		if(val < 1000){
			LSDAC_HSADC_PASS_1B |= 1<<0;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 1, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 2, LSDAC_voltage_high);
		usleep(100000);

		val = HSADC_getVoltage_mV(1, 'B');

		printDEBUG("RUN %d: ADC 1B Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_1B |= 1<<1;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 1, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 2, LSDAC_voltage_low);
		usleep(100000);

		val = HSADC_getVoltage_mV(1, 'B');

		printDEBUG("RUN %d: ADC 1B Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_1B |= 1<<2;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 1, LSDAC_voltage_avg);
		LS_DAC_WriteVoltage(&LSDAC1, 2, LSDAC_voltage_avg);
		usleep(100000);

		val = HSADC_getVoltage_mV(1, 'B');

		printDEBUG("RUN %d: ADC 1B Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_1B |= 1<<3;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 1, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 2, LSDAC_voltage_high);
		usleep(100000);

		val = HSADC_getVoltage_mV(1, 'B');

		printDEBUG("RUN %d: ADC 1B Expected: 10000mV, Received: %d mV\n", run, val);

		if(val > 6000){
			LSDAC_HSADC_PASS_1B |= 1<<4;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 1, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 2, LSDAC_voltage_low);

		LS_DAC_WriteVoltage(&LSDAC0, 0, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 7, LSDAC_voltage_low);
		usleep(100000);

		val = HSADC_getVoltage_mV(1, 'A');

		printDEBUG("RUN %d: ADC 1A Expected: 0mV, Received: %d mV\n", run, val);

		if(val < 1000){
			LSDAC_HSADC_PASS_1A |= 1<<0;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 0, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 7, LSDAC_voltage_high);
		usleep(100000);

		val = HSADC_getVoltage_mV(1, 'A');

		printDEBUG("RUN %d: ADC 1A Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_1A |= 1<<1;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 0, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 7, LSDAC_voltage_low);
		usleep(100000);

		val = HSADC_getVoltage_mV(1, 'A');

		printDEBUG("RUN %d: ADC 1A Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_1A |= 1<<2;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 0, LSDAC_voltage_avg);
		LS_DAC_WriteVoltage(&LSDAC1, 7, LSDAC_voltage_avg);
		usleep(100000);

		val = HSADC_getVoltage_mV(1, 'A');

		printDEBUG("RUN %d: ADC 1A Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_1A |= 1<<3;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 0, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 7, LSDAC_voltage_high);
		usleep(100000);

		val = HSADC_getVoltage_mV(1, 'A');

		printDEBUG("RUN %d: ADC 1A Expected: 10000mV, Received: %d mV\n", run, val);

		if(val > 6000){
			LSDAC_HSADC_PASS_1A |= 1<<4;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 0, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 7, LSDAC_voltage_low);
    }
	printATP("Channel 1A : %s\n", LSDAC_HSADC_PASS_1A == 0x1F ? "PASS" : "FAIL");
	printATP("Channel 1B : %s\n", LSDAC_HSADC_PASS_1B == 0x1F ? "PASS" : "FAIL");

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
		usleep(100000);

		int val = HSADC_getVoltage_mV(0, 'B');

		printDEBUG("RUN %d: ADC 0B Expected: 0mV, Received: %d mV\n", run, val);

		if(val < 1000){
			LSDAC_HSADC_PASS_0B |= 1<<0;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 7, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 4, LSDAC_voltage_high);
		usleep(100000);

		val = HSADC_getVoltage_mV(0, 'B');

		printDEBUG("RUN %d: ADC 0B Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_0B |= 1<<1;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 7, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 4, LSDAC_voltage_low);
		usleep(100000);

		val = HSADC_getVoltage_mV(0, 'B');

		printDEBUG("RUN %d: ADC 0B Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_0B |= 1<<2;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 7, LSDAC_voltage_avg);
		LS_DAC_WriteVoltage(&LSDAC1, 4, LSDAC_voltage_avg);
		usleep(100000);

		val = HSADC_getVoltage_mV(0, 'B');

		printDEBUG("RUN %d: ADC 0B Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_0B |= 1<<3;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 7, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 4, LSDAC_voltage_high);
		usleep(100000);

		val = HSADC_getVoltage_mV(0, 'B');

		printDEBUG("RUN %d: ADC 0B Expected: 10000mV, Received: %d mV\n", run, val);

		if(val > 6000){
			LSDAC_HSADC_PASS_0B |= 1<<4;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 7, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 4, LSDAC_voltage_low);

		LS_DAC_WriteVoltage(&LSDAC0, 5, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 5, LSDAC_voltage_low);
		usleep(100000);

		val = HSADC_getVoltage_mV(2, 'A');

		printDEBUG("RUN %d: ADC 2A Expected: 0mV, Received: %d mV\n", run, val);

		if(val < 1000){
			LSDAC_HSADC_PASS_2A |= 1<<0;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 5, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 5, LSDAC_voltage_high);
		usleep(100000);

		val = HSADC_getVoltage_mV(2, 'A');

		printDEBUG("RUN %d: ADC 2A Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_2A |= 1<<1;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 5, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 5, LSDAC_voltage_low);
		usleep(100000);

		val = HSADC_getVoltage_mV(2, 'A');

		printDEBUG("RUN %d: ADC 2A Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_2A |= 1<<2;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 5, LSDAC_voltage_avg);
		LS_DAC_WriteVoltage(&LSDAC1, 5, LSDAC_voltage_avg);
		usleep(100000);

		val = HSADC_getVoltage_mV(2, 'A');

		printDEBUG("RUN %d: ADC 2A Expected: 5000mV, Received: %d mV\n", run, val);

		if(val > 2500 && val < 7500){
			LSDAC_HSADC_PASS_2A |= 1<<3;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 5, LSDAC_voltage_high);
		LS_DAC_WriteVoltage(&LSDAC1, 5, LSDAC_voltage_high);
		usleep(100000);

		val = HSADC_getVoltage_mV(2, 'A');

		printDEBUG("RUN %d: ADC 2A Expected: 10000mV, Received: %d mV\n", run, val);

		if(val > 6000){
			LSDAC_HSADC_PASS_2A |= 1<<4;
		}

		LS_DAC_WriteVoltage(&LSDAC0, 5, LSDAC_voltage_low);
		LS_DAC_WriteVoltage(&LSDAC1, 5, LSDAC_voltage_low);
    }
	printATP("Channel 0B : %s\n", LSDAC_HSADC_PASS_0B == 0x1F ? "PASS" : "FAIL");
	printATP("Channel 2A : %s\n", LSDAC_HSADC_PASS_2A == 0x1F ? "PASS" : "FAIL");

	if(	LSDAC_HSADC_PASS_0B != 0x1F ||
		LSDAC_HSADC_PASS_1A != 0x1F ||
		LSDAC_HSADC_PASS_1B != 0x1F ||
		LSDAC_HSADC_PASS_2A != 0x1F ||
		LSDAC_HSADC_PASS_2B != 0x1F ||
		LSDAC_HSADC_PASS_3A != 0x1F ||
		LSDAC_HSADC_PASS_3B != 0x1F)
	{
		fail += 1;
		pass = 0;
	    printATP("LSDAC and HSADC test End -> Result: FAIL\n");
	}
	else{
	    printATP("LSDAC and HSADC test End -> Result: PASS\n");
	}


	///////////////////////////////////////
	//PHASE 3: HSDAC Test
	//////////////////////////////////////

	printATP("Begin HSDAC Test\n");

	uint16_t HSDAC_PASS = 0x0000;

    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P74_LS0_DAC03);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P35_LS0_DAC04);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P6_LS0_DAC06);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P40_LS0_DAC02);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P36_LS0_DAC00);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P10_LS0_DAC01);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P34_LS0_DAC05);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P3_LS0_DAC07);

	LS_DAC_WriteVoltage(&LSDAC0, 1, 5);
	LS_DAC_WriteVoltage(&LSDAC0, 0, 5);

	LS_DAC_WriteVoltage(&LSDAC0, 3, 5);
	LS_DAC_WriteVoltage(&LSDAC0, 4, 5);

	LS_DAC_WriteVoltage(&LSDAC0, 2, 5);
	LS_DAC_WriteVoltage(&LSDAC0, 6, 5);

	LS_DAC_WriteVoltage(&LSDAC0, 7, 5);
	LS_DAC_WriteVoltage(&LSDAC0, 5, 5);

    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P21_HS_ADC0B);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P2_HS_DAC3A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P46_HS_ADC2A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P32_HS_DAC3B);


	//Reset AFE7222 Converters
   XGpio_DiscreteWrite(&GPIO8_CTRL, 1, 0xFE);
   XGpio_DiscreteWrite(&GPIO8_CTRL, 1, 0xF6);

	usleep(100000);
    HSADC_Init(0,  'B');
	usleep(100000);
    HSADC_Init(2,  'A');

	usleep(100000);
    HSDAC_Init(3,  1, 0);
	usleep(100000);
    HSDAC_Init(3,  2, 0);
	usleep(100000);


    if(verbosity ==3){
		for(int mV = -5000; mV < 5000; mV += 100){
			HSDAC_setVoltage(3,  1, mV);
			usleep(100000);
			printDEBUG("ADC 0B Received: %d mV, DAC 3A Write %d mV\n", HSADC_getVoltage_mV(0, 'B'), mV);
		}

		for(int mV = -5000; mV < 5000; mV += 100){
			HSDAC_setVoltage(3,  2, -1 * mV);
			usleep(100000);
			printDEBUG("ADC 2A Received: %d mV, DAC 3B Write %d mV\n", HSADC_getVoltage_mV(2, 'A'), -1 * mV);
		}
    }

    for(int run = 0; run < NUM_PASSES; run++){
		HSDAC_setVoltage(3,  1, -5000);
		usleep(100000);

		int sum = 0;

		for(int i = 0; i < 10; i++){
			uint32_t val = HSADC_getVoltage_mV(0, 'B');
			printDEBUG("RUN %d: ADC 0B Expected: 0mV, Received: %d mV\n", run, val);
			sum += val;
			usleep(100000);
		}

		int val = sum / 10;

		if (val < 2500){
			HSDAC_PASS |= 1 << 0;
		}
		sum = 0;

		HSDAC_setVoltage(3,  1, 5000);
		usleep(100000);

		for(int i = 0; i < 10; i++){
			uint32_t val = HSADC_getVoltage_mV(0, 'B');
			printDEBUG("RUN %d: ADC 0B Expected: 5000mV, Received: %d mV\n", run, val);
			sum += val;
			usleep(100000);
		}

		val = sum / 10;

		if (val > 2500){
			HSDAC_PASS |= 1 << 1;
		}
		sum = 0;

		HSDAC_setVoltage(3,  1, 0);

		HSDAC_setVoltage(3,  2, -5000);
		usleep(100000);

		for(int i = 0; i < 10; i++){
			uint32_t val = HSADC_getVoltage_mV(2, 'A');
			printDEBUG("RUN %d: ADC 2A Expected: 0mV, Received: %d mV\n", run, val);
			sum += val;
		}

		val = sum / 10;

		if (val < 2500){
			HSDAC_PASS |= 1 << 2;
		}
		sum = 0;

		HSDAC_setVoltage(3,  2, 5000);
		usleep(100000);

		for(int i = 0; i < 10; i++){
			uint32_t val = HSADC_getVoltage_mV(2, 'A');
			printDEBUG("RUN %d: ADC 2A Expected: 5000mV, Received: %d mV\n", run, val);
			sum += val;
		}

		val = sum / 10;

		if (val > 2500){
			HSDAC_PASS |= 1 << 3;
		}
		sum = 0;
		HSDAC_setVoltage(3,  2, 0);
    }

    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P17_HS_ADC1B);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P21_HS_DAC0A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P48_HS_ADC1A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P46_HS_DAC2B);


	//Reset AFE7222 Converters
   XGpio_DiscreteWrite(&GPIO8_CTRL, 1, 0xFE);
   XGpio_DiscreteWrite(&GPIO8_CTRL, 1, 0xF6);

	usleep(100000);
    HSADC_Init(1,  'B');
	usleep(100000);
    HSADC_Init(1,  'A');

	usleep(100000);
    HSDAC_Init(0,  1, 0);
	usleep(100000);
    HSDAC_Init(2,  2, 0);
	usleep(100000);


    if(verbosity ==3){
		for(int mV = -5000; mV < 5000; mV += 100){
			HSDAC_setVoltage(0,  1, mV);
			usleep(100000);
			printDEBUG("ADC 1B Received: %d mV, DAC 0A Write %d mV\n", HSADC_getVoltage_mV(1, 'B'), mV);
		}

		for(int mV = -5000; mV < 5000; mV += 100){
			HSDAC_setVoltage(2,  2, -1 * mV);
			usleep(100000);
			printDEBUG("ADC 1A Received: %d mV, DAC 2B Write %d mV\n", HSADC_getVoltage_mV(1, 'A'), -1 * mV);
		}
    }

	usleep(100000);
    for(int run = 0; run < NUM_PASSES; run++){
		HSDAC_setVoltage(0,  1, -5000);
		usleep(100000);

		int sum = 0;
		for(int i = 0; i < 10; i++){
			uint32_t val = HSADC_getVoltage_mV(1, 'B');
			printDEBUG("RUN %d: ADC 1B Expected: 0mV, Received: %d mV\n", run, val);
			sum += val;
		}

		int val = sum / 10;

		if (val < 2500){
			HSDAC_PASS |= 1 << 4;
		}
		sum = 0;
		HSDAC_setVoltage(0,  1, 5000);
		usleep(100000);

		for(int i = 0; i < 10; i++){
			uint32_t val = HSADC_getVoltage_mV(1, 'B');
			printDEBUG("RUN %d: ADC 1B Expected: 5000mV, Received: %d mV\n", run, val);
			sum += val;
		}

		val = sum / 10;

		if (val > 2500){
			HSDAC_PASS |= 1 << 5;
		}
		sum = 0;
		HSDAC_setVoltage(0,  1, 0);

		HSDAC_setVoltage(2,  2, -5000);
		usleep(100000);

		for(int i = 0; i < 10; i++){
			uint32_t val = HSADC_getVoltage_mV(1, 'A');
			printDEBUG("RUN %d: ADC 1A Expected: 0mV, Received: %d mV\n", run, val);
			sum += val;
		}

		val = sum / 10;

		if (val < 2500){
			HSDAC_PASS |= 1 << 6;
		}
		sum = 0;
		HSDAC_setVoltage(2,  2, 5000);
		usleep(100000);

		for(int i = 0; i < 10; i++){
			uint32_t val = HSADC_getVoltage_mV(2, 'A');
			printDEBUG("RUN %d: ADC 1A Expected: 5000mV, Received: %d mV\n", run, val);
			sum += val;
		}

		val = sum / 10;

		if (val > 2500){
			HSDAC_PASS |= 1 << 7;
		}
		sum = 0;
		HSDAC_setVoltage(2,  2, 0);
    }

    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P55_HS_ADC3B);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P33_HS_DAC2A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P50_HS_ADC3A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P51_HS_DAC0B);


	//Reset AFE7222 Converters
   XGpio_DiscreteWrite(&GPIO8_CTRL, 1, 0xFE);
   XGpio_DiscreteWrite(&GPIO8_CTRL, 1, 0xF6);

	usleep(100000);
    HSADC_Init(3,  'B');
	usleep(100000);
    HSADC_Init(3,  'A');

	usleep(100000);
    HSDAC_Init(2, 1, 0);
	usleep(100000);
    HSDAC_Init(0, 2, 0);
	usleep(100000);


    if(verbosity ==3){
		for(int mV = -5000; mV < 5000; mV += 100){
			HSDAC_setVoltage(2,  1, mV);
			usleep(100000);
			printDEBUG("ADC 3B Received: %d mV, DAC 2A Write %d mV\n", HSADC_getVoltage_mV(3, 'B'), mV);
		}

		for(int mV = -5000; mV < 5000; mV += 100){
			HSDAC_setVoltage(0,  2, -1 * mV);
			usleep(100000);
			printDEBUG("ADC 3A Received: %d mV, DAC 0B Write %d mV\n", HSADC_getVoltage_mV(3, 'A'), -1 * mV);
		}
    }

    for(int run = 0; run < NUM_PASSES; run++){
		HSDAC_setVoltage(2,  1, -5000);
		usleep(100000);

		int sum = 0;

		for(int i = 0; i < 10; i++){
			uint32_t val = HSADC_getVoltage_mV(3, 'B');
			printDEBUG("RUN %d: ADC 3B Expected: 0mV, Received: %d mV\n", run, val);
			sum += val;
		}

		int val = sum / 10;

		if (val < 2500){
			HSDAC_PASS |= 1 << 8;
		}
		sum = 0;
		HSDAC_setVoltage(2,  1, 5000);
		usleep(100000);

		for(int i = 0; i < 10; i++){
			uint32_t val = HSADC_getVoltage_mV(3, 'B');
			printDEBUG("RUN %d: ADC 3B Expected: 5000mV, Received: %d mV\n", run, val);
			sum += val;
		}

		val = sum / 10;

		if (val > 2500){
			HSDAC_PASS |= 1 << 9;
		}
		sum = 0;
		HSDAC_setVoltage(2,  1, 0);

		HSDAC_setVoltage(0,  2, -5000);
		usleep(100000);

		for(int i = 0; i < 10; i++){
			uint32_t val = HSADC_getVoltage_mV(3, 'A');
			printDEBUG("RUN %d: ADC 3A Expected: 0mV, Received: %d mV\n", run, val);
			sum += val;
		}

		val = sum / 10;

		if (val < 2500){
			HSDAC_PASS |= 1 << 10;
		}
		sum = 0;
		HSDAC_setVoltage(0,  2, 5000);
		usleep(100000);

		for(int i = 0; i < 10; i++){
			uint32_t val = HSADC_getVoltage_mV(2, 'A');
			printDEBUG("RUN %d: ADC 3A Expected: 5000mV, Received: %d mV\n", run, val);
			sum += val;
		}

		val = sum / 10;

		if (val > 2500){
			HSDAC_PASS |= 1 << 11;
		}
		sum = 0;
		HSDAC_setVoltage(0,  2, 0);
    }

    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P33_HS_ADC2B);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P17_HS_DAC1A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P51_HS_ADC0A);
    IOEXP_Path_Select(&IIC0_IOEXP, IOEXP0_ADDRESS, P48_HS_DAC1B);


	//Reset AFE7222 Converters
   XGpio_DiscreteWrite(&GPIO8_CTRL, 1, 0xFE);
   XGpio_DiscreteWrite(&GPIO8_CTRL, 1, 0xF6);

	usleep(100000);
    HSADC_Init(2,  'B');
	usleep(100000);
    HSADC_Init(0,  'A');

	usleep(100000);
    HSDAC_Init(1,  1, 0);
	usleep(100000);
    HSDAC_Init(1,  2, 0);
	usleep(100000);


    if(verbosity ==3){
		for(int mV = -5000; mV < 5000; mV += 100){
			HSDAC_setVoltage(1,  1, mV);
			usleep(100000);
			printDEBUG("ADC 2B Received: %d mV, DAC 1A Write %d mV\n", HSADC_getVoltage_mV(2, 'B'), mV);
		}

		for(int mV = -5000; mV < 5000; mV += 100){
			HSDAC_setVoltage(1,  2, -1 * mV);
			usleep(100000);
			printDEBUG("ADC 0A Received: %d mV, DAC 1B Write %d mV\n", HSADC_getVoltage_mV(0, 'A'), -1 * mV);
		}
    }

    for(int run = 0; run < NUM_PASSES; run++){
		HSDAC_setVoltage(1,  1, -5000);
		usleep(100000);

		int sum = 0;

		for(int i = 0; i < 10; i++){
			uint32_t val = HSADC_getVoltage_mV(2, 'B');
			printDEBUG("RUN %d: ADC 2B Expected: 0mV, Received: %d mV\n", run, val);
			sum += val;
		}

		int val = sum / 10;

		if (val < 3500){
			HSDAC_PASS |= 1 << 12;
		}
		sum = 0;
		HSDAC_setVoltage(1,  1, 5000);
		usleep(100000);

		for(int i = 0; i < 10; i++){
			uint32_t val = HSADC_getVoltage_mV(2, 'B');
			printDEBUG("RUN %d: ADC 2B Expected: 5000mV, Received: %d mV\n", run, val);
			sum += val;
		}

		val = sum / 10;

		if (val > 2500){
			HSDAC_PASS |= 1 << 13;
		}
		sum = 0;
		HSDAC_setVoltage(1,  1, 0);

		HSDAC_setVoltage(1,  2, -5000);
		usleep(100000);

		for(int i = 0; i < 10; i++){
			uint32_t val = HSADC_getVoltage_mV(0, 'A');
			printDEBUG("RUN %d: ADC 0A Expected: 0mV, Received: %d mV\n", run, val);
			sum += val;
		}

		val = sum / 10;

		if (val < 2500){
			HSDAC_PASS |= 1 << 14;
		}
		sum = 0;
		HSDAC_setVoltage(1,  2, 5000);
		usleep(100000);

		for(int i = 0; i < 10; i++){
			uint32_t val = HSADC_getVoltage_mV(0, 'A');
			printDEBUG("RUN %d: ADC 0A Expected: 5000mV, Received: %d mV\n", run, val);
			sum += val;
		}

		val = sum / 10;

		if (val > 2500){
			HSDAC_PASS |= 1 << 15;
		}
		sum = 0;

		HSDAC_setVoltage(1,  2, 0);
    }

    if (HSDAC_PASS == 0xFFFF){
    	printATP("HSDAC TEST PASS\n");
    }else{
    	printATP("HSDAC TEST FAIL: CODE: %04X\n", HSDAC_PASS);
    	fail += 1;
    }

	LS_DAC_WriteVoltage(&LSDAC0, 1, 0);
	LS_DAC_WriteVoltage(&LSDAC0, 0, 0);

	LS_DAC_WriteVoltage(&LSDAC0, 3, 0);
	LS_DAC_WriteVoltage(&LSDAC0, 4, 0);

	LS_DAC_WriteVoltage(&LSDAC0, 2, 0);
	LS_DAC_WriteVoltage(&LSDAC0, 6, 0);

	LS_DAC_WriteVoltage(&LSDAC0, 7, 0);
	LS_DAC_WriteVoltage(&LSDAC0, 5, 0);



	//Reset AFE7222 Converters
   XGpio_DiscreteWrite(&GPIO8_CTRL, 1, 0xFE);
   XGpio_DiscreteWrite(&GPIO8_CTRL, 1, 0xF6);

   //Set data path to connect ADC control block to AFE7222 pins
   XGpio_DiscreteWrite(&GPIO14_AFE_CTRL, 1, 0xF);

   //Disable all DAC FEs
   XGpio_DiscreteWrite(&GPIO8_CTRL, 1, 0xF6);

    printBIT("[RESULT]%s\n", pass == 1 && fail == 0 ? "PASS" : "FAIL");
    printBIT("[END]\n");
}
