#include "DRC_Parameters.h"

//Project specific includes
#include "PeripheralMacros.h"

//GPIO bus XGpio instances
XGpio GPIO8_CTRL;
XGpio GPIO0_LEDS;
XGpio GPIO9_SE;
XGpio GPIO10_DS;
XGpio GPIO7_SPDT;
XGpio GPIO11_CLKP;
XGpio GPIO1_SPDCTRL;
XGpio GPIO20_ADCDATA_0;
XGpio GPIO21_ADCDATA_1;
XGpio GPIO22_ADCDATA_2;
XGpio GPIO23_ADCDATA_3;
XGpio GPIO19_PL_OUTPUT_FREQ;

//IIC bus XIic instances
XIic IIC0_IOEXP; //(U17:0x22, U19:0x23)
XIic IIC1_IOEXP; //(U18:0x22)
XIic IIC2_IOEXP; //(U20:0x22, U21:0x23)

//SPI bus XSpi instances
XSpi SPI0_AFE;
XSpi SPI1_LSDAC;

//PS UART interface
XUartPs UART_PS;

//Direction Control IO Expander structs
DIRCTRL_IOEXP IOEXP_U18 = {&IIC1_IOEXP, 0x22, 0x00000000};
DIRCTRL_IOEXP IOEXP_U19 = {&IIC0_IOEXP, 0x23, 0x00000000};
DIRCTRL_IOEXP IOEXP_U20 = {&IIC2_IOEXP, 0x22, 0x00000000};
DIRCTRL_IOEXP IOEXP_U21 = {&IIC2_IOEXP, 0x23, 0x00000000};

//LSDAC structs
const LSDAC_t LSDAC0 = {&SPI1_LSDAC, 0x01};
const LSDAC_t LSDAC1 = {&SPI1_LSDAC, 0x02};

