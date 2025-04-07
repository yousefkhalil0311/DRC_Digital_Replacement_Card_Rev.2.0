#include "Hardware_Tests.h"

//Standard C includes
#include <stdio.h>

//Xilinx specific includes
#include "xuartps.h"
#include "sleep.h"

//Project specific includes
#include "StructDefinitions.h"
#include "RegisterMaps.h"
#include "DRC_Parameters.h"
#include "PeripheralMacros.h"

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
	for(int i = 0; i < PIN_SETTINGS_LEN; i++){
		Pin_Settings[i] = AllDigitalPaths[i];
	};

	//Reinitialize Switch Settings For Desired States
    /*Status = */IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
//    if(Status != XST_SUCCESS){
//    	return XST_FAILURE;
//    }

    int numIOPins = ALL_GPIO_LEN;

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
	for(int i = 0; i < PIN_SETTINGS_LEN; i++){
		Pin_Settings[i] = AllDigitalPaths[i];
	};

	//Reinitialize Switch Settings For Desired States
    /*Status = */IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
//    if(Status != XST_SUCCESS){
//    	return XST_FAILURE;
//    }

    //Display DRC Input Data on pins
	printf("\033[2J\033[H");
	while(1){
		for (int i = 0; i < ALL_GPIO_LEN; i++){
			printf("\033[%d;%dH", 1 + ALL_GPIO[i]->IOpinNum%30, 30 * (ALL_GPIO[i]->IOpinNum/30));
			printf("Pin %d: %d\n", ALL_GPIO[i]->IOpinNum, readIOPin(ALL_GPIO[i]));
		}
	}

    int numIOPins = ALL_GPIO_LEN;

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
	for(int i = 0; i < PIN_SETTINGS_LEN; i++){
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
        	LS_DAC_WriteAll(&LSDAC1, 4096 - j);
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
	for(int i = 0; i < PIN_SETTINGS_LEN; i++){
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
	for(int i = 0; i < PIN_SETTINGS_LEN; i++){
		Pin_Settings[i] = HSLoopbackA[i];
	};

	//Reinitialize Switch Settings For Desired States
    /*Status = */IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
//    if(Status != XST_SUCCESS){
//    	return XST_FAILURE;
//    }
    for (int i = 0x01; i < (0x01 << 4); i = i << 1){//Initializes AFEs 2 and 3;
        AFE_Init(&SPI0_AFE, AFE_LPBK_REG_MAP, AFE_LPBK_REG_MAP_SIZE, i);
    }

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
    printf("Test Mode 7: High speed ADC/DAC loopback mode A. Tests channel A on each ADC/DAC pair.\n");
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
	for(int i = 0; i < PIN_SETTINGS_LEN; i++){
		Pin_Settings[i] = HSLoopbackB[i];
	};

	//Reinitialize Switch Settings For Desired States
    /*Status = */IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
//    if(Status != XST_SUCCESS){
//    	return XST_FAILURE;
//    }
    for (int i = 0x01; i < (0x01 << 4); i = i << 1){//Initializes AFEs 2 and 3;
        AFE_Init(&SPI0_AFE, AFE_LPBK_REG_MAP, AFE_LPBK_REG_MAP_SIZE, i);
    }

    printf("System configured in channel B loopback mode.\n");
    printf("Mode will persist until another test is selected.\n");
    printf("\n.\n.\n.\n");
	// Test Mode 7 End
	////////////////////////////////////////////////////////////////////
}

void TestMode8(uint32_t DACFrequency){
	////////////////////////////////////////////////////////////////////
	// Test Mode 8 Begin
	// HS DAC output test
    printf("Test Mode 8: High speed DAC output test\n");
    printf("Following pins used for HS DACs\n");
    printf("Pin 21 (DAC0A)\n");
    printf("Pin 51 (DAC0B)\n");
    printf("Pin 17 (DAC1A)\n");
    printf("Pin 48 (DAC1B)\n");
    printf("Pin 33 (DAC2A)\n");
    printf("Pin 46 (DAC2B)\n");
    printf("Pin 2  (DAC3A)\n");
    printf("Pin 32 (DAC3B)\n\n\n");

	setLEDStatus(0x07);

	//Configure paths for High Speed ADC/DAC loopback mode
	//NOTE: LSDAC and Channel A converter paths are here to keep structure of path configuration consistent
	//in the case where a path is not necessary for this loopback test
	SWState_t HSLoopbackB[] = {
			P2_HS_DAC3A,
			P17_HS_DAC1A,
			P21_HS_DAC0A,
			P32_HS_DAC3B,
			P33_HS_DAC2A,
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
	for(int i = 0; i < PIN_SETTINGS_LEN; i++){
		Pin_Settings[i] = HSLoopbackB[i];
	};

	//Reinitialize Switch Settings For Desired States
    /*Status = */IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
//    if(Status != XST_SUCCESS){
//    	return XST_FAILURE;
//    }
    for (int i = 0x01; i < (0x01 << 4); i = i << 1){//Initializes AFEs 2 and 3;
        AFE_Init(&SPI0_AFE, AFE_REG_MAP, AFE_LPBK_REG_MAP_SIZE, i);
    }

    printf("System configured in DAC Test mode.\n");
    printf("Mode will persist until another test is selected.\n");
    printf("\n.\n.\n.\n");
	// Test Mode 8 End
	////////////////////////////////////////////////////////////////////
}
