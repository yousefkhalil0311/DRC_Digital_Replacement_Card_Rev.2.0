#include "LSDAC.h"

//instance, CHANNEL => 0x00 - 0x07, DATA => 0 - 4095
int LS_DAC_Write(const LSDAC_t *LSDAC, uint8_t CHANNEL, uint16_t DATA){

	int Status;
	XSpi_SetSlaveSelect(LSDAC->instance, LSDAC->CS);

	uint8_t CMD = 0x03; //Write to channel n, update channel n

	//LTC2666-12 uses 24 bit (3 bytes) input words. (4 bit Command, 4 bit DAC Channel select, 16 bits for data (4 LSBs are don't care bits)
	uint8_t data_words[3] = {
			(CMD << 4) | (0x0F & CHANNEL),
			DATA >> 4,
			(DATA << 4) & 0xFF
	};

	uint8_t Rx_buffer[3];
	//Write words to specified LS_DAC
	Status = XSpi_Transfer(LSDAC->instance, data_words, Rx_buffer, 3);
	if(Status != XST_SUCCESS){
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int LS_DAC_WriteAll(const LSDAC_t *LSDAC, uint16_t DATA){

	int Status;
	XSpi_SetSlaveSelect(LSDAC->instance, LSDAC->CS);

	uint8_t CMD = 0x0A; //Write to all, update all

	//LTC2666-12 uses 24 bit (3 bytes) input words. (4 bit Command, 4 bit DAC Channel select, 16 bits for data (4 LSBs are don't care bits)
	uint8_t data_words[3] = {
			(CMD << 4),          //CHANNEL bits don't matter here
			DATA >> 4,           //data in lower 12 bits of DATA, need to shift down to take bits representing highest 8 bits of data
			(DATA << 4) & 0xFF   //take lower 4 bits of data and pad with 4 zeros
	};

	uint8_t Rx_buffer[3];
	//Write words to specified LS_DAC
	Status = XSpi_Transfer(LSDAC->instance, data_words, Rx_buffer, 3);
	if(Status != XST_SUCCESS){
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

//Wrapper for LS_DAC_Write. Writes voltage to LSDAC channel
int LS_DAC_WriteVoltage(const LSDAC_t *LSDAC, uint8_t CHANNEL, double voltage){

	int voltageValue = (int)((voltage * 4095) / 10);

	return LS_DAC_Write(LSDAC, CHANNEL, voltageValue);

}