//SP4T switch structs. Maps SP4T switch control pins to IO expander pins
const SP4T_t SP4T0 = {0x000080, 0x010000, 0x000100};
const SP4T_t SP4T1 = {0x000040, 0x020000, 0x000200};
const SP4T_t SP4T2 = {0x000020, 0x040000, 0x000400};
const SP4T_t SP4T3 = {0x000010, 0x080000, 0x000800};
const SP4T_t SP4T4 = {0x000008, 0x100000, 0x001000};
const SP4T_t SP4T5 = {0x000004, 0x200000, 0x002000};
const SP4T_t SP4T6 = {0x000002, 0x400000, 0x004000};
const SP4T_t SP4T7 = {0x000001, 0x800000, 0x008000};
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
const net_t VC0  	= {&GPIO8_CTRL, 4, 1, 0, 1}; //Set to output low to enable the DAC FE
const net_t VC1 	= {&GPIO8_CTRL, 5, 1, 0, 1};
const net_t VC2   	= {&GPIO8_CTRL, 6, 1, 0, 1};
const net_t VC3   	= {&GPIO8_CTRL, 7, 1, 0, 1};
//const net_t CONSTMODE = {&GPIO8_CTRL, 0, 2, 0, 0};
//const net_t P89_clkEn = {&GPIO8_CTRL, 1, 2, 0, 0};

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
const net_t SE2  = {&GPIO9_SE, 0, 1, 0, 0, 2, &IOEXP_U19, 0x008000};
const net_t SE14 = {&GPIO9_SE, 1, 1, 0, 0, 14, &IOEXP_U21, 0x040000};
const net_t SE17 = {&GPIO9_SE, 2, 1, 0, 1, 17, &IOEXP_U19, 0x000800};
const net_t SE20 = {&GPIO9_SE, 3, 1, 0, 0, 20, &IOEXP_U20, 0x000100};
const net_t SE21 = {&GPIO9_SE, 4, 1, 0, 1, 21, &IOEXP_U19, 0x000200};
const net_t SE22 = {&GPIO9_SE, 5, 1, 0, 1, 22, &IOEXP_U20, 0x080000};
const net_t SE23 = {&GPIO9_SE, 6, 1, 0, 0, 23, &IOEXP_U20, 0x008000};
const net_t SE24 = {&GPIO9_SE, 7, 1, 0, 0, 24, &IOEXP_U20, 0x000002};
const net_t SE25 = {&GPIO9_SE, 8, 1, 0, 0, 25, &IOEXP_U20, 0x000008};
const net_t SE26 = {&GPIO9_SE, 9, 1, 0, 0, 26, &IOEXP_U20, 0x000001};
const net_t SE27 = {&GPIO9_SE, 10, 1, 0, 0, 27, &IOEXP_U20, 0x000800};
const net_t SE28 = {&GPIO9_SE, 11, 1, 0, 0, 28, &IOEXP_U20, 0x010000};
const net_t SE29 = {&GPIO9_SE, 12, 1, 0, 1, 29, &IOEXP_U20, 0x020000};
const net_t SE32 = {&GPIO9_SE, 13, 1, 0, 0, 32, &IOEXP_U19, 0x004000};
const net_t SE33 = {&GPIO9_SE, 14, 1, 0, 0, 33, &IOEXP_U19, 0x002000};
const net_t SE36 = {&GPIO9_SE, 15, 1, 0, 0, 36, &IOEXP_U18, 0x000800};
const net_t SE37 = {&GPIO9_SE, 16, 1, 0, 0, 37, &IOEXP_U21, 0x000020};
const net_t SE38 = {&GPIO9_SE, 17, 1, 0, 0, 38, &IOEXP_U21, 0x000008};
const net_t SE39 = {&GPIO9_SE, 18, 1, 0, 0, 39, &IOEXP_U18, 0x000400};
const net_t SE40 = {&GPIO9_SE, 19, 1, 0, 0, 40, &IOEXP_U18, 0x000004};
const net_t SE41 = {&GPIO9_SE, 20, 1, 0, 0, 41, &IOEXP_U21, 0x000010};
const net_t SE42 = {&GPIO9_SE, 21, 1, 0, 0, 42, &IOEXP_U21, 0x000080};
const net_t SE43 = {&GPIO9_SE, 22, 1, 0, 0, 43, &IOEXP_U21, 0x000200};
const net_t SE44 = {&GPIO9_SE, 23, 1, 0, 0, 44, &IOEXP_U21, 0x080000};
const net_t SE46 = {&GPIO9_SE, 24, 1, 0, 0, 46, &IOEXP_U19, 0x001000};
const net_t SE48 = {&GPIO9_SE, 25, 1, 0, 0, 48, &IOEXP_U19, 0x000400};
const net_t SE49 = {&GPIO9_SE, 26, 1, 0, 0, 49, &IOEXP_U21, 0x800000};
const net_t SE50 = {&GPIO9_SE, 27, 1, 0, 0, 50, &IOEXP_U18, 0x000020};
const net_t SE51 = {&GPIO9_SE, 28, 1, 0, 0, 51, &IOEXP_U19, 0x000100};
const net_t SE52 = {&GPIO9_SE, 29, 1, 0, 0, 52, &IOEXP_U20, 0x002000};
const net_t SE55 = {&GPIO9_SE, 30, 1, 0, 0, 55, &IOEXP_U18, 0x000010};
const net_t SE56 = {&GPIO9_SE, 31, 1, 0, 0, 56, &IOEXP_U20, 0x000004};
const net_t SE57 = {&GPIO9_SE, 0, 2, 0, 0, 57, &IOEXP_U20, 0x001000};
const net_t SE58 = {&GPIO9_SE, 1, 2, 0, 0, 58, &IOEXP_U20, 0x000400};
const net_t SE59 = {&GPIO9_SE, 2, 2, 0, 0, 59, &IOEXP_U20, 0x800000};
const net_t SE74 = {&GPIO9_SE, 3, 2, 0, 0, 74, &IOEXP_U18, 0x000008};
const net_t SE81 = {&GPIO9_SE, 4, 2, 0, 0, 81, &IOEXP_U20, 0x000200};
const net_t SE89 = {&GPIO9_SE, 5, 2, 0, 0, 89, &IOEXP_U20, 0x200000};
//Diff IO XGpio set up as single ended for now
const net_t SE4  = {&GPIO10_DS, 0, 1, 0, 0, 4, &IOEXP_U18, 0x000040};
const net_t SE3  = {&GPIO10_DS, 0, 2, 0, 0, 3, &IOEXP_U18, 0x008000};
const net_t SE6  = {&GPIO10_DS, 1, 1, 0, 0, 6, &IOEXP_U18, 0x000080};
const net_t SE5  = {&GPIO10_DS, 1, 2, 0, 0, 5, &IOEXP_U18, 0x002000};
const net_t SE8  = {&GPIO10_DS, 2, 1, 0, 0, 8, &IOEXP_U21, 0x000001};
const net_t SE7  = {&GPIO10_DS, 2, 2, 0, 0, 7, &IOEXP_U21, 0x008000};
const net_t SE10 = {&GPIO10_DS, 3, 1, 0, 0, 10, &IOEXP_U18, 0x000002};
const net_t SE9  = {&GPIO10_DS, 3, 2, 0, 0, 9, &IOEXP_U18, 0x000001};
const net_t SE12 = {&GPIO10_DS, 4, 1, 0, 0, 12, &IOEXP_U21, 0x000800};
const net_t SE11 = {&GPIO10_DS, 4, 2, 0, 0, 11, &IOEXP_U21, 0x001000};
const net_t SE18 = {&GPIO10_DS, 5, 1, 0, 0, 18, &IOEXP_U21, 0x000100};
const net_t SE16 = {&GPIO10_DS, 5, 2, 0, 0, 16, &IOEXP_U19, 0x000008};
const net_t SE34 = {&GPIO10_DS, 6, 1, 0, 0, 34, &IOEXP_U18, 0x004000};
const net_t SE19 = {&GPIO10_DS, 6, 2, 0, 0, 19, &IOEXP_U21, 0x400000};
const net_t SE45 = {&GPIO10_DS, 7, 1, 0, 0, 45, &IOEXP_U21, 0x100000};
const net_t SE35 = {&GPIO10_DS, 7, 2, 0, 0, 35, &IOEXP_U18, 0x001000};
const net_t SE53 = {&GPIO10_DS, 8, 1, 0, 0, 53, &IOEXP_U20, 0x000080};
const net_t SE47 = {&GPIO10_DS, 8, 2, 0, 0, 47, &IOEXP_U21, 0x000400};
const net_t SE62 = {&GPIO10_DS, 9, 1, 0, 0, 62, &IOEXP_U18, 0x000200};
const net_t SE54 = {&GPIO10_DS, 9, 2, 0, 0, 54, &IOEXP_U20, 0x000020};
const net_t SE64 = {&GPIO10_DS, 10, 1, 0, 0, 64, &IOEXP_U18, 0x800000};
const net_t SE63 = {&GPIO10_DS, 10, 2, 0, 0, 63, &IOEXP_U18, 0x000100};
const net_t SE66 = {&GPIO10_DS, 11, 1, 0, 0, 66, &IOEXP_U18, 0x200000};
const net_t SE65 = {&GPIO10_DS, 11, 2, 0, 0, 65, &IOEXP_U18, 0x400000};
const net_t SE68 = {&GPIO10_DS, 12, 1, 0, 0, 68, &IOEXP_U21, 0x000002};
const net_t SE67 = {&GPIO10_DS, 12, 2, 0, 0, 67, &IOEXP_U21, 0x004000};
const net_t SE70 = {&GPIO10_DS, 13, 1, 0, 0, 70, &IOEXP_U21, 0x000040};
const net_t SE69 = {&GPIO10_DS, 13, 2, 0, 0, 69, &IOEXP_U21, 0x000004};
const net_t SE72 = {&GPIO10_DS, 14, 1, 0, 0, 72, &IOEXP_U21, 0x010000};
const net_t SE71 = {&GPIO10_DS, 14, 2, 0, 0, 71, &IOEXP_U21, 0x002000};
const net_t SE75 = {&GPIO10_DS, 15, 1, 0, 0, 75, &IOEXP_U21, 0x200000};
const net_t SE73 = {&GPIO10_DS, 15, 2, 0, 0, 73, &IOEXP_U21, 0x020000};
const net_t SE77 = {&GPIO10_DS, 16, 1, 0, 0, 77, &IOEXP_U19, 0x010000};
const net_t SE76 = {&GPIO10_DS, 16, 2, 0, 0, 76, &IOEXP_U19, 0x000002};
const net_t SE79 = {&GPIO10_DS, 17, 1, 0, 0, 79, &IOEXP_U20, 0x100000};
const net_t SE78 = {&GPIO10_DS, 17, 2, 0, 0, 78, &IOEXP_U19, 0x000010};
const net_t SE82 = {&GPIO10_DS, 18, 1, 0, 0, 82, &IOEXP_U20, 0x040000};
const net_t SE80 = {&GPIO10_DS, 18, 2, 0, 0, 80, &IOEXP_U20, 0x400000};
const net_t SE84 = {&GPIO10_DS, 19, 1, 0, 0, 84, &IOEXP_U20, 0x000040};
const net_t SE83 = {&GPIO10_DS, 19, 2, 0, 0, 83, &IOEXP_U20, 0x004000};
const net_t SE86 = {&GPIO10_DS, 20, 1, 0, 0, 86, &IOEXP_U19, 0x000001};
const net_t SE85 = {&GPIO10_DS, 20, 2, 0, 0, 85, &IOEXP_U20, 0x000010};
const net_t SE88 = {&GPIO10_DS, 21, 1, 0, 0, 88, &IOEXP_U19, 0x000004};
const net_t SE87 = {&GPIO10_DS, 21, 2, 0, 0, 87, &IOEXP_U19, 0x000080};

