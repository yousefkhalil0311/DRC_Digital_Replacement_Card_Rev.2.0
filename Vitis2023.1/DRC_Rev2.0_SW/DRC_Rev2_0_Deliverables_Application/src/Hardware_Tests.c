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


XTime start, end;

typedef struct{
	int* arg1;
	int* arg2;
	int* arg3;
} argsContext;


/*
 * function used within test cases to loop a function for a certain amount of time.
 * If the callback function requires parameters, they can be passed in via an argsContext struct.
 */
void runTest(void (*testFunction)(argsContext* args), uint32_t runTime, argsContext* optArgs){

    int msRemaining = runTime * 1000.0; //msRemaining in ms

    //draw serial console static text
	printf("\033[2;1H\033[K");
	printf("Time Remaining: %02d.%02ds ", msRemaining/1000, (msRemaining%1000) / 10);

    XTime_GetTime(&start);

    //Display DRC LSDAC output values and remaining time
	while(msRemaining > 0){

		//Display Time Remaining
		XTime_GetTime(&end);

		uint64_t elapsedTime = (end - start) / (COUNTS_PER_SECOND/1000); //#of ticks elapsed over time in miliseconds

		msRemaining = runTime*1000/*ms*/ - elapsedTime;

		if (msRemaining < 0){
			msRemaining = 0;
		}

		//Print time remaining every 50ms
		if((msRemaining/10)%5 == 0){
			printf("\033[2;17H\033[K");
			printf("%02d.%02ds ", msRemaining/1000, (msRemaining%1000) / 10);
		}

		//Printing lots of serial data. Clear buffer to avoid unexpected blocking behavior
		fflush(stdout);

		testFunction(optArgs);

	}
}

void TestMode1(){
	////////////////////////////////////////////////////////////////////
	// Test Mode 1 Begin
	// Edge mounted LEDs will cycle
    clearTerminal();
    printf("Test Mode 1: Cycle Status LEDs.\n\n");

	for(int i = 1; i <= 0x8; i <<= 1){
		setLEDStatus(i);
		printf("\033[3;1H");
		printf("LED 1: %s\n", i == 0x1 ? "ON " : "OFF");
		printf("LED 2: %s\n", i == 0x2 ? "ON " : "OFF");
		printf("LED 3: %s\n", i == 0x4 ? "ON " : "OFF");
		printf("LED 4: %s\n", i == 0x8 ? "ON " : "OFF");
		sleep(1);
	}
	for(int i = 8; i >= 0x1; i >>= 1){
		setLEDStatus(i);
		printf("\033[3;1H");
		printf("LED 1: %s\n", i == 0x1 ? "ON " : "OFF");
		printf("LED 2: %s\n", i == 0x2 ? "ON " : "OFF");
		printf("LED 3: %s\n", i == 0x4 ? "ON " : "OFF");
		printf("LED 4: %s\n", i == 0x8 ? "ON " : "OFF");
		sleep(1);
	}

    printf("Test Mode 1 End.\n");
	// Test Mode 1 End
	////////////////////////////////////////////////////////////////////
}

void TestMode2(uint32_t delay){
	////////////////////////////////////////////////////////////////////
	// Test Mode 2 Begin
	// Set all pins to digital mode, and cycle each pin between ON and OFF
    //
	clearTerminal();
    printf("Test Mode 2: Digital Output Test.\n");
    printf("Set all multifunction pins to digital mode and cycles IO pins.\n");
    printf("Delay: %u milliseconds\n\n", delay);

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
    int Status = IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    int numIOPins = ALL_GPIO_LEN;

    for(int pin = 0; pin < numIOPins; pin++){
    	displayPinState(ALL_GPIO[pin]->IOpinNum, 0);
    }

    //Cascade LEDs
	for (int pin = 0; pin < numIOPins; pin++){
		setIOPin(ALL_GPIO[pin], 1);
    	displayPinState(ALL_GPIO[pin]->IOpinNum, 1);
		usleep(delay*1000);
		setIOPin(ALL_GPIO[pin], 0);
    	displayPinState(ALL_GPIO[pin]->IOpinNum, 0);
    }

	//Turn all LEDs ON
	for (int pin = 0; pin < numIOPins; pin++){
		setIOPin(ALL_GPIO[pin], 1);
    	displayPinState(ALL_GPIO[pin]->IOpinNum, 1);
		usleep(delay * 1000);
    }

	sleep(2);

	//Turn all LEDs OFF
	for (int pin = 0; pin < numIOPins; pin++){
		setIOPin(ALL_GPIO[pin], 0);
    	displayPinState(ALL_GPIO[pin]->IOpinNum, 0);
		usleep(delay * 1000);
    }

    printf("Test Mode 2 End.\n");
    sleep(1);
	// Test Mode 2 End
	////////////////////////////////////////////////////////////////////
}

