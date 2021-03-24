#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include <xuartlite.h>
#include "xil_types.h"
#include <stdlib.h>

#define MEMSIZE 16
volatile unsigned int* membase = (unsigned int*) XPAR_MIG_7SERIES_0_BASEADDR;

#define imageSize 192*192
#define headerSize 1080

int main()
{
	u8 *imageData;
	u32 receivedBytes = 0;
	u32 total = 0;
	XUartLite_Config *myConfig;
	//myConfig->BaudRate = 9600;
	XUartLite myUart;
	init_platform();
	u32 status;
	xil_printf("hi");

	imageData = malloc(sizeof(u8)*(imageSize+headerSize));
	myConfig = XUartLite_LookupConfig(XPAR_MICROBLAZE_0_AXI_INTC_DEVICE_ID);
	status = XUartLite_CfgInitialize(&myUart, myConfig, XPAR_MICROBLAZE_0_AXI_INTC_BASEADDR);

	if(status != XST_SUCCESS)
		printf("failed");
	xil_printf("hi2");
	while(total <  imageSize+1080){
		receivedBytes = XUartLite_Recv(&myUart, (u8*)&imageData[total], 100);

		total += receivedBytes;
	}

	for(int i = 0; i <10; i++){
		xil_printf("%0x", imageData[i]);
	}
	cleanup_platform();
	return 0;
}
