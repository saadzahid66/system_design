
module Kvazaar_QSYS (
	acc_config_channel_vz,
	acc_config_channel_data,
	acc_config_channel_lz,
	axi_dma_orig_block_channel_data_export,
	axi_dma_orig_block_channel_lz_export,
	axi_dma_orig_block_channel_vz_export,
	axi_dma_orig_block_clear_fifo_export,
	axi_dma_unfiltered1_channel_data_export,
	axi_dma_unfiltered1_channel_lz_export,
	axi_dma_unfiltered1_channel_vz_export,
	axi_dma_unfiltered1_clear_fifo_export,
	axi_dma_unfiltered2_channel_data_export,
	axi_dma_unfiltered2_channel_lz_export,
	axi_dma_unfiltered2_channel_vz_export,
	axi_dma_unfiltered2_clear_fifo_export,
	camera_control_oc_s2_address,
	camera_control_oc_s2_chipselect,
	camera_control_oc_s2_clken,
	camera_control_oc_s2_write,
	camera_control_oc_s2_readdata,
	camera_control_oc_s2_writedata,
	camera_control_oc_s2_byteenable,
	clk_clk,
	configure_camera_external_connection_export,
	dma_yuv_fifo_clk_clk,
	dma_yuv_yuv_input_u_data_in_z,
	dma_yuv_yuv_input_v_data_in_lz,
	dma_yuv_yuv_input_v_data_in_vz,
	dma_yuv_yuv_input_v_data_in_z,
	dma_yuv_yuv_input_y_data_in_vz,
	dma_yuv_yuv_input_y_data_in_z,
	dma_yuv_yuv_input_y_data_in_lz,
	dma_yuv_yuv_input_clear_dma_and_fifo,
	dma_yuv_yuv_input_u_data_in_vz,
	dma_yuv_yuv_input_u_data_in_lz,
	hps_0_f2h_cold_reset_req_reset_n,
	hps_0_f2h_debug_reset_req_reset_n,
	hps_0_f2h_stm_hw_events_stm_hwevents,
	hps_0_f2h_warm_reset_req_reset_n,
	hps_0_h2f_reset_reset_n,
	hps_0_hps_io_hps_io_emac1_inst_TX_CLK,
	hps_0_hps_io_hps_io_emac1_inst_TXD0,
	hps_0_hps_io_hps_io_emac1_inst_TXD1,
	hps_0_hps_io_hps_io_emac1_inst_TXD2,
	hps_0_hps_io_hps_io_emac1_inst_TXD3,
	hps_0_hps_io_hps_io_emac1_inst_RXD0,
	hps_0_hps_io_hps_io_emac1_inst_MDIO,
	hps_0_hps_io_hps_io_emac1_inst_MDC,
	hps_0_hps_io_hps_io_emac1_inst_RX_CTL,
	hps_0_hps_io_hps_io_emac1_inst_TX_CTL,
	hps_0_hps_io_hps_io_emac1_inst_RX_CLK,
	hps_0_hps_io_hps_io_emac1_inst_RXD1,
	hps_0_hps_io_hps_io_emac1_inst_RXD2,
	hps_0_hps_io_hps_io_emac1_inst_RXD3,
	hps_0_hps_io_hps_io_qspi_inst_IO0,
	hps_0_hps_io_hps_io_qspi_inst_IO1,
	hps_0_hps_io_hps_io_qspi_inst_IO2,
	hps_0_hps_io_hps_io_qspi_inst_IO3,
	hps_0_hps_io_hps_io_qspi_inst_SS0,
	hps_0_hps_io_hps_io_qspi_inst_CLK,
	hps_0_hps_io_hps_io_sdio_inst_CMD,
	hps_0_hps_io_hps_io_sdio_inst_D0,
	hps_0_hps_io_hps_io_sdio_inst_D1,
	hps_0_hps_io_hps_io_sdio_inst_CLK,
	hps_0_hps_io_hps_io_sdio_inst_D2,
	hps_0_hps_io_hps_io_sdio_inst_D3,
	hps_0_hps_io_hps_io_usb1_inst_D0,
	hps_0_hps_io_hps_io_usb1_inst_D1,
	hps_0_hps_io_hps_io_usb1_inst_D2,
	hps_0_hps_io_hps_io_usb1_inst_D3,
	hps_0_hps_io_hps_io_usb1_inst_D4,
	hps_0_hps_io_hps_io_usb1_inst_D5,
	hps_0_hps_io_hps_io_usb1_inst_D6,
	hps_0_hps_io_hps_io_usb1_inst_D7,
	hps_0_hps_io_hps_io_usb1_inst_CLK,
	hps_0_hps_io_hps_io_usb1_inst_STP,
	hps_0_hps_io_hps_io_usb1_inst_DIR,
	hps_0_hps_io_hps_io_usb1_inst_NXT,
	hps_0_hps_io_hps_io_spim0_inst_CLK,
	hps_0_hps_io_hps_io_spim0_inst_MOSI,
	hps_0_hps_io_hps_io_spim0_inst_MISO,
	hps_0_hps_io_hps_io_spim0_inst_SS0,
	hps_0_hps_io_hps_io_uart0_inst_RX,
	hps_0_hps_io_hps_io_uart0_inst_TX,
	hps_0_hps_io_hps_io_i2c0_inst_SDA,
	hps_0_hps_io_hps_io_i2c0_inst_SCL,
	hps_0_hps_io_hps_io_can0_inst_RX,
	hps_0_hps_io_hps_io_can0_inst_TX,
	hps_0_hps_io_hps_io_trace_inst_CLK,
	hps_0_hps_io_hps_io_trace_inst_D0,
	hps_0_hps_io_hps_io_trace_inst_D1,
	hps_0_hps_io_hps_io_trace_inst_D2,
	hps_0_hps_io_hps_io_trace_inst_D3,
	hps_0_hps_io_hps_io_trace_inst_D4,
	hps_0_hps_io_hps_io_trace_inst_D5,
	hps_0_hps_io_hps_io_trace_inst_D6,
	hps_0_hps_io_hps_io_trace_inst_D7,
	hps_0_hps_io_hps_io_gpio_inst_GPIO09,
	hps_0_hps_io_hps_io_gpio_inst_GPIO35,
	hps_0_hps_io_hps_io_gpio_inst_GPIO41,
	hps_0_hps_io_hps_io_gpio_inst_GPIO42,
	hps_0_hps_io_hps_io_gpio_inst_GPIO43,
	hps_0_hps_io_hps_io_gpio_inst_GPIO44,
	lambda_loaded_external_connection_export,
	lcu_loaded_external_connection_export,
	memory_mem_a,
	memory_mem_ba,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_ras_n,
	memory_mem_cas_n,
	memory_mem_we_n,
	memory_mem_reset_n,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	memory_mem_odt,
	memory_mem_dm,
	memory_oct_rzqin,
	reset_reset_n,
	result_ready_external_connection_export,
	sad_result_high_external_connection_export,
	sad_result_low_external_connection_export,
	yuv_ctrl_external_connection_export,
	yuv_status_external_connection_export,
	hps_0_f2h_sdram2_data_araddr,
	hps_0_f2h_sdram2_data_arlen,
	hps_0_f2h_sdram2_data_arid,
	hps_0_f2h_sdram2_data_arsize,
	hps_0_f2h_sdram2_data_arburst,
	hps_0_f2h_sdram2_data_arlock,
	hps_0_f2h_sdram2_data_arprot,
	hps_0_f2h_sdram2_data_arvalid,
	hps_0_f2h_sdram2_data_arcache,
	hps_0_f2h_sdram2_data_awaddr,
	hps_0_f2h_sdram2_data_awlen,
	hps_0_f2h_sdram2_data_awid,
	hps_0_f2h_sdram2_data_awsize,
	hps_0_f2h_sdram2_data_awburst,
	hps_0_f2h_sdram2_data_awlock,
	hps_0_f2h_sdram2_data_awprot,
	hps_0_f2h_sdram2_data_awvalid,
	hps_0_f2h_sdram2_data_awcache,
	hps_0_f2h_sdram2_data_bresp,
	hps_0_f2h_sdram2_data_bid,
	hps_0_f2h_sdram2_data_bvalid,
	hps_0_f2h_sdram2_data_bready,
	hps_0_f2h_sdram2_data_arready,
	hps_0_f2h_sdram2_data_awready,
	hps_0_f2h_sdram2_data_rready,
	hps_0_f2h_sdram2_data_rdata,
	hps_0_f2h_sdram2_data_rresp,
	hps_0_f2h_sdram2_data_rlast,
	hps_0_f2h_sdram2_data_rid,
	hps_0_f2h_sdram2_data_rvalid,
	hps_0_f2h_sdram2_data_wlast,
	hps_0_f2h_sdram2_data_wvalid,
	hps_0_f2h_sdram2_data_wdata,
	hps_0_f2h_sdram2_data_wstrb,
	hps_0_f2h_sdram2_data_wready,
	hps_0_f2h_sdram2_data_wid,
	hps_0_f2h_sdram1_data_araddr,
	hps_0_f2h_sdram1_data_arlen,
	hps_0_f2h_sdram1_data_arid,
	hps_0_f2h_sdram1_data_arsize,
	hps_0_f2h_sdram1_data_arburst,
	hps_0_f2h_sdram1_data_arlock,
	hps_0_f2h_sdram1_data_arprot,
	hps_0_f2h_sdram1_data_arvalid,
	hps_0_f2h_sdram1_data_arcache,
	hps_0_f2h_sdram1_data_awaddr,
	hps_0_f2h_sdram1_data_awlen,
	hps_0_f2h_sdram1_data_awid,
	hps_0_f2h_sdram1_data_awsize,
	hps_0_f2h_sdram1_data_awburst,
	hps_0_f2h_sdram1_data_awlock,
	hps_0_f2h_sdram1_data_awprot,
	hps_0_f2h_sdram1_data_awvalid,
	hps_0_f2h_sdram1_data_awcache,
	hps_0_f2h_sdram1_data_bresp,
	hps_0_f2h_sdram1_data_bid,
	hps_0_f2h_sdram1_data_bvalid,
	hps_0_f2h_sdram1_data_bready,
	hps_0_f2h_sdram1_data_arready,
	hps_0_f2h_sdram1_data_awready,
	hps_0_f2h_sdram1_data_rready,
	hps_0_f2h_sdram1_data_rdata,
	hps_0_f2h_sdram1_data_rresp,
	hps_0_f2h_sdram1_data_rlast,
	hps_0_f2h_sdram1_data_rid,
	hps_0_f2h_sdram1_data_rvalid,
	hps_0_f2h_sdram1_data_wlast,
	hps_0_f2h_sdram1_data_wvalid,
	hps_0_f2h_sdram1_data_wdata,
	hps_0_f2h_sdram1_data_wstrb,
	hps_0_f2h_sdram1_data_wready,
	hps_0_f2h_sdram1_data_wid,
	hps_0_f2h_sdram0_data_araddr,
	hps_0_f2h_sdram0_data_arlen,
	hps_0_f2h_sdram0_data_arid,
	hps_0_f2h_sdram0_data_arsize,
	hps_0_f2h_sdram0_data_arburst,
	hps_0_f2h_sdram0_data_arlock,
	hps_0_f2h_sdram0_data_arprot,
	hps_0_f2h_sdram0_data_arvalid,
	hps_0_f2h_sdram0_data_arcache,
	hps_0_f2h_sdram0_data_awaddr,
	hps_0_f2h_sdram0_data_awlen,
	hps_0_f2h_sdram0_data_awid,
	hps_0_f2h_sdram0_data_awsize,
	hps_0_f2h_sdram0_data_awburst,
	hps_0_f2h_sdram0_data_awlock,
	hps_0_f2h_sdram0_data_awprot,
	hps_0_f2h_sdram0_data_awvalid,
	hps_0_f2h_sdram0_data_awcache,
	hps_0_f2h_sdram0_data_bresp,
	hps_0_f2h_sdram0_data_bid,
	hps_0_f2h_sdram0_data_bvalid,
	hps_0_f2h_sdram0_data_bready,
	hps_0_f2h_sdram0_data_arready,
	hps_0_f2h_sdram0_data_awready,
	hps_0_f2h_sdram0_data_rready,
	hps_0_f2h_sdram0_data_rdata,
	hps_0_f2h_sdram0_data_rresp,
	hps_0_f2h_sdram0_data_rlast,
	hps_0_f2h_sdram0_data_rid,
	hps_0_f2h_sdram0_data_rvalid,
	hps_0_f2h_sdram0_data_wlast,
	hps_0_f2h_sdram0_data_wvalid,
	hps_0_f2h_sdram0_data_wdata,
	hps_0_f2h_sdram0_data_wstrb,
	hps_0_f2h_sdram0_data_wready,
	hps_0_f2h_sdram0_data_wid);	

	input		acc_config_channel_vz;
	output	[31:0]	acc_config_channel_data;
	output		acc_config_channel_lz;
	output	[31:0]	axi_dma_orig_block_channel_data_export;
	output		axi_dma_orig_block_channel_lz_export;
	input		axi_dma_orig_block_channel_vz_export;
	input		axi_dma_orig_block_clear_fifo_export;
	output	[15:0]	axi_dma_unfiltered1_channel_data_export;
	output		axi_dma_unfiltered1_channel_lz_export;
	input		axi_dma_unfiltered1_channel_vz_export;
	input		axi_dma_unfiltered1_clear_fifo_export;
	output	[15:0]	axi_dma_unfiltered2_channel_data_export;
	output		axi_dma_unfiltered2_channel_lz_export;
	input		axi_dma_unfiltered2_channel_vz_export;
	input		axi_dma_unfiltered2_clear_fifo_export;
	input	[5:0]	camera_control_oc_s2_address;
	input		camera_control_oc_s2_chipselect;
	input		camera_control_oc_s2_clken;
	input		camera_control_oc_s2_write;
	output	[15:0]	camera_control_oc_s2_readdata;
	input	[15:0]	camera_control_oc_s2_writedata;
	input	[1:0]	camera_control_oc_s2_byteenable;
	input		clk_clk;
	output		configure_camera_external_connection_export;
	input		dma_yuv_fifo_clk_clk;
	input	[7:0]	dma_yuv_yuv_input_u_data_in_z;
	output		dma_yuv_yuv_input_v_data_in_lz;
	input		dma_yuv_yuv_input_v_data_in_vz;
	input	[7:0]	dma_yuv_yuv_input_v_data_in_z;
	input		dma_yuv_yuv_input_y_data_in_vz;
	input	[7:0]	dma_yuv_yuv_input_y_data_in_z;
	output		dma_yuv_yuv_input_y_data_in_lz;
	input		dma_yuv_yuv_input_clear_dma_and_fifo;
	input		dma_yuv_yuv_input_u_data_in_vz;
	output		dma_yuv_yuv_input_u_data_in_lz;
	input		hps_0_f2h_cold_reset_req_reset_n;
	input		hps_0_f2h_debug_reset_req_reset_n;
	input	[27:0]	hps_0_f2h_stm_hw_events_stm_hwevents;
	input		hps_0_f2h_warm_reset_req_reset_n;
	output		hps_0_h2f_reset_reset_n;
	output		hps_0_hps_io_hps_io_emac1_inst_TX_CLK;
	output		hps_0_hps_io_hps_io_emac1_inst_TXD0;
	output		hps_0_hps_io_hps_io_emac1_inst_TXD1;
	output		hps_0_hps_io_hps_io_emac1_inst_TXD2;
	output		hps_0_hps_io_hps_io_emac1_inst_TXD3;
	input		hps_0_hps_io_hps_io_emac1_inst_RXD0;
	inout		hps_0_hps_io_hps_io_emac1_inst_MDIO;
	output		hps_0_hps_io_hps_io_emac1_inst_MDC;
	input		hps_0_hps_io_hps_io_emac1_inst_RX_CTL;
	output		hps_0_hps_io_hps_io_emac1_inst_TX_CTL;
	input		hps_0_hps_io_hps_io_emac1_inst_RX_CLK;
	input		hps_0_hps_io_hps_io_emac1_inst_RXD1;
	input		hps_0_hps_io_hps_io_emac1_inst_RXD2;
	input		hps_0_hps_io_hps_io_emac1_inst_RXD3;
	inout		hps_0_hps_io_hps_io_qspi_inst_IO0;
	inout		hps_0_hps_io_hps_io_qspi_inst_IO1;
	inout		hps_0_hps_io_hps_io_qspi_inst_IO2;
	inout		hps_0_hps_io_hps_io_qspi_inst_IO3;
	output		hps_0_hps_io_hps_io_qspi_inst_SS0;
	output		hps_0_hps_io_hps_io_qspi_inst_CLK;
	inout		hps_0_hps_io_hps_io_sdio_inst_CMD;
	inout		hps_0_hps_io_hps_io_sdio_inst_D0;
	inout		hps_0_hps_io_hps_io_sdio_inst_D1;
	output		hps_0_hps_io_hps_io_sdio_inst_CLK;
	inout		hps_0_hps_io_hps_io_sdio_inst_D2;
	inout		hps_0_hps_io_hps_io_sdio_inst_D3;
	inout		hps_0_hps_io_hps_io_usb1_inst_D0;
	inout		hps_0_hps_io_hps_io_usb1_inst_D1;
	inout		hps_0_hps_io_hps_io_usb1_inst_D2;
	inout		hps_0_hps_io_hps_io_usb1_inst_D3;
	inout		hps_0_hps_io_hps_io_usb1_inst_D4;
	inout		hps_0_hps_io_hps_io_usb1_inst_D5;
	inout		hps_0_hps_io_hps_io_usb1_inst_D6;
	inout		hps_0_hps_io_hps_io_usb1_inst_D7;
	input		hps_0_hps_io_hps_io_usb1_inst_CLK;
	output		hps_0_hps_io_hps_io_usb1_inst_STP;
	input		hps_0_hps_io_hps_io_usb1_inst_DIR;
	input		hps_0_hps_io_hps_io_usb1_inst_NXT;
	output		hps_0_hps_io_hps_io_spim0_inst_CLK;
	output		hps_0_hps_io_hps_io_spim0_inst_MOSI;
	input		hps_0_hps_io_hps_io_spim0_inst_MISO;
	output		hps_0_hps_io_hps_io_spim0_inst_SS0;
	input		hps_0_hps_io_hps_io_uart0_inst_RX;
	output		hps_0_hps_io_hps_io_uart0_inst_TX;
	inout		hps_0_hps_io_hps_io_i2c0_inst_SDA;
	inout		hps_0_hps_io_hps_io_i2c0_inst_SCL;
	input		hps_0_hps_io_hps_io_can0_inst_RX;
	output		hps_0_hps_io_hps_io_can0_inst_TX;
	output		hps_0_hps_io_hps_io_trace_inst_CLK;
	output		hps_0_hps_io_hps_io_trace_inst_D0;
	output		hps_0_hps_io_hps_io_trace_inst_D1;
	output		hps_0_hps_io_hps_io_trace_inst_D2;
	output		hps_0_hps_io_hps_io_trace_inst_D3;
	output		hps_0_hps_io_hps_io_trace_inst_D4;
	output		hps_0_hps_io_hps_io_trace_inst_D5;
	output		hps_0_hps_io_hps_io_trace_inst_D6;
	output		hps_0_hps_io_hps_io_trace_inst_D7;
	inout		hps_0_hps_io_hps_io_gpio_inst_GPIO09;
	inout		hps_0_hps_io_hps_io_gpio_inst_GPIO35;
	inout		hps_0_hps_io_hps_io_gpio_inst_GPIO41;
	inout		hps_0_hps_io_hps_io_gpio_inst_GPIO42;
	inout		hps_0_hps_io_hps_io_gpio_inst_GPIO43;
	inout		hps_0_hps_io_hps_io_gpio_inst_GPIO44;
	input		lambda_loaded_external_connection_export;
	input		lcu_loaded_external_connection_export;
	output	[14:0]	memory_mem_a;
	output	[2:0]	memory_mem_ba;
	output		memory_mem_ck;
	output		memory_mem_ck_n;
	output		memory_mem_cke;
	output		memory_mem_cs_n;
	output		memory_mem_ras_n;
	output		memory_mem_cas_n;
	output		memory_mem_we_n;
	output		memory_mem_reset_n;
	inout	[39:0]	memory_mem_dq;
	inout	[4:0]	memory_mem_dqs;
	inout	[4:0]	memory_mem_dqs_n;
	output		memory_mem_odt;
	output	[4:0]	memory_mem_dm;
	input		memory_oct_rzqin;
	input		reset_reset_n;
	input	[1:0]	result_ready_external_connection_export;
	input	[31:0]	sad_result_high_external_connection_export;
	input	[31:0]	sad_result_low_external_connection_export;
	output	[3:0]	yuv_ctrl_external_connection_export;
	input		yuv_status_external_connection_export;
	input	[31:0]	hps_0_f2h_sdram2_data_araddr;
	input	[3:0]	hps_0_f2h_sdram2_data_arlen;
	input	[7:0]	hps_0_f2h_sdram2_data_arid;
	input	[2:0]	hps_0_f2h_sdram2_data_arsize;
	input	[1:0]	hps_0_f2h_sdram2_data_arburst;
	input	[1:0]	hps_0_f2h_sdram2_data_arlock;
	input	[2:0]	hps_0_f2h_sdram2_data_arprot;
	input		hps_0_f2h_sdram2_data_arvalid;
	input	[3:0]	hps_0_f2h_sdram2_data_arcache;
	input	[31:0]	hps_0_f2h_sdram2_data_awaddr;
	input	[3:0]	hps_0_f2h_sdram2_data_awlen;
	input	[7:0]	hps_0_f2h_sdram2_data_awid;
	input	[2:0]	hps_0_f2h_sdram2_data_awsize;
	input	[1:0]	hps_0_f2h_sdram2_data_awburst;
	input	[1:0]	hps_0_f2h_sdram2_data_awlock;
	input	[2:0]	hps_0_f2h_sdram2_data_awprot;
	input		hps_0_f2h_sdram2_data_awvalid;
	input	[3:0]	hps_0_f2h_sdram2_data_awcache;
	output	[1:0]	hps_0_f2h_sdram2_data_bresp;
	output	[7:0]	hps_0_f2h_sdram2_data_bid;
	output		hps_0_f2h_sdram2_data_bvalid;
	input		hps_0_f2h_sdram2_data_bready;
	output		hps_0_f2h_sdram2_data_arready;
	output		hps_0_f2h_sdram2_data_awready;
	input		hps_0_f2h_sdram2_data_rready;
	output	[63:0]	hps_0_f2h_sdram2_data_rdata;
	output	[1:0]	hps_0_f2h_sdram2_data_rresp;
	output		hps_0_f2h_sdram2_data_rlast;
	output	[7:0]	hps_0_f2h_sdram2_data_rid;
	output		hps_0_f2h_sdram2_data_rvalid;
	input		hps_0_f2h_sdram2_data_wlast;
	input		hps_0_f2h_sdram2_data_wvalid;
	input	[63:0]	hps_0_f2h_sdram2_data_wdata;
	input	[7:0]	hps_0_f2h_sdram2_data_wstrb;
	output		hps_0_f2h_sdram2_data_wready;
	input	[7:0]	hps_0_f2h_sdram2_data_wid;
	input	[31:0]	hps_0_f2h_sdram1_data_araddr;
	input	[3:0]	hps_0_f2h_sdram1_data_arlen;
	input	[7:0]	hps_0_f2h_sdram1_data_arid;
	input	[2:0]	hps_0_f2h_sdram1_data_arsize;
	input	[1:0]	hps_0_f2h_sdram1_data_arburst;
	input	[1:0]	hps_0_f2h_sdram1_data_arlock;
	input	[2:0]	hps_0_f2h_sdram1_data_arprot;
	input		hps_0_f2h_sdram1_data_arvalid;
	input	[3:0]	hps_0_f2h_sdram1_data_arcache;
	input	[31:0]	hps_0_f2h_sdram1_data_awaddr;
	input	[3:0]	hps_0_f2h_sdram1_data_awlen;
	input	[7:0]	hps_0_f2h_sdram1_data_awid;
	input	[2:0]	hps_0_f2h_sdram1_data_awsize;
	input	[1:0]	hps_0_f2h_sdram1_data_awburst;
	input	[1:0]	hps_0_f2h_sdram1_data_awlock;
	input	[2:0]	hps_0_f2h_sdram1_data_awprot;
	input		hps_0_f2h_sdram1_data_awvalid;
	input	[3:0]	hps_0_f2h_sdram1_data_awcache;
	output	[1:0]	hps_0_f2h_sdram1_data_bresp;
	output	[7:0]	hps_0_f2h_sdram1_data_bid;
	output		hps_0_f2h_sdram1_data_bvalid;
	input		hps_0_f2h_sdram1_data_bready;
	output		hps_0_f2h_sdram1_data_arready;
	output		hps_0_f2h_sdram1_data_awready;
	input		hps_0_f2h_sdram1_data_rready;
	output	[63:0]	hps_0_f2h_sdram1_data_rdata;
	output	[1:0]	hps_0_f2h_sdram1_data_rresp;
	output		hps_0_f2h_sdram1_data_rlast;
	output	[7:0]	hps_0_f2h_sdram1_data_rid;
	output		hps_0_f2h_sdram1_data_rvalid;
	input		hps_0_f2h_sdram1_data_wlast;
	input		hps_0_f2h_sdram1_data_wvalid;
	input	[63:0]	hps_0_f2h_sdram1_data_wdata;
	input	[7:0]	hps_0_f2h_sdram1_data_wstrb;
	output		hps_0_f2h_sdram1_data_wready;
	input	[7:0]	hps_0_f2h_sdram1_data_wid;
	input	[31:0]	hps_0_f2h_sdram0_data_araddr;
	input	[3:0]	hps_0_f2h_sdram0_data_arlen;
	input	[7:0]	hps_0_f2h_sdram0_data_arid;
	input	[2:0]	hps_0_f2h_sdram0_data_arsize;
	input	[1:0]	hps_0_f2h_sdram0_data_arburst;
	input	[1:0]	hps_0_f2h_sdram0_data_arlock;
	input	[2:0]	hps_0_f2h_sdram0_data_arprot;
	input		hps_0_f2h_sdram0_data_arvalid;
	input	[3:0]	hps_0_f2h_sdram0_data_arcache;
	input	[31:0]	hps_0_f2h_sdram0_data_awaddr;
	input	[3:0]	hps_0_f2h_sdram0_data_awlen;
	input	[7:0]	hps_0_f2h_sdram0_data_awid;
	input	[2:0]	hps_0_f2h_sdram0_data_awsize;
	input	[1:0]	hps_0_f2h_sdram0_data_awburst;
	input	[1:0]	hps_0_f2h_sdram0_data_awlock;
	input	[2:0]	hps_0_f2h_sdram0_data_awprot;
	input		hps_0_f2h_sdram0_data_awvalid;
	input	[3:0]	hps_0_f2h_sdram0_data_awcache;
	output	[1:0]	hps_0_f2h_sdram0_data_bresp;
	output	[7:0]	hps_0_f2h_sdram0_data_bid;
	output		hps_0_f2h_sdram0_data_bvalid;
	input		hps_0_f2h_sdram0_data_bready;
	output		hps_0_f2h_sdram0_data_arready;
	output		hps_0_f2h_sdram0_data_awready;
	input		hps_0_f2h_sdram0_data_rready;
	output	[63:0]	hps_0_f2h_sdram0_data_rdata;
	output	[1:0]	hps_0_f2h_sdram0_data_rresp;
	output		hps_0_f2h_sdram0_data_rlast;
	output	[7:0]	hps_0_f2h_sdram0_data_rid;
	output		hps_0_f2h_sdram0_data_rvalid;
	input		hps_0_f2h_sdram0_data_wlast;
	input		hps_0_f2h_sdram0_data_wvalid;
	input	[63:0]	hps_0_f2h_sdram0_data_wdata;
	input	[7:0]	hps_0_f2h_sdram0_data_wstrb;
	output		hps_0_f2h_sdram0_data_wready;
	input	[7:0]	hps_0_f2h_sdram0_data_wid;
endmodule
