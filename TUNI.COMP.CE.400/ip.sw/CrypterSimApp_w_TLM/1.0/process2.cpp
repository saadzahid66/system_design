#include "process.hh"

void process2::b_transport( tlm::tlm_generic_payload& trans, sc_time& delay )
{
	// Get the response
	tlm::tlm_command cmd = trans.get_command();
  sc_dt::uint64    adr = trans.get_address();
  unsigned char*   ptr = trans.get_data_ptr();
  unsigned int     len = trans.get_data_length();
  unsigned char*   byt = trans.get_byte_enable_ptr();
  unsigned int     wid = trans.get_streaming_width();
	//cout << "p2: adr = " << adr << endl;

	// Check some parameters
	if (/*adr >= sc_dt::uint64(SIZE) || */byt != 0 || len > VALUE_ARRAY_SIZE || wid < len)
	{
    SC_REPORT_ERROR("TLM-2", "Target does not support given generic payload transaction");
	}

	uint encrypted_value;

	memcpy(&encrypted_value,ptr,len);

	// Save value to the array
	values[adr] = encrypted_value;
	values_available++;

	// Successful completion of the transaction
	trans.set_response_status( tlm::TLM_OK_RESPONSE );
}


void process2::write_value ()
{
	sc_uint<32> read_value; //Value from the fifo
	sc_uint<32> write_enable; //Becomes zero, when we may write.

	while( true )
	{

		while(values_available == 0)
		{
			wait();
		}

		// Read the available value in the buffer
		read_value = values[index++];
		values_available--;

		// Wait until we get write enable
		// NOTICE: accessing shared memory WILL take clock cycles!
		do
		{
			wait();
			write_enable = memory->read( ENABLE_INDEX );
		}
		while ( write_enable == 1 );

		// Write value, set read enable
		memory->write( read_value, VALUE_INDEX );
		memory->write( 1, ENABLE_INDEX );

	}
}