void TestMode3(uint32_t runTime){
	////////////////////////////////////////////////////////////////////
	// Test Mode 3 Begin
	// Read IO Test
	clearTerminal();
    printf("Test Mode 3: Read IO Pins and report state changes.\n");

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
    int Status = IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    void testFunc3(argsContext* args){

		for (int i = 0; i < ALL_GPIO_LEN; i++){
			displayPinState(ALL_GPIO[i]->IOpinNum, readIOPin(ALL_GPIO[i]));
		}

    }

    runTest(testFunc3, runTime, NULL);

    printf("Test Mode 3 End.\n");
	// Test Mode 3 End
	////////////////////////////////////////////////////////////////////
}

void TestMode4(uint32_t runTime){
	////////////////////////////////////////////////////////////////////
	// Test Mode 4 Begin
	// LSDAC Triangle Wave Test

	clearTerminal();
    printf("Test Mode 4: Low speed DAC triangle wave outputs. \n");

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
			P50_HS_ADC3A,
			P55_HS_ADC3B,
			P74_LS0_DAC03,
	};

	//Set Pin_Settings Array to desired Array settings
	for(int i = 0; i < PIN_SETTINGS_LEN; i++){
		Pin_Settings[i] = AllLSDACPaths[i];
	};

	//Reinitialize Switch Settings For Desired States
    int Status = IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //draw serial console static text
	printf("\033[4;1H");
	printf("LSDAC0 Value: ");
	printf("\033[5;1H");
	printf("LSDAC1 Value: ");
	printf("\033[7;1H");
	printf("P3  -> LSDAC0_CH7     P2  -> LSDAC1_CH4\n");
	printf("P6  -> LSDAC0_CH6     P17 -> LSDAC1_CH0\n");
	printf("P10 -> LSDAC0_CH1     P21 -> LSDAC1_CH2\n");
	printf("P34 -> LSDAC0_CH5     P32 -> LSDAC1_CH5\n");
	printf("P35 -> LSDAC0_CH4     P33 -> LSDAC1_CH6\n");
	printf("P36 -> LSDAC0_CH0     P46 -> LSDAC1_CH7\n");
	printf("P40 -> LSDAC0_CH2     P48 -> LSDAC1_CH1\n");
	printf("P74 -> LSDAC0_CH3     P51 -> LSDAC1_CH3\n");

    //initial value to be loaded into LSDACs
    int LSDACVal = 0;

    //LSDACVal will change by 1 per cycle
    int addVal = 10;

    argsContext test4Args = {
    		&LSDACVal,
			&addVal,
			NULL
    };

    void testFunc4(argsContext* args){

    	int* LSDACVal = args->arg1;
    	int* addVal   = args->arg2;

		//Poll time remaining once per 110 value change in LSDAC output value. Serial print is slow.
		if(*LSDACVal%110 == 0){

			//Print stats
			printf("\033[4;15H");
			printf("%04u     ", *LSDACVal);
			for(int i = 0; i < 4095/110; i++){
				if(i*130 < *LSDACVal){
					printf("#");
				}
				else{
					printf(" ");
					break;
				}
			}
			printf("\033[5;15H");
			printf("%04u     ", 4096 - *LSDACVal);
			for(int i = 0; i < 4095/110; i++){
				if(i*130 < (4096 - *LSDACVal)){
					printf("#");
				}
				else{
					printf(" ");
					break;
				}
			}

		}

		//Write values to LSDAC
		LS_DAC_WriteAll(&LSDAC0, *LSDACVal);
		LS_DAC_WriteAll(&LSDAC1, 4095 - *LSDACVal);

		*LSDACVal = *LSDACVal + *addVal;
		if((*LSDACVal + *addVal > 4096) || (*LSDACVal + *addVal < 0)){
			*addVal *= -1;
		}


	}

    runTest(testFunc4, runTime, &test4Args);

	LS_DAC_WriteAll(&LSDAC0, 0);
	LS_DAC_WriteAll(&LSDAC1, 0);

    printf("Test Mode 4 End.\n");
	// Test Mode 4 End
	////////////////////////////////////////////////////////////////////
}

