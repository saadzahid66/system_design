#include "process.hh"

void process3::read_value ()
{
	sc_uint<32> out_value; //Value for the fifo in output
	sc_uint<32> read_enable; //Becomes zero, when we may read.

	while( true )
	{
		// READ VALUE IN MEMORY

		//Wait until we get read enable.
		//NOTICE: accessing shared memory WILL take clock cycles!
		do
		{
			wait();
			read_enable = memory->read( ENABLE_INDEX );
			out_value = memory->read(VALUE_INDEX );
		}
		while ( read_enable ==  0);

		//Read value, set read enable
		//out_value = memory->read(VALUE_INDEX );
		memory->write( 0, ENABLE_INDEX );

		// WRITE VALUE IN FIFO

		//NOTICE: blocking operation, so it may take more than one cycle!
		fifo.write(out_value);
		//How long the fifo communication takes
		wait( P3_P4_DELAY, SC_NS );
	}
}
