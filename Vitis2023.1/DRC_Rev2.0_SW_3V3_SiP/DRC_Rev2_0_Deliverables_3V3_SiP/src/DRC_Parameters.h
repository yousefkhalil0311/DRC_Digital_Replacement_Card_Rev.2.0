#ifndef DRC_Parameters_H
#define DRC_Parameters_H

//Xilinx specific includes
#include "XGpio.h"
#include "XIic.h"
#include "XSpi.h"

//Project specific includes
#include "StructDefinitions.h"

//GPIO bus XGpio instances
extern XGpio GPIO8_CTRL;
extern XGpio GPIO0_LEDS;
extern XGpio GPIO9_SE;
extern XGpio GPIO10_DS;
extern XGpio GPIO7_SPDT;
extern XGpio GPIO11_CLKP;
extern XGpio GPIO1_SPDCTRL;
extern XGpio GPIO14_AFE_CTRL;
extern XGpio GPIO15_DAC0Const;
extern XGpio GPIO16_DAC1Const;
extern XGpio GPIO17_DAC2Const;
extern XGpio GPIO18_DAC3Const;
extern XGpio GPIO20_ADCDATA_0;
extern XGpio GPIO21_ADCDATA_1;
extern XGpio GPIO22_ADCDATA_2;
extern XGpio GPIO23_ADCDATA_3;

//IIC bus XIic instances
extern XIic IIC0_IOEXP; //(U17:0x22, U19:0x23)
extern XIic IIC1_IOEXP; //(U18:0x22)
extern XIic IIC2_IOEXP; //(U20:0x22, U21:0x23)

//SPI bus XSpi instances
extern XSpi SPI0_AFE;
extern XSpi SPI1_LSDAC;

//Direction Control IO Expander structs
extern DIRCTRL_IOEXP IOEXP_U18;
extern DIRCTRL_IOEXP IOEXP_U19;
extern DIRCTRL_IOEXP IOEXP_U20;
extern DIRCTRL_IOEXP IOEXP_U21;

//LSDAC structs
extern const LSDAC_t LSDAC0;
extern const LSDAC_t LSDAC1;

//SP4T switch structs. Maps SP4T switch control pins to IO expander pins
extern const SP4T_t SP4T0;
extern const SP4T_t SP4T1;
extern const SP4T_t SP4T2;
extern const SP4T_t SP4T3;
extern const SP4T_t SP4T4;
extern const SP4T_t SP4T5;
extern const SP4T_t SP4T6;
extern const SP4T_t SP4T7;
extern const SP4T_t NOT_SP4T;

//LED XGpio pins
extern const net_t LED1;
extern const net_t LED2;
extern const net_t LED3;
extern const net_t LED4;

//CTRL XGpio pins
extern const net_t INT_n;
extern const net_t EXP_RST;
extern const net_t CLR_n;
extern const net_t RESET;
extern const net_t VC0;
extern const net_t VC1;
extern const net_t VC2;
extern const net_t VC3;
extern const net_t CONSTMODE;
extern const net_t P89_clkEn;

//AFE_CTRL XGpio pins
extern const net_t AFE0_CTRL;
extern const net_t AFE1_CTRL;
extern const net_t AFE2_CTRL;
extern const net_t AFE3_CTRL;

//SPDT control XGpio pins
extern const net_t SPDT3_CTRL;
extern const net_t SPDT6_CTRL;
extern const net_t SPDT10_CTRL;
extern const net_t SPDT34_CTRL;
extern const net_t SPDT35_CTRL;
extern const net_t SPDT36_CTRL;
extern const net_t SPDT40_CTRL;
extern const net_t SPDT50_CTRL;
extern const net_t SPDT55_CTRL;
extern const net_t SPDT74_CTRL;
extern const net_t NOSPDT;

//SE XGpio pins
extern const net_t SE2;
extern const net_t SE14;
extern const net_t SE17;
extern const net_t SE20;
extern const net_t SE21;
extern const net_t SE22;
extern const net_t SE23;
extern const net_t SE24;
extern const net_t SE25;
extern const net_t SE26;
extern const net_t SE27;
extern const net_t SE28;
extern const net_t SE29;
extern const net_t SE32;
extern const net_t SE33;
extern const net_t SE36;
extern const net_t SE37;
extern const net_t SE38;
extern const net_t SE39;
extern const net_t SE40;
extern const net_t SE41;
extern const net_t SE42;
extern const net_t SE43;
extern const net_t SE44;
extern const net_t SE46;
extern const net_t SE48;
extern const net_t SE49;
extern const net_t SE50;
extern const net_t SE51;
extern const net_t SE52;
extern const net_t SE55;
extern const net_t SE56;
extern const net_t SE57;
extern const net_t SE58;
extern const net_t SE59;
extern const net_t SE74;
extern const net_t SE81;
extern const net_t SE89;