void TestMode5(uint32_t runTime){
	////////////////////////////////////////////////////////////////////
	// Test Mode 5 Begin
	// LSDAC Fast Square Wave Test

	clearTerminal();

    printf("Test Mode 5: Low speed DAC square wave outputs. Transition time test.\n");

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
			P50_HS_ADC3A,
			P55_HS_ADC3B,
			P74_LS0_DAC03,
	};

	//Set Pin_Settings Array to desired Array settings
	for(int i = 0; i < PIN_SETTINGS_LEN; i++){
		Pin_Settings[i] = AllLSDACPaths[i];
	};

	//Reinitialize Switch Settings For Desired States
    int Status = IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //draw serial console static text
	printf("\033[7;1H");
	printf("P3  -> LSDAC0_CH7     P2  -> LSDAC1_CH4\n");
	printf("P6  -> LSDAC0_CH6     P17 -> LSDAC1_CH0\n");
	printf("P10 -> LSDAC0_CH1     P21 -> LSDAC1_CH2\n");
	printf("P34 -> LSDAC0_CH5     P32 -> LSDAC1_CH5\n");
	printf("P35 -> LSDAC0_CH4     P33 -> LSDAC1_CH6\n");
	printf("P36 -> LSDAC0_CH0     P46 -> LSDAC1_CH7\n");
	printf("P40 -> LSDAC0_CH2     P48 -> LSDAC1_CH1\n");
	printf("P74 -> LSDAC0_CH3     P51 -> LSDAC1_CH3\n");

    //Function to run for duration of the test
    void testFunc5(argsContext* args){

		//Write values to LSDAC
		LS_DAC_WriteAll(&LSDAC0, 4095);
		LS_DAC_WriteAll(&LSDAC0, 0);
		LS_DAC_WriteAll(&LSDAC1, 4095);
		LS_DAC_WriteAll(&LSDAC1, 0);

    }

    runTest(testFunc5, runTime, NULL);

	LS_DAC_WriteAll(&LSDAC0, 0);
	LS_DAC_WriteAll(&LSDAC1, 0);

    printf("Test Mode 5 End.\n");
	// Test Mode 5 End
	////////////////////////////////////////////////////////////////////
}

void TestMode6(uint32_t runTime){
	////////////////////////////////////////////////////////////////////
	// Test Mode 6 Begin
	// HS ADC/DAC loopback test for channel A

	clearTerminal();

    printf("Test Mode 6: High speed ADC/DAC loopback mode A. Tests channel A on each ADC/DAC pair.\n\n\n");
    printf("Following pins used for loopback test.\n");
    printf("Pin 51 (ADC0A) to Pin 21 (DAC0A)\n");
    printf("Pin 48 (ADC1A) to Pin 17 (DAC1A)\n");
    printf("Pin 46 (ADC2A) to Pin 33 (DAC2A)\n");
    printf("Pin 50 (ADC3A) to Pin 2  (DAC3A)\n");

	setLEDStatus(0x06);

	/*
	 *
	 * Configure paths for High Speed ADC/DAC loopback mode
	 * NOTE: LSDAC and Channel B converter paths are here to keep structure of path
	 * configuration consistent in the case where a pin is used for this loopback test
	 *
	 */
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
    int Status = IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Program AFE7222s to operate in full duplex mode (Default registers, loopback handled on hardware level)
    for (int i = 0x01; i < (0x01 << 4); i = i << 1){
        AFE_Init(&SPI0_AFE, AFE_LPBK_REG_MAP, AFE_LPBK_REG_MAP_SIZE, i);
    }

    XGpio_DiscreteWrite(&GPIO8_CTRL, 1, 0x06); //Enable all DAC FEs

    XGpio_DiscreteWrite(&GPIO14_AFE_CTRL, 1, 0xF); //Set data path to connect ADC control block to AFE7222 pins

    printf("System configured in channel A loopback mode.\n");

	//empty function to pass into runTest
    void test6Func(){}

    runTest(test6Func, runTime, NULL);

	// Test Mode 6 End
	////////////////////////////////////////////////////////////////////
}

void TestMode7(uint32_t runTime){
	////////////////////////////////////////////////////////////////////
	// Test Mode 7 Begin
	// HS ADC/DAC loopback test for channel B
    printf("Test Mode 7: High speed ADC/DAC loopback mode A. Tests channel A on each ADC/DAC pair.\n\n\n");
    printf("Following pins used for loopback test.\n");
    printf("Pin 21 (ADC0B) to Pin 51 (DAC0B)\n");
    printf("Pin 17 (ADC1B) to Pin 48 (DAC1B)\n");
    printf("Pin 33 (ADC2B) to Pin 46 (DAC2B)\n");
    printf("Pin 55 (ADC3B) to Pin 32 (DAC3B)\n");

	setLEDStatus(0x07);

	/*
	 *
	 * Configure paths for High Speed ADC/DAC loopback mode
	 * NOTE: LSDAC and Channel B converter paths are here to keep structure of path
	 * configuration consistent in the case where a pin is used for this loopback test
	 *
	 */
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
    int Status = IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Program AFE7222s to operate in full duplex mode (Default registers, loopback handled on hardware level)
    for (int i = 0x01; i < (0x01 << 4); i = i << 1){
        AFE_Init(&SPI0_AFE, AFE_LPBK_REG_MAP, AFE_LPBK_REG_MAP_SIZE, i);
    }

    XGpio_DiscreteWrite(&GPIO8_CTRL, 1, 0xF6); //Enable all DAC FEs

    XGpio_DiscreteWrite(&GPIO14_AFE_CTRL, 1, 0xF); //Set data path to connect ADC control block to AFE7222 pins

    printf("System configured in channel A loopback mode.\n");

	//empty function to pass into runTest
    void test7Func(){}

    runTest(test7Func, runTime, NULL);

	// Test Mode 7 End
	////////////////////////////////////////////////////////////////////
}

