#ifndef XPAR_AXI_IDS_H
#define XPAR_AXI_IDS_H

//define GPIO IDs for the IO and control signals
#define GPIO8_CTRL_ID	XPAR_AXI_GPIO_8_DEVICE_ID	//axi8 4 BITS
#define GPIO0_LEDS_ID 	XPAR_AXI_GPIO_0_DEVICE_ID	//axi0 4 BITS
#define GPIO9_SE_ID 	XPAR_AXI_GPIO_9_DEVICE_ID	//axi9 ch2 -> IOBUF_SE_32_37 ch1 -> IOBUF_SE_0_31
#define GPIO10_DS_ID	XPAR_AXI_GPIO_10_DEVICE_ID	//axi10 ch2 -> IOBUF_DS_0_21_p ch1 -> IOBUF_DS_0_21_n
#define GPIO7_SPDT_ID 	XPAR_AXI_GPIO_7_DEVICE_ID	//axi7 10BITS

//define GPIO IDs for AFE Converter IDs (Removed in PL driven Converters)
//#define GPIO11_CLKP_ID	XPAR_AXI_GPIO_11_DEVICE_ID	//axi11 1BIT
//#define GPIO6_DATA3_ID 	XPAR_AXI_GPIO_6_DEVICE_ID	//axi6 ch1->DATA 12 BITS ch2->clk 1 BIT
//#define GPIO3_DATA0_ID 	XPAR_AXI_GPIO_3_DEVICE_ID	//axi3 ch1->DATA 12 BITS ch2->clk 1 BIT
//#define GPIO5_DATA2_ID 	XPAR_AXI_GPIO_5_DEVICE_ID	//axi5 ch1->DATA 12 BITS ch2->clk 1 BIT
//#define GPIO4_DATA1_ID 	XPAR_AXI_GPIO_4_DEVICE_ID	//axi4 ch1->DATA 12 BITS ch2->clk 1 BIT


//define GPIO IDs for block used to control DAC waveform frequency
#define GPIO1_SPDCTRL_ID	XPAR_AXI_GPIO_1_DEVICE_ID

//define IIC IDs for IO expander's IIC bus
#define IIC0_IOEXP_ID	XPAR_IIC_0_DEVICE_ID

//define SPI IDs for the AFE SPI bus and LSDAC SPI bus
#define SPI0_AFE_ID 	XPAR_SPI_0_DEVICE_ID	//SPI0 - 4 SS pins
#define SPI1_LSDAC_ID 	XPAR_SPI_1_DEVICE_ID	//SPI1 - 2 SS pins

#endif