//Store current output values on AXI GPIO blocks
uint32_t GPIO9_SE_OUTPUT_cache[2] = {0, 0};
uint32_t GPIO10_DS_OUTPUT_cache[2] = {0, 0};

//Arrays used in initialization of GPIO AXI blocks
const net_t* GPIO_LED[] = {
	&LED1, &LED2, &LED3, &LED4
};

const size_t GPIO_LED_LEN = sizeof(GPIO_LED)/sizeof(GPIO_LED[0]);

//Arrays used in initialization of GPIO AXI blocks
const net_t* GPIO_CTRL[] = {
	&INT_n, &EXP_RST, &CLR_n, &RESET, &VC0, &VC1, &VC2, &VC3, /*&CONSTMODE, &P89_clkEn*/
};

const size_t GPIO_CTRL_LEN = sizeof(GPIO_CTRL)/sizeof(GPIO_CTRL[0]);

//Arrays used in initialization of GPIO AXI blocks

const net_t* GPIO_SPDT[] = {
	&SPDT3_CTRL, &SPDT6_CTRL, &SPDT10_CTRL, &SPDT34_CTRL, &SPDT35_CTRL,
	&SPDT36_CTRL, &SPDT40_CTRL, &SPDT50_CTRL, &SPDT55_CTRL, &SPDT74_CTRL};