//Diff IO XGpio set up as single ended for now
extern const net_t SE4;
extern const net_t SE3;
extern const net_t SE6;
extern const net_t SE5;
extern const net_t SE8;
extern const net_t SE7;
extern const net_t SE10;
extern const net_t SE9;
extern const net_t SE12;
extern const net_t SE11;
extern const net_t SE18;
extern const net_t SE16;
extern const net_t SE34;
extern const net_t SE19;
extern const net_t SE45;
extern const net_t SE35;
extern const net_t SE53;
extern const net_t SE47;
extern const net_t SE62;
extern const net_t SE54;
extern const net_t SE64;
extern const net_t SE63;
extern const net_t SE66;
extern const net_t SE65;
extern const net_t SE68;
extern const net_t SE67;
extern const net_t SE70;
extern const net_t SE69;
extern const net_t SE72;
extern const net_t SE71;
extern const net_t SE75;
extern const net_t SE73;
extern const net_t SE77;
extern const net_t SE76;
extern const net_t SE79;
extern const net_t SE78;
extern const net_t SE82;
extern const net_t SE80;
extern const net_t SE84;
extern const net_t SE83;
extern const net_t SE86;
extern const net_t SE85;
extern const net_t SE88;
extern const net_t SE87;

//Store current output values on AXI GPIO blocks
extern uint32_t GPIO9_SE_OUTPUT_cache[2];
extern uint32_t GPIO10_DS_OUTPUT_cache[2];

//Arrays used in initialization of GPIO AXI blocks
extern const net_t* GPIO_LED[];
extern const size_t GPIO_LED_LEN;

extern const net_t* GPIO_CTRL[];
extern const size_t GPIO_CTRL_LEN;

extern const net_t* GPIO_AFE_CTRL[];
extern const size_t GPIO_AFE_CTRL_LEN;

extern const net_t* GPIO_SPDT[];
extern const size_t GPIO_SPDT_LEN;

extern const net_t* GPIO_SE[];
extern const size_t GPIO_SE_LEN;

extern const net_t* GPIO_DS[];
extern const size_t GPIO_DS_LEN;

extern const net_t* ALL_GPIO[];
extern const size_t ALL_GPIO_LEN;

extern const SWState_t P2_LS1_DAC04;
extern const SWState_t P2_DIGIO2;
//Port 3 not connected
extern const SWState_t P2_HS_DAC3A;


extern const SWState_t P17_LS1_DAC00;
extern const SWState_t P17_DIGIO17;
extern const SWState_t P17_HS_ADC1B;
extern const SWState_t P17_HS_DAC1A;
extern const SWState_t P17_DISABLE;


extern const SWState_t P21_LS1_DAC02;
extern const SWState_t P21_DIGIO21;
extern const SWState_t P21_HS_ADC0B;
extern const SWState_t P21_HS_DAC0A;


extern const SWState_t P32_LS1_DAC05;
extern const SWState_t P32_DIGIO32;
//Port 3 not connected
extern const SWState_t P32_HS_DAC3B;


extern const SWState_t P33_LS1_DAC06;
extern const SWState_t P33_DIGIO33;
extern const SWState_t P33_HS_ADC2B;
extern const SWState_t P33_HS_DAC2A;


extern const SWState_t P46_LS1_DAC07;
extern const SWState_t P46_DIGIO46;
extern const SWState_t P46_HS_ADC2A;
extern const SWState_t P46_HS_DAC2B;


extern const SWState_t P48_LS1_DAC01;
extern const SWState_t P48_DIGIO48;
extern const SWState_t P48_HS_ADC1A;
extern const SWState_t P48_HS_DAC1B;


extern const SWState_t P51_LS1_DAC03;
extern const SWState_t P51_DIGIO51;
extern const SWState_t P51_HS_ADC0A;
extern const SWState_t P51_HS_DAC0B;


extern const SWState_t P3_LS0_DAC07;
extern const SWState_t P3_DIGIO3;


extern const SWState_t P6_LS0_DAC06;
extern const SWState_t P6_DIGIO6;


extern const SWState_t P10_LS0_DAC01;
extern const SWState_t P10_DIGIO10;


extern const SWState_t P34_LS0_DAC05;
extern const SWState_t P34_DIGIO34;


extern const SWState_t P35_LS0_DAC04;
extern const SWState_t P35_DIGIO35;


extern const SWState_t P36_LS0_DAC00;
extern const SWState_t P36_DIGIO36;


extern const SWState_t P40_LS0_DAC02;
extern const SWState_t P40_DIGIO40;


extern const SWState_t P50_HS_ADC3A;
extern const SWState_t P50_DIGIO50;


extern const SWState_t P55_HS_ADC3B;
extern const SWState_t P55_DIGIO55;


extern const SWState_t P74_LS0_DAC03;
extern const SWState_t P74_DIGIO74;

//Config Settings for system
extern SWState_t Pin_Settings[];
extern const size_t PIN_SETTINGS_LEN;

#endif
