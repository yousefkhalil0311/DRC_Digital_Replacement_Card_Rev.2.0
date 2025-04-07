#include "AFE7222.h"
#include "xspi.h"

int AFE_Init (XSpi *instance, uint8_t *data, int num_bytes, uint32_t CS){

	int Status;
	XSpi_SetSlaveSelect(instance, CS);

	uint8_t data_words[num_bytes];
	for (int i = 0; i < num_bytes; i++){
		data_words[i] = data[i];
	}

	uint8_t Rx_buffer[3];

	for (int i = 0; i < num_bytes; i+=3){
		Status = XSpi_Transfer(instance, &data_words[i], Rx_buffer, 3);
		if (Status != XST_SUCCESS){
			return XST_FAILURE;
		}
	}

	return XST_SUCCESS;
}
