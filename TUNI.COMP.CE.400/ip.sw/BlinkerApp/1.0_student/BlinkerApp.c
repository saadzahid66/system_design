#include "blinker_hal.h"
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
	uint8_t mask;

	// Initialize HAL layer
	init_HAL();

	while ( 1 )
	{
		usleep(1000);
		
		// Read buttons value
		mask = read_btn();
		
		// Set the LEDs according to this value
		set_led(mask);		
	}

	return EXIT_SUCCESS;
}