void TestMode8(){
	////////////////////////////////////////////////////////////////////
	// Test Mode 8 Begin
	// HS DAC output test

	clearTerminal();

    printf("Test Mode 8: High speed DAC output test\n\n\n");
    printf("Following pins used for HS DACs\n");
    printf("Pin 21 (DAC0A)\n");
    printf("Pin 51 (DAC0B)\n");
    printf("Pin 17 (DAC1A)\n");
    printf("Pin 48 (DAC1B)\n");
    printf("Pin 33 (DAC2A)\n");
    printf("Pin 46 (DAC2B)\n");
    printf("Pin 2  (DAC3A)\n");
    printf("Pin 32 (DAC3B)\n\n");
    printf("Command List:\n"
    		""
    		""
    		"");

	setLEDStatus(0x08);

	/*
	 * Configure paths for High Speed ADC/DAC loopback mode
	 * NOTE: LSDAC and Channel A converter paths are here to keep structure of path configuration consistent
	 * in the case where a path is not necessary for this loopback test
	 */
	SWState_t HSDAC[] = {
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
		Pin_Settings[i] = HSDAC[i];
	};

	//Reinitialize Switch Settings For Desired States
    int Status = IOEXP_MultiFuntion_Pin_Init(&IIC0_IOEXP, IOEXP0_ADDRESS);
    if(Status != XST_SUCCESS){
    	return XST_FAILURE;
    }

    //Sets all AFE7222 chips to operate in DAC only mode.
    for (int i = 0x01; i < (0x01 << 4); i = i << 1){
        AFE_Init(&SPI0_AFE, AFE_REG_MAP, AFE_LPBK_REG_MAP_SIZE, i);
    }


    XGpio_DiscreteWrite(&GPIO14_AFE_CTRL, 1, 0x0); //Set data path to connect DAC control block to AFE7222 pins

    //Run test until exist is entered for a paramter
    while(1){

    	int AFEUnderTest;
    	int digClkDivider;
    	int sampleClkDivider;

    	printf("\033[17;1H");
    	printf("\nPlease enter the DAC to test (0-3): ");
    	scanf("%d", &AFEUnderTest);

    	//Print entered data otherwise
    	printf("\n\033[K");
    	printf("AFEUnderTest set to: %d\n", AFEUnderTest);

    	printf("\nPlease enter clock divider for DAC data output control (1 -> 65MHz): ");
    	scanf("%d", &digClkDivider);

    	//exit test if "0" is entered
    	if(digClkDivider == 0) return;

    	//Print entered data otherwise
    	printf("\n\033[K");
    	printf("digClkDivider set to: %d\n", digClkDivider);

    	printf("\nPlease enter sample clock divider (1 -> 130MHz): ");
    	scanf("%d", &sampleClkDivider);

    	//exit test if "0" is entered
    	if(sampleClkDivider == 0) return;

    	//Print entered data otherwise
    	printf("\n\033[K");
    	printf("sampleClkDivider set to: %d\n", sampleClkDivider);

        XGpio_DiscreteWrite(&GPIO8_CTRL, 1, ~(1 << (AFEUnderTest + 4)) & 0xF6); //Enable DAC FE for converter selected & disable rest
    	XGpio_DiscreteWrite(&GPIO1_SPDCTRL, 1, digClkDivider);
    	XGpio_DiscreteWrite(&GPIO1_SPDCTRL, 2, sampleClkDivider);

    	//Raw stdin input string
    	char inputString[10];

    	//Extracted command string from inputString
    	char cmdString[10];

    	//extracted parameter value from inputString
    	int enteredValue;

    	printf("Enter Command> \033[K");

    	//Read input string and echo back to terminal
    	scanf("%s", inputString);
    	printf("%s", inputString);

//    	for(int i = 0; i < strlen(inputString); i++){
//    		if(inputString[i] == '\b'){
//
//    		}
//    	}

    	//structure inputString into command string and value
    	sscanf(inputString, "%3[A-Z]%d", cmdString, &enteredValue);

    	printf("\n");
    	printf("Command: \033[K%s\nValue:   \033[K%d\n", cmdString, enteredValue);

    	usleep(500000);

    }

	// Test Mode 8 End
	////////////////////////////////////////////////////////////////////
}
