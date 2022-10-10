#include "process.hh"

void process4::decrypt ()
{
	sc_uint<32> decrypted_value; // The decrypted value, is to be fed to output.
	sc_uint<32> encrypted_value; // The decrypted value, is to be rear from FIFO.

	while( true )
	{
		// READ VALUE FROM FIFO

		//NOTICE: blocking operation, so it may take more than one cycle!
		encrypted_value = fifo.read();
		//How long the fifo communication takes
		wait( P3_P4_DELAY, SC_NS );

		//Decrypt with the key.
		decrypted_value = encrypted_value ^ KEY;

		//Undo the permutation.
		//decrypted_value = ( decrypted_value << 16 ) + (uint16_t)( decrypted_value >> 16 );
		decrypted_value = ( (decrypted_value.range( 15, 0 ) << 16 ) + decrypted_value.range( 31, 16 ) );		
		//How long the processing takes
		wait( P4_LATENCY, SC_NS );

		//WRITE VALUE TO OUTPUT
		out_value.write(decrypted_value); //output the system

		//Signal to the user of the system so that it knows about new output.
		//NOTICE: blocking operation, so it may take more than one cycle!
		output_valid.notify();
		wait();
	}
}
