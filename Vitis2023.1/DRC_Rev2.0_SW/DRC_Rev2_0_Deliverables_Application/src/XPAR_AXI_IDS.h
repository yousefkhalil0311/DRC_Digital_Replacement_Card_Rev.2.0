#ifndef XPAR_AXI_IDS_H
#define XPAR_AXI_IDS_H

//define GPIO IDs for the IO and control signals
#define GPIO8_CTRL_ID	XPAR_AXI_GPIO_8_DEVICE_ID	//axi8 4 BITS
#define GPIO0_LEDS_ID 	XPAR_AXI_GPIO_0_DEVICE_ID	//axi0 4 BITS
#define GPIO9_SE_ID 	XPAR_AXI_GPIO_9_DEVICE_ID	//axi9 ch2 -> IOBUF_SE_32_37 ch1 -> IOBUF_SE_0_31
#define GPIO10_DS_ID	XPAR_AXI_GPIO_10_DEVICE_ID	//axi10 ch2 -> IOBUF_DS_0_21_p ch1 -> IOBUF_DS_0_21_n
#define GPIO7_SPDT_ID 	XPAR_AXI_GPIO_7_DEVICE_ID	//axi7 10BITS

//define GPIO IDs for block used to control DAC waveform frequency
#define GPIO1_SPDCTRL_ID	XPAR_AXI_GPIO_1_DEVICE_ID

//define IIC IDs for IO expander's IIC bus
#define IIC0_IOEXP_ID	XPAR_IIC_0_DEVICE_ID
#define IIC1_IOEXP_ID	XPAR_IIC_1_DEVICE_ID
#define IIC2_IOEXP_ID	XPAR_IIC_2_DEVICE_ID

//define SPI IDs for the AFE SPI bus and LSDAC SPI bus
#define SPI0_AFE_ID 	XPAR_SPI_0_DEVICE_ID	//SPI0 - 4 SS pins
#define SPI1_LSDAC_ID 	XPAR_SPI_1_DEVICE_ID	//SPI1 - 2 SS pins

//define GPIO IDs for raw ADC samples
#define GPIO20_ADCDATA_0_ID		XPAR_AXI_GPIO_20_DEVICE_ID
#define GPIO21_ADCDATA_1_ID		XPAR_AXI_GPIO_21_DEVICE_ID
#define GPIO22_ADCDATA_2_ID		XPAR_AXI_GPIO_22_DEVICE_ID
#define GPIO23_ADCDATA_3_ID		XPAR_AXI_GPIO_23_DEVICE_ID

//define GPIO ID for PL clock divider on and off counts
#define GPIO19_PL_OUTPUT_FREQ_ID	XPAR_AXI_GPIO_19_DEVICE_ID

//PS UART interface ID
#define UART_PS_ID				XPAR_XUARTPS_1_DEVICE_ID


//BRAM base address
#define BRAM_BASE_ADDRESS XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR


#endif