const size_t GPIO_SPDT_LEN = sizeof(GPIO_SPDT)/sizeof(GPIO_SPDT[0]);

//Arrays used in initialization of GPIO AXI blocks
const net_t* GPIO_SE[] = {
    &SE2, &SE14, &SE17, &SE20, &SE21, &SE22, &SE23, &SE24, &SE25, &SE26,
    &SE27, &SE28, &SE29, &SE32, &SE33, &SE36, &SE37, &SE38, &SE39, &SE40,
    &SE41, &SE42, &SE43, &SE44, &SE46, &SE48, &SE49, &SE50, &SE51, &SE52,
    &SE55, &SE56, &SE57, &SE58, &SE59, &SE74, &SE81, &SE89
};

const size_t GPIO_SE_LEN = sizeof(GPIO_SE)/sizeof(GPIO_SE[0]);

//Arrays used in initialization of GPIO AXI blocks
const net_t* GPIO_DS[] = {
    &SE4, &SE3, &SE6, &SE5, &SE8, &SE7, &SE10, &SE9, &SE12, &SE11,
    &SE18, &SE16, &SE34, &SE19, &SE45, &SE35, &SE53, &SE47, &SE62, &SE54,
    &SE64, &SE63, &SE66, &SE65, &SE68, &SE67, &SE70, &SE69, &SE72, &SE71,
    &SE75, &SE73, &SE77, &SE76, &SE79, &SE78, &SE82, &SE80, &SE84, &SE83,
    &SE86, &SE85, &SE88, &SE87
};

const size_t GPIO_DS_LEN = sizeof(GPIO_DS)/sizeof(GPIO_DS[0]);

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

const size_t ALL_GPIO_LEN = sizeof(ALL_GPIO)/sizeof(ALL_GPIO[0]);

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
		P2_LS1_DAC04,
		//P2_DIGIO2,
		//P2_HS_DAC3A,

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

const size_t PIN_SETTINGS_LEN = sizeof(Pin_Settings)/sizeof(Pin_Settings[0]);
