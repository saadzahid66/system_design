//-----------------------------------------------------------------------------
// File          : Kvazaar_QSYS.v
// Creation date : 23.11.2022
// Creation time : 10:38:08
// Description   : 1. Import missing ports
//                 2. Connect added ports to corresponding  bus interfaces
//                 3. Check Ad-hoc ports
//                     - result ready pio export
//                     - lcu loaded pio export
//                     - lambda loaded pio export
//                     - top_ref/unfiltered1 clear export
//                     - left_ref/unfiltered2 clear export
//                     - orig clear export
// Created by    : 
// Tool : Kactus2 3.5.84 32-bit
// Plugin : Verilog generator 2.1
// This file was generated based on IP-XACT component TUNI.fi:ip.hw:Kvazaar_QSYS:1.0_student
// whose XML file is P:/18/TUNI.fi/ip.hw/Kvazaar_QSYS/1.0_student/k2u_Kvazaar_QSYS.1.0_student.xml
//-----------------------------------------------------------------------------

module Kvazaar_QSYS(
    // Interface: HPS_connection
    // DONE
    input  wire                         hps_0_hps_io_hps_io_can0_inst_RX,    // .hps_io_can0_inst_RX
    input  wire                         hps_0_hps_io_hps_io_emac1_inst_RX_CLK,    // .hps_io_emac1_inst_RX_CLK
    input  wire                         hps_0_hps_io_hps_io_emac1_inst_RX_CTL,    // .hps_io_emac1_inst_RX_CTL
    input  wire                         hps_0_hps_io_hps_io_emac1_inst_RXD0,    // .hps_io_emac1_inst_RXD0
    input  wire                         hps_0_hps_io_hps_io_emac1_inst_RXD1,    // .hps_io_emac1_inst_RXD1
    input  wire                         hps_0_hps_io_hps_io_emac1_inst_RXD2,    // .hps_io_emac1_inst_RXD2
    input  wire                         hps_0_hps_io_hps_io_emac1_inst_RXD3,    // .hps_io_emac1_inst_RXD3
    input  wire                         hps_0_hps_io_hps_io_spim0_inst_MISO,    // .hps_io_spim0_inst_MISO
    input  wire                         hps_0_hps_io_hps_io_uart0_inst_RX,    // .hps_io_uart0_inst_RX
    input  wire                         hps_0_hps_io_hps_io_usb1_inst_CLK,    // .hps_io_usb1_inst_CLK
    input  wire                         hps_0_hps_io_hps_io_usb1_inst_DIR,    // .hps_io_usb1_inst_DIR
    input  wire                         hps_0_hps_io_hps_io_usb1_inst_NXT,    // .hps_io_usb1_inst_NXT
    input  wire                         memory_oct_rzqin,    // .oct_rzqin
    output wire                         hps_0_hps_io_hps_io_can0_inst_TX,    // .hps_io_can0_inst_TX
    output wire                         hps_0_hps_io_hps_io_emac1_inst_MDC,    // .hps_io_emac1_inst_MDC
    output wire                         hps_0_hps_io_hps_io_emac1_inst_TX_CLK,    // hps_0_hps_io.hps_io_emac1_inst_TX_CLK
    output wire                         hps_0_hps_io_hps_io_emac1_inst_TX_CTL,    // .hps_io_emac1_inst_TX_CTL
    output wire                         hps_0_hps_io_hps_io_emac1_inst_TXD0,    // .hps_io_emac1_inst_TXD0
    output wire                         hps_0_hps_io_hps_io_emac1_inst_TXD1,    // .hps_io_emac1_inst_TXD1
    output wire                         hps_0_hps_io_hps_io_emac1_inst_TXD2,    // .hps_io_emac1_inst_TXD2
    output wire                         hps_0_hps_io_hps_io_emac1_inst_TXD3,    // .hps_io_emac1_inst_TXD3
    output wire                         hps_0_hps_io_hps_io_qspi_inst_CLK,    // .hps_io_qspi_inst_CLK
    output wire                         hps_0_hps_io_hps_io_qspi_inst_SS0,    // .hps_io_qspi_inst_SS0
    output wire                         hps_0_hps_io_hps_io_sdio_inst_CLK,    // .hps_io_sdio_inst_CLK
    output wire                         hps_0_hps_io_hps_io_spim0_inst_CLK,    // .hps_io_spim0_inst_CLK
    output wire                         hps_0_hps_io_hps_io_spim0_inst_MOSI,    // .hps_io_spim0_inst_MOSI
    output wire                         hps_0_hps_io_hps_io_spim0_inst_SS0,    // .hps_io_spim0_inst_SS0
    output wire                         hps_0_hps_io_hps_io_trace_inst_CLK,    // .hps_io_trace_inst_CLK
    output wire                         hps_0_hps_io_hps_io_trace_inst_D0,    // .hps_io_trace_inst_D0
    output wire                         hps_0_hps_io_hps_io_trace_inst_D1,    // .hps_io_trace_inst_D1
    output wire                         hps_0_hps_io_hps_io_trace_inst_D2,    // .hps_io_trace_inst_D2
    output wire                         hps_0_hps_io_hps_io_trace_inst_D3,    // .hps_io_trace_inst_D3
    output wire                         hps_0_hps_io_hps_io_trace_inst_D4,    // .hps_io_trace_inst_D4
    output wire                         hps_0_hps_io_hps_io_trace_inst_D5,    // .hps_io_trace_inst_D5
    output wire                         hps_0_hps_io_hps_io_trace_inst_D6,    // .hps_io_trace_inst_D6
    output wire                         hps_0_hps_io_hps_io_trace_inst_D7,    // .hps_io_trace_inst_D7
    output wire                         hps_0_hps_io_hps_io_uart0_inst_TX,    // .hps_io_uart0_inst_TX
    output wire                         hps_0_hps_io_hps_io_usb1_inst_STP,    // .hps_io_usb1_inst_STP
    output wire    [14:0]               memory_mem_a,    // memory.mem_a
    output wire    [2:0]                memory_mem_ba,    // .mem_ba
    output wire                         memory_mem_cas_n,    // .mem_cas_n
    output wire                         memory_mem_ck,    // .mem_ck
    output wire                         memory_mem_ck_n,    // .mem_ck_n
    output wire                         memory_mem_cke,    // .mem_cke
    output wire                         memory_mem_cs_n,    // .mem_cs_n
    output wire    [4:0]                memory_mem_dm,    // .mem_dm
    output wire                         memory_mem_odt,    // .mem_odt
    output wire                         memory_mem_ras_n,    // .mem_ras_n
    output wire                         memory_mem_reset_n,    // .mem_reset_n
    output wire                         memory_mem_we_n,    // .mem_we_n
    inout  wire                         hps_0_hps_io_hps_io_emac1_inst_MDIO,    // .hps_io_emac1_inst_MDIO
    inout  wire                         hps_0_hps_io_hps_io_gpio_inst_GPIO09,    // .hps_io_gpio_inst_GPIO09
    inout  wire                         hps_0_hps_io_hps_io_gpio_inst_GPIO35,    // .hps_io_gpio_inst_GPIO35
    inout  wire                         hps_0_hps_io_hps_io_gpio_inst_GPIO41,    // .hps_io_gpio_inst_GPIO41
    inout  wire                         hps_0_hps_io_hps_io_gpio_inst_GPIO42,    // .hps_io_gpio_inst_GPIO42
    inout  wire                         hps_0_hps_io_hps_io_gpio_inst_GPIO43,    // .hps_io_gpio_inst_GPIO43
    inout  wire                         hps_0_hps_io_hps_io_gpio_inst_GPIO44,    // .hps_io_gpio_inst_GPIO44
    inout  wire                         hps_0_hps_io_hps_io_i2c0_inst_SCL,    // .hps_io_i2c0_inst_SCL
    inout  wire                         hps_0_hps_io_hps_io_i2c0_inst_SDA,    // .hps_io_i2c0_inst_SDA
    inout  wire                         hps_0_hps_io_hps_io_qspi_inst_IO0,    // .hps_io_qspi_inst_IO0
    inout  wire                         hps_0_hps_io_hps_io_qspi_inst_IO1,    // .hps_io_qspi_inst_IO1
    inout  wire                         hps_0_hps_io_hps_io_qspi_inst_IO2,    // .hps_io_qspi_inst_IO2
    inout  wire                         hps_0_hps_io_hps_io_qspi_inst_IO3,    // .hps_io_qspi_inst_IO3
    inout  wire                         hps_0_hps_io_hps_io_sdio_inst_CMD,    // .hps_io_sdio_inst_CMD
    inout  wire                         hps_0_hps_io_hps_io_sdio_inst_D0,    // .hps_io_sdio_inst_D0
    inout  wire                         hps_0_hps_io_hps_io_sdio_inst_D1,    // .hps_io_sdio_inst_D1
    inout  wire                         hps_0_hps_io_hps_io_sdio_inst_D2,    // .hps_io_sdio_inst_D2
    inout  wire                         hps_0_hps_io_hps_io_sdio_inst_D3,    // .hps_io_sdio_inst_D3
    inout  wire                         hps_0_hps_io_hps_io_usb1_inst_D0,    // .hps_io_usb1_inst_D0
    inout  wire                         hps_0_hps_io_hps_io_usb1_inst_D1,    // .hps_io_usb1_inst_D1
    inout  wire                         hps_0_hps_io_hps_io_usb1_inst_D2,    // .hps_io_usb1_inst_D2
    inout  wire                         hps_0_hps_io_hps_io_usb1_inst_D3,    // .hps_io_usb1_inst_D3
    inout  wire                         hps_0_hps_io_hps_io_usb1_inst_D4,    // .hps_io_usb1_inst_D4
    inout  wire                         hps_0_hps_io_hps_io_usb1_inst_D5,    // .hps_io_usb1_inst_D5
    inout  wire                         hps_0_hps_io_hps_io_usb1_inst_D6,    // .hps_io_usb1_inst_D6
    inout  wire                         hps_0_hps_io_hps_io_usb1_inst_D7,    // .hps_io_usb1_inst_D7
    inout  wire    [39:0]               memory_mem_dq,    // .mem_dq
    inout  wire    [4:0]                memory_mem_dqs,    // .mem_dqs
    inout  wire    [4:0]                memory_mem_dqs_n,    // .mem_dqs_n

    // Interface: camera_config
    // TODO:
    // address -> address ; chipselect -> chipselect ; clken -> clken ; write -> write
    // ;
    // readdata -> readdata ; writedata -> writedata ; byteeneable -> byteeneable
    input  wire    [5:0]                camera_control_oc_s2_address,    // camera_control_oc_s2.address
    input  wire    [1:0]                camera_control_oc_s2_byteenable,    // .byteenable
    input  wire                         camera_control_oc_s2_chipselect,    // .chipselect
    input  wire                         camera_control_oc_s2_clken,    // .clken
    input  wire                         camera_control_oc_s2_write,    // .write
    input  wire    [15:0]               camera_control_oc_s2_writedata,    // .writedata
    output wire    [15:0]               camera_control_oc_s2_readdata,    // .readdata

    // Interface: camera_start_config
    // DONE:
    // configure_camera -> configure_camera_pio_export
    output wire                         configure_camera_external_connection_export,    // configure_camera_external_connection.export

    // Interface: clock_75MHz
    // DONE
    input  wire                         clk_clk,    // clk.clk
    input  wire                         reset_reset_n,    // reset.reset_n

    // Interface: clock_camera
    // DONE:
    // clk -> dma_yuv_fifo_clk
    input  wire                         dma_yuv_fifo_clk_clk,    // dma_yuv_fifo_clk.clk

    // Interface: config_channel
    // DONE:
    // config axi_to_channel
    // lz -> lz ; vz -> vz ; z -> z
    input  wire                         acc_config_channel_vz,    // acc_config_channel.vz
    output wire    [31:0]               acc_config_channel_data,    // .data
    output wire                         acc_config_channel_lz,    // .lz

    // Interface: left_ref_channel
    // DONE:
    // left_ref/unfiltered2 dma reader
    // lz -> lz ; vz -> vz ; z -> z
    input  wire                         axi_dma_unfiltered2_channel_vz_export,    // axi_dma_unfiltered2_channel_vz.export
    output wire    [15:0]               axi_dma_unfiltered2_channel_data_export,    // axi_dma_unfiltered2_channel_data.export
    output wire                         axi_dma_unfiltered2_channel_lz_export,    // axi_dma_unfiltered2_channel_lz.export

    // Interface: orig_channel
    // TODO:
    // orig dma reader
    // lz -> lz ; vz -> vz ; z -> z
    input  wire                         axi_dma_orig_block_channel_vz_export,    // axi_dma_orig_block_channel_vz.export
    output wire    [31:0]               axi_dma_orig_block_channel_data_export,    // axi_dma_orig_block_channel_data.export
    output wire                         axi_dma_orig_block_channel_lz_export,    // axi_dma_orig_block_channel_lz.export

    // Interface: sad_result
    // DONE:
    // sad_result [31..0] => sad_result(low)
    // sad_result [63..32] => sad_result(high)
    input  wire    [31:0]               sad_result_high_external_connection_export,    // sad_result_high_external_connection.export
    input  wire    [31:0]               sad_result_low_external_connection_export,    // sad_result_low_external_connection.export

    // Interface: top_ref_channel
    // TODO:
    // top_ref/unfiltered1 dma reader
    // lz -> lz ; vz -> vz ; z -> z
    input  wire                         axi_dma_unfiltered1_channel_vz_export,    // axi_dma_unfiltered1_channel_vz.export
    output wire    [15:0]               axi_dma_unfiltered1_channel_data_export,    // axi_dma_unfiltered1_channel_data.export
    output wire                         axi_dma_unfiltered1_channel_lz_export,    // axi_dma_unfiltered1_channel_lz.export

    // Interface: u_channel
    // TODO:
    // chroma u dma_yuv
    // lz -> vz ; vz -> lz ; z -> z
    input  wire                         dma_yuv_yuv_input_u_data_in_vz,    // .u_data_in_vz
    input  wire    [7:0]                dma_yuv_yuv_input_u_data_in_z,    // dma_yuv_yuv_input.u_data_in_z
    output wire                         dma_yuv_yuv_input_u_data_in_lz,    // .u_data_in_lz

    // Interface: v_channel
    // TODO:
    // chroma v dma_yuv
    // lz -> vz ; vz -> lz ; z -> z
    input  wire                         dma_yuv_yuv_input_v_data_in_vz,    // .v_data_in_vz
    input  wire    [7:0]                dma_yuv_yuv_input_v_data_in_z,    // .v_data_in_z
    output wire                         dma_yuv_yuv_input_v_data_in_lz,    // .v_data_in_lz

    // Interface: y_channel
    // DONE:
    // luma y dma_yuv
    // lz -> vz ; vz -> lz ; z -> z
    input  wire                         dma_yuv_yuv_input_y_data_in_vz,    // .y_data_in_vz
    input  wire    [7:0]                dma_yuv_yuv_input_y_data_in_z,    // .y_data_in_z
    output wire                         dma_yuv_yuv_input_y_data_in_lz,    // .y_data_in_lz

    // Interface: yuv_ctrl
    // DONE:
    // yuv_status -> done ; yuv_ctrl -> ctrl
    // 
    input  wire                         yuv_status_external_connection_export,    // yuv_status_external_connection.export
    output wire    [3:0]                yuv_ctrl_external_connection_export,    // yuv_ctrl_external_connection.export

    // There ports are contained in many interfaces
    input  wire    [27:0]               hps_0_f2h_stm_hw_events_stm_hwevents,    // hps_0_f2h_stm_hw_events.stm_hwevents

    // These ports are not in any interface
    input  wire                         axi_dma_orig_block_clear_fifo_export,    // axi_dma_orig_block_clear_fifo.export
    input  wire                         axi_dma_unfiltered1_clear_fifo_export,    // axi_dma_unfiltered1_clear_fifo.export
    input  wire                         axi_dma_unfiltered2_clear_fifo_export,    // axi_dma_unfiltered2_clear_fifo.export
    input  wire                         dma_yuv_yuv_input_clear_dma_and_fifo,    // .clear_dma_and_fifo
    input  wire                         hps_0_f2h_cold_reset_req_reset_n,    // hps_0_f2h_cold_reset_req.reset_n
    input  wire                         hps_0_f2h_debug_reset_req_reset_n,    // hps_0_f2h_debug_reset_req.reset_n
    input  wire                         hps_0_f2h_warm_reset_req_reset_n,    // hps_0_f2h_warm_reset_req.reset_n
    input  wire                         lambda_loaded_external_connection_export,    // lambda_loaded_external_connection.export
    input  wire                         lcu_loaded_external_connection_export,    // lcu_loaded_external_connection.export
    input  wire    [1:0]                result_ready_external_connection_export,    // result_ready_external_connection.export
    output wire                         hps_0_h2f_reset_reset_n    // hps_0_h2f_reset.reset_n
);

// WARNING: EVERYTHING ON AND ABOVE THIS LINE MAY BE OVERWRITTEN BY KACTUS2!!!
endmodule
