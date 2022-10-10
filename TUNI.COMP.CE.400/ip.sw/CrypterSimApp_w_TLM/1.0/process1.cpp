#include "process.hh"


void process1::encrypt ()
{
	sc_uint<32> encrypted_value; // The crypted value, is to be fed to socket.
  tlm::tlm_generic_payload* trans = new tlm::tlm_generic_payload; // The payload of socket
	sc_time delay = sc_time(10, SC_NS);

	while( true )
	{
		//Inform that we're ready for next input value
		//WAIT IS MANDATORY. Otherwise the feeder of input cannot proceed.
		input_ready.notify();
		wait();

		//Read input value...
		encrypted_value = in_value;

		//Switch places between first and last 16 bits.
		encrypted_value = ( (encrypted_value.range( 15, 0 ) << 16 ) + encrypted_value.range( 31, 16 ) );

		//Encrypt the value with the key.
		encrypted_value = encrypted_value ^ KEY;

		//How long the processing takes
		wait( P1_LATENCY, SC_NS );

		// Convert the encrypted value to a unsigned int
		convert = encrypted_value.to_uint();

		// Set attribute for transmission
		trans->set_command(tlm::TLM_WRITE_COMMAND); // Writing mode
		trans->set_address(index++); // Index of the encrypted value
		trans->set_data_ptr(reinterpret_cast<unsigned char*> (&convert));
		trans->set_data_length(sizeof(uint *));
		trans->set_streaming_width(sizeof(uint *));
		trans->set_byte_enable_ptr( 0 );
		trans->set_dmi_allowed( false );
		trans->set_response_status( tlm::TLM_INCOMPLETE_RESPONSE );

		socket->b_transport( *trans, delay );

		wait(delay);
	}
}
