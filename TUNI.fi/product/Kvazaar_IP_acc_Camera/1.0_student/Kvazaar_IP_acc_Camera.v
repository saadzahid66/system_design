//-----------------------------------------------------------------------------
// File          : Kvazaar_IP_acc_Camera.v
// Creation date : 16.11.2022
// Creation time : 11:46:07
// Description   : 
// Created by    : 
// Tool : Kactus2 3.5.84 32-bit
// Plugin : Verilog generator 2.1
// This file was generated based on IP-XACT component TUNI.fi:product:Kvazaar_IP_acc_Camera:1.0_student
// whose XML file is P:/18/TUNI.fi/product/Kvazaar_IP_acc_Camera/1.0_student/k2u_Kvazaar_IP_acc_Camera.1.0_student.xml
//-----------------------------------------------------------------------------

module Kvazaar_IP_acc_Camera(
    // Interface: CCD_data
    input          [11:0]               CAMERA_D,
    input                               CAMERA_FVAL,
    input                               CAMERA_LVAL,

    // Interface: HPS_connection
    input                               can_0_rx,
    input                               ddr3_hps_rzq,
    input                               enet_hps_rx_clk,
    input                               enet_hps_rx_dv,
    input          [3:0]                enet_hps_rxd,
    input                               spi_miso,
    input                               uart_rx,
    input                               usb_clk,
    input                               usb_dir,
    input                               usb_nxt,
    output                              can_0_tx,
    output         [14:0]               ddr3_hps_a,
    output         [2:0]                ddr3_hps_ba,
    output                              ddr3_hps_casn,
    output                              ddr3_hps_cke,
    output                              ddr3_hps_clk_n,
    output                              ddr3_hps_clk_p,
    output                              ddr3_hps_csn,
    output         [4:0]                ddr3_hps_dm,
    output                              ddr3_hps_odt,
    output                              ddr3_hps_rasn,
    output                              ddr3_hps_resetn,
    output                              ddr3_hps_wen,
    output                              enet_hps_gtx_clk,
    output                              enet_hps_mdc,
    output                              enet_hps_tx_en,
    output         [3:0]                enet_hps_txd,
    output                              qspi_clk,
    output                              qspi_ss0,
    output                              sd_clk,
    output                              spi_csn,
    output                              spi_mosi,
    output                              spi_sck,
    output                              trace_clk_mic,
    output         [7:0]                trace_data,
    output                              uart_tx,
    output                              usb_stp,
    inout          [39:0]               ddr3_hps_dq,
    inout          [4:0]                ddr3_hps_dqs_n,
    inout          [4:0]                ddr3_hps_dqs_p,
    inout                               enet_hps_intn,
    inout                               enet_hps_mdio,
    inout                               gpio09,
    inout                               i2c_scl_hps,
    inout                               i2c_sda_hps,
    inout          [3:0]                qspi_io,
    inout                               sd_cmd,
    inout          [3:0]                sd_dat,
    inout          [7:0]                usb_data,
    inout          [3:0]                user_led_hps,

    // Interface: LCD
    output         [7:0]                LCD_B,
    output                              LCD_DCLK,
    output                              LCD_DIM,
    output         [7:0]                LCD_G,
    output                              LCD_HSD,
    output                              LCD_MODE,
    output                              LCD_POWER_CTL,
    output         [7:0]                LCD_R,
    output                              LCD_RSTB,
    output                              LCD_SHLR,
    output                              LCD_UPDN,
    output                              LCD_VSD,

    // Interface: clock_25MHz
    output                              CAMERA_RESET_n,
    output                              CAMERA_XCLKIN,

    // Interface: clock_50MHz
    input                               clk_50m_fpga,

    // Interface: clock_camera
    input                               CAMERA_PIXCLK,

    // Interface: dip_switch
    input          [3:0]                user_dipsw_fpga,

    // Interface: i2c_data
    output                              CAMERA_SCLK,
    inout                               CAMERA_SDATA,

    // Interface: push_buttons
    input          [1:0]                user_pb_fpga,

    // These ports are not in any interface
    output                              CAMERA_TRIGGER
);

    // Clock_Reset_0_clock_25MHz_to_clock_25MHz wires:
    wire        Clock_Reset_0_clock_25MHz_to_clock_25MHzCLK;
    wire        Clock_Reset_0_clock_25MHz_to_clock_25MHzRST_N;
    // Clock_Reset_0_clock_50MHz_ref_to_clock_50MHz wires:
    wire        Clock_Reset_0_clock_50MHz_ref_to_clock_50MHzCLK;
    // Clock_Reset_0_clock_camera_ref_to_clock_camera wires:
    wire        Clock_Reset_0_clock_camera_ref_to_clock_cameraCLK;
    // LTP_Controller_0_LCD_to_LCD wires:
    wire [7:0]  LTP_Controller_0_LCD_to_LCDLCD_B;
    wire        LTP_Controller_0_LCD_to_LCDLCD_DCLK;
    wire        LTP_Controller_0_LCD_to_LCDLCD_DIM;
    wire [7:0]  LTP_Controller_0_LCD_to_LCDLCD_G;
    wire        LTP_Controller_0_LCD_to_LCDLCD_HSD;
    wire        LTP_Controller_0_LCD_to_LCDLCD_MODE;
    wire        LTP_Controller_0_LCD_to_LCDLCD_POWER_CTL;
    wire [7:0]  LTP_Controller_0_LCD_to_LCDLCD_R;
    wire        LTP_Controller_0_LCD_to_LCDLCD_RSTB;
    wire        LTP_Controller_0_LCD_to_LCDLCD_SHLR;
    wire        LTP_Controller_0_LCD_to_LCDLCD_UPDN;
    wire        LTP_Controller_0_LCD_to_LCDLCD_VSD;
    // RAW_to_RGB_0_RGB_data_to_LTP_Controller_0_RGB_data wires:
    wire [11:0] RAW_to_RGB_0_RGB_data_to_LTP_Controller_0_RGB_dataOBLUE;
    wire        RAW_to_RGB_0_RGB_data_to_LTP_Controller_0_RGB_dataODVAL;
    wire [11:0] RAW_to_RGB_0_RGB_data_to_LTP_Controller_0_RGB_dataOGREEN;
    wire [11:0] RAW_to_RGB_0_RGB_data_to_LTP_Controller_0_RGB_dataORED;
    // RAW_to_RGB_0_RAW_data_to_CCD_Capture_0_RAW_data wires:
    wire [11:0] RAW_to_RGB_0_RAW_data_to_CCD_Capture_0_RAW_dataIDATA;
    wire        RAW_to_RGB_0_RAW_data_to_CCD_Capture_0_RAW_dataIDVAL;
    wire [15:0] RAW_to_RGB_0_RAW_data_to_CCD_Capture_0_RAW_dataIX_CONT;
    wire [15:0] RAW_to_RGB_0_RAW_data_to_CCD_Capture_0_RAW_dataIY_CONT;
    // CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_config wires:
    wire [15:0] CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configBLUE_GAIN;
    wire [15:0] CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configGREEN1_GAIN;
    wire [15:0] CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configGREEN2_GAIN;
    wire [15:0] CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configRED_GAIN;
    wire [15:0] CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_COLUMN_MODE;
    wire [15:0] CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_COLUMN_SIZE;
    wire [15:0] CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_EXPOSURE;
    wire [15:0] CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_ROW_MODE;
    wire [15:0] CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_ROW_SIZE;
    wire [15:0] CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_START_COLUMN;
    wire [15:0] CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_START_ROW;
    wire        CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSET_CONF;
    // RGB_to_YUV_0_CCD_data_to_CCD_data wires:
    wire [11:0] RGB_to_YUV_0_CCD_data_to_CCD_dataIDATA;
    wire        RGB_to_YUV_0_CCD_data_to_CCD_dataIFVAL;
    wire        RGB_to_YUV_0_CCD_data_to_CCD_dataILVAL;
    // CCD_Configer_I2C_0_I2C_data_to_i2c_data wires:
    wire        CCD_Configer_I2C_0_I2C_data_to_i2c_dataCAMERA_SCLK;
    // Clock_Reset_0_clock_75MHz_to_IP_SAD_Accelerator_0_clock_75MHz wires:
    wire        Clock_Reset_0_clock_75MHz_to_IP_SAD_Accelerator_0_clock_75MHzCLK;
    wire        Clock_Reset_0_clock_75MHz_to_IP_SAD_Accelerator_0_clock_75MHzRST_N;
    // Clock_Reset_0_clock_camera_to_RGB_to_YUV_0_clock_camera wires:
    wire        Clock_Reset_0_clock_camera_to_RGB_to_YUV_0_clock_cameraCLK;
    wire        Clock_Reset_0_clock_camera_to_RGB_to_YUV_0_clock_cameraRST_N;
    // Clock_Reset_0_clock_33MHz_to_LTP_Controller_0_clock_33MHz wires:
    wire        Clock_Reset_0_clock_33MHz_to_LTP_Controller_0_clock_33MHzCLK;
    wire        Clock_Reset_0_clock_33MHz_to_LTP_Controller_0_clock_33MHzRST_N;
    // Clock_Reset_0_push_buttons_to_push_buttons wires:
    wire [1:0]  Clock_Reset_0_push_buttons_to_push_buttonsUSER_PB_FPGA;
    // RAW_to_RGB_0_dip_switch_to_dip_switch wires:
    wire [3:0]  RAW_to_RGB_0_dip_switch_to_dip_switchUSER_DIPSW_FPGA;

    // Ad-hoc wires:
    wire        Kvazaar_QSYS_0_axi_dma_unfiltered1_clear_fifo_export_to_IP_SAD_Accelerator_0_clear_unfilt1_fifo;
    wire        IP_SAD_Accelerator_0_clear_unfilt2_fifo_to_Kvazaar_QSYS_0_axi_dma_unfiltered2_clear_fifo_export;
    wire        Kvazaar_QSYS_0_axi_dma_orig_block_clear_fifo_export_to_IP_SAD_Accelerator_0_clear_orig_fifo;
    wire        Kvazaar_QSYS_0_lambda_loaded_external_connection_export_to_IP_SAD_Accelerator_0_lambda_loaded;
    wire        Kvazaar_QSYS_0_lcu_loaded_external_connection_export_to_IP_SAD_Accelerator_0_lcu_loaded;
    wire [1:0]  Kvazaar_QSYS_0_result_ready_external_connection_export_to_IP_SAD_Accelerator_0_result_ready;

    // CCD_Capture_0 port wires:
    wire        CCD_Capture_0_iCLK;
    wire [11:0] CCD_Capture_0_iDATA;
    wire        CCD_Capture_0_iFVAL;
    wire        CCD_Capture_0_iLVAL;
    wire        CCD_Capture_0_iRST;
    wire [11:0] CCD_Capture_0_oDATA;
    wire        CCD_Capture_0_oDVAL;
    wire [15:0] CCD_Capture_0_oX_Cont;
    wire [15:0] CCD_Capture_0_oY_Cont;
    // CCD_Configer_0 port wires:
    wire [15:0] CCD_Configer_0_blue_gain;
    wire        CCD_Configer_0_clk;
    wire        CCD_Configer_0_exposure_less;
    wire        CCD_Configer_0_exposure_more;
    wire [15:0] CCD_Configer_0_green1_gain;
    wire [15:0] CCD_Configer_0_green2_gain;
    wire [15:0] CCD_Configer_0_red_gain;
    wire        CCD_Configer_0_rst_n;
    wire [15:0] CCD_Configer_0_sensor_column_mode;
    wire [15:0] CCD_Configer_0_sensor_column_size;
    wire [15:0] CCD_Configer_0_sensor_exposure;
    wire [15:0] CCD_Configer_0_sensor_row_mode;
    wire [15:0] CCD_Configer_0_sensor_row_size;
    wire [15:0] CCD_Configer_0_sensor_start_column;
    wire [15:0] CCD_Configer_0_sensor_start_row;
    wire        CCD_Configer_0_set_conf;
    // CCD_Configer_I2C_0 port wires:
    wire        CCD_Configer_I2C_0_I2C_SCLK;
    wire        CCD_Configer_I2C_0_iCLK;
    wire        CCD_Configer_I2C_0_iMIRROR_SW;
    wire        CCD_Configer_I2C_0_iRST_N;
    wire        CCD_Configer_I2C_0_iSetConf;
    wire [15:0] CCD_Configer_I2C_0_iblue_gain;
    wire [15:0] CCD_Configer_I2C_0_igreen1_gain;
    wire [15:0] CCD_Configer_I2C_0_igreen2_gain;
    wire [15:0] CCD_Configer_I2C_0_ired_gain;
    wire [15:0] CCD_Configer_I2C_0_sensor_column_mode;
    wire [15:0] CCD_Configer_I2C_0_sensor_column_size;
    wire [15:0] CCD_Configer_I2C_0_sensor_exposure;
    wire [15:0] CCD_Configer_I2C_0_sensor_row_mode;
    wire [15:0] CCD_Configer_I2C_0_sensor_row_size;
    wire [15:0] CCD_Configer_I2C_0_sensor_start_column;
    wire [15:0] CCD_Configer_I2C_0_sensor_start_row;
    // Clock_Reset_0 port wires:
    wire        Clock_Reset_0_cameraclk;
    wire        Clock_Reset_0_fpga_pb_1;
    wire        Clock_Reset_0_fpga_pb_2;
    wire        Clock_Reset_0_outclk_0;
    wire        Clock_Reset_0_outclk_1;
    wire        Clock_Reset_0_outclk_2;
    wire        Clock_Reset_0_outclk_3;
    wire        Clock_Reset_0_refclk;
    wire        Clock_Reset_0_rst_n_0;
    wire        Clock_Reset_0_rst_n_1;
    wire        Clock_Reset_0_rst_n_2;
    wire        Clock_Reset_0_rst_n_3;
    // IP_SAD_Accelerator_0 port wires:
    wire        IP_SAD_Accelerator_0_arst_n;
    wire        IP_SAD_Accelerator_0_clear_orig_fifo;
    wire        IP_SAD_Accelerator_0_clear_unfilt1_fifo;
    wire        IP_SAD_Accelerator_0_clear_unfilt2_fifo;
    wire        IP_SAD_Accelerator_0_clk;
    wire        IP_SAD_Accelerator_0_lambda_loaded;
    wire        IP_SAD_Accelerator_0_lcu_loaded;
    wire [1:0]  IP_SAD_Accelerator_0_result_ready;
    // Kvazaar_QSYS_0 port wires:
    wire        Kvazaar_QSYS_0_axi_dma_orig_block_clear_fifo_export;
    wire        Kvazaar_QSYS_0_axi_dma_unfiltered1_clear_fifo_export;
    wire        Kvazaar_QSYS_0_axi_dma_unfiltered2_clear_fifo_export;
    wire        Kvazaar_QSYS_0_lambda_loaded_external_connection_export;
    wire        Kvazaar_QSYS_0_lcu_loaded_external_connection_export;
    wire [1:0]  Kvazaar_QSYS_0_result_ready_external_connection_export;
    // LTP_Controller_0 port wires:
    wire [7:0]  LTP_Controller_0_LCD_blue;
    wire        LTP_Controller_0_LCD_clock;
    wire        LTP_Controller_0_LCD_dim;
    wire [7:0]  LTP_Controller_0_LCD_green;
    wire        LTP_Controller_0_LCD_mode;
    wire        LTP_Controller_0_LCD_power_ctl;
    wire [7:0]  LTP_Controller_0_LCD_red;
    wire        LTP_Controller_0_LCD_rstb;
    wire        LTP_Controller_0_LCD_shlr;
    wire        LTP_Controller_0_LCD_updn;
    wire [7:0]  LTP_Controller_0_blue_in;
    wire        LTP_Controller_0_clk;
    wire        LTP_Controller_0_fifo_in_clk;
    wire        LTP_Controller_0_fifo_write;
    wire [7:0]  LTP_Controller_0_green_in;
    wire        LTP_Controller_0_horizontal_sync;
    wire [7:0]  LTP_Controller_0_red_in;
    wire        LTP_Controller_0_rst_n;
    wire        LTP_Controller_0_vertical_sync;
    // RAW_to_RGB_0 port wires:
    wire        RAW_to_RGB_0_iCLK;
    wire [11:0] RAW_to_RGB_0_iData;
    wire        RAW_to_RGB_0_iDval;
    wire        RAW_to_RGB_0_iMIRROR;
    wire        RAW_to_RGB_0_iRST_n;
    wire [15:0] RAW_to_RGB_0_iX_Cont;
    wire [15:0] RAW_to_RGB_0_iY_Cont;
    wire [11:0] RAW_to_RGB_0_oBlue;
    wire        RAW_to_RGB_0_oDval;
    wire [11:0] RAW_to_RGB_0_oGreen;
    wire [11:0] RAW_to_RGB_0_oRed;
    // RGB_to_YUV_0 port wires:
    wire        RGB_to_YUV_0_clk;
    wire        RGB_to_YUV_0_frame_valid;
    wire [7:0]  RGB_to_YUV_0_iBlue_z;
    wire        RGB_to_YUV_0_iDval_z;
    wire [7:0]  RGB_to_YUV_0_iGreen_z;
    wire [7:0]  RGB_to_YUV_0_iRed_z;
    wire        RGB_to_YUV_0_rst_n;

    // Assignments for the ports of the encompassing component:
    assign RGB_to_YUV_0_CCD_data_to_CCD_dataIDATA[11:0] = CAMERA_D[11:0];
    assign RGB_to_YUV_0_CCD_data_to_CCD_dataIFVAL = CAMERA_FVAL;
    assign RGB_to_YUV_0_CCD_data_to_CCD_dataILVAL = CAMERA_LVAL;
    assign Clock_Reset_0_clock_camera_ref_to_clock_cameraCLK = CAMERA_PIXCLK;
    assign CAMERA_RESET_n = Clock_Reset_0_clock_25MHz_to_clock_25MHzRST_N;
    assign CAMERA_SCLK = CCD_Configer_I2C_0_I2C_data_to_i2c_dataCAMERA_SCLK;
    assign CAMERA_XCLKIN = Clock_Reset_0_clock_25MHz_to_clock_25MHzCLK;
    assign LCD_B[7:0] = LTP_Controller_0_LCD_to_LCDLCD_B[7:0];
    assign LCD_DCLK = LTP_Controller_0_LCD_to_LCDLCD_DCLK;
    assign LCD_DIM = LTP_Controller_0_LCD_to_LCDLCD_DIM;
    assign LCD_G[7:0] = LTP_Controller_0_LCD_to_LCDLCD_G[7:0];
    assign LCD_HSD = LTP_Controller_0_LCD_to_LCDLCD_HSD;
    assign LCD_MODE = LTP_Controller_0_LCD_to_LCDLCD_MODE;
    assign LCD_POWER_CTL = LTP_Controller_0_LCD_to_LCDLCD_POWER_CTL;
    assign LCD_R[7:0] = LTP_Controller_0_LCD_to_LCDLCD_R[7:0];
    assign LCD_RSTB = LTP_Controller_0_LCD_to_LCDLCD_RSTB;
    assign LCD_SHLR = LTP_Controller_0_LCD_to_LCDLCD_SHLR;
    assign LCD_UPDN = LTP_Controller_0_LCD_to_LCDLCD_UPDN;
    assign LCD_VSD = LTP_Controller_0_LCD_to_LCDLCD_VSD;
    assign Clock_Reset_0_clock_50MHz_ref_to_clock_50MHzCLK = clk_50m_fpga;
    assign RAW_to_RGB_0_dip_switch_to_dip_switchUSER_DIPSW_FPGA[3:0] = user_dipsw_fpga[3:0];
    assign Clock_Reset_0_push_buttons_to_push_buttonsUSER_PB_FPGA[1:0] = user_pb_fpga[1:0];

    assign CAMERA_TRIGGER = 0;
    assign can_0_tx = 0;
    assign ddr3_hps_a = 0;
    assign ddr3_hps_ba = 0;
    assign ddr3_hps_casn = 0;
    assign ddr3_hps_cke = 0;
    assign ddr3_hps_clk_n = 0;
    assign ddr3_hps_clk_p = 0;
    assign ddr3_hps_csn = 0;
    assign ddr3_hps_dm = 0;
    assign ddr3_hps_dq = 0;
    assign ddr3_hps_dqs_n = 0;
    assign ddr3_hps_dqs_p = 0;
    assign ddr3_hps_odt = 0;
    assign ddr3_hps_rasn = 0;
    assign ddr3_hps_resetn = 0;
    assign ddr3_hps_wen = 0;
    assign enet_hps_gtx_clk = 0;
    assign enet_hps_intn = 0;
    assign enet_hps_mdc = 0;
    assign enet_hps_mdio = 0;
    assign enet_hps_tx_en = 0;
    assign enet_hps_txd = 0;
    assign gpio09 = 0;
    assign i2c_scl_hps = 0;
    assign i2c_sda_hps = 0;
    assign qspi_clk = 0;
    assign qspi_io = 0;
    assign qspi_ss0 = 0;
    assign sd_clk = 0;
    assign sd_cmd = 0;
    assign sd_dat = 0;
    assign spi_csn = 0;
    assign spi_mosi = 0;
    assign spi_sck = 0;
    assign trace_clk_mic = 0;
    assign trace_data = 0;
    assign uart_tx = 0;
    assign usb_data = 0;
    assign usb_stp = 0;
    assign user_led_hps = 0;

    // CCD_Capture_0 assignments:
    assign CCD_Capture_0_iCLK = Clock_Reset_0_clock_camera_to_RGB_to_YUV_0_clock_cameraCLK;
    assign CCD_Capture_0_iDATA[11:0] = RGB_to_YUV_0_CCD_data_to_CCD_dataIDATA[11:0];
    assign CCD_Capture_0_iFVAL = RGB_to_YUV_0_CCD_data_to_CCD_dataIFVAL;
    assign CCD_Capture_0_iLVAL = RGB_to_YUV_0_CCD_data_to_CCD_dataILVAL;
    assign CCD_Capture_0_iRST = Clock_Reset_0_clock_camera_to_RGB_to_YUV_0_clock_cameraRST_N;
    assign RAW_to_RGB_0_RAW_data_to_CCD_Capture_0_RAW_dataIDATA[11:0] = CCD_Capture_0_oDATA[11:0];
    assign RAW_to_RGB_0_RAW_data_to_CCD_Capture_0_RAW_dataIDVAL = CCD_Capture_0_oDVAL;
    assign RAW_to_RGB_0_RAW_data_to_CCD_Capture_0_RAW_dataIX_CONT[15:0] = CCD_Capture_0_oX_Cont[15:0];
    assign RAW_to_RGB_0_RAW_data_to_CCD_Capture_0_RAW_dataIY_CONT[15:0] = CCD_Capture_0_oY_Cont[15:0];
    // CCD_Configer_0 assignments:
    assign CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configBLUE_GAIN[15:0] = CCD_Configer_0_blue_gain[15:0];
    assign CCD_Configer_0_clk = Clock_Reset_0_clock_75MHz_to_IP_SAD_Accelerator_0_clock_75MHzCLK;
    assign CCD_Configer_0_exposure_less = Clock_Reset_0_push_buttons_to_push_buttonsUSER_PB_FPGA[1];
    assign CCD_Configer_0_exposure_more = Clock_Reset_0_push_buttons_to_push_buttonsUSER_PB_FPGA[0];
    assign CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configGREEN1_GAIN[15:0] = CCD_Configer_0_green1_gain[15:0];
    assign CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configGREEN2_GAIN[15:0] = CCD_Configer_0_green2_gain[15:0];
    assign CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configRED_GAIN[15:0] = CCD_Configer_0_red_gain[15:0];
    assign CCD_Configer_0_rst_n = Clock_Reset_0_clock_75MHz_to_IP_SAD_Accelerator_0_clock_75MHzRST_N;
    assign CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_COLUMN_MODE[15:0] = CCD_Configer_0_sensor_column_mode[15:0];
    assign CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_COLUMN_SIZE[15:0] = CCD_Configer_0_sensor_column_size[15:0];
    assign CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_EXPOSURE[15:0] = CCD_Configer_0_sensor_exposure[15:0];
    assign CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_ROW_MODE[15:0] = CCD_Configer_0_sensor_row_mode[15:0];
    assign CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_ROW_SIZE[15:0] = CCD_Configer_0_sensor_row_size[15:0];
    assign CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_START_COLUMN[15:0] = CCD_Configer_0_sensor_start_column[15:0];
    assign CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_START_ROW[15:0] = CCD_Configer_0_sensor_start_row[15:0];
    assign CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSET_CONF = CCD_Configer_0_set_conf;
    // CCD_Configer_I2C_0 assignments:
    assign CCD_Configer_I2C_0_I2C_data_to_i2c_dataCAMERA_SCLK = CCD_Configer_I2C_0_I2C_SCLK;
    assign CCD_Configer_I2C_0_iCLK = Clock_Reset_0_clock_75MHz_to_IP_SAD_Accelerator_0_clock_75MHzCLK;
    assign CCD_Configer_I2C_0_iMIRROR_SW = RAW_to_RGB_0_dip_switch_to_dip_switchUSER_DIPSW_FPGA[3];
    assign CCD_Configer_I2C_0_iRST_N = Clock_Reset_0_clock_75MHz_to_IP_SAD_Accelerator_0_clock_75MHzRST_N;
    assign CCD_Configer_I2C_0_iSetConf = CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSET_CONF;
    assign CCD_Configer_I2C_0_iblue_gain[15:0] = CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configBLUE_GAIN[15:0];
    assign CCD_Configer_I2C_0_igreen1_gain[15:0] = CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configGREEN1_GAIN[15:0];
    assign CCD_Configer_I2C_0_igreen2_gain[15:0] = CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configGREEN2_GAIN[15:0];
    assign CCD_Configer_I2C_0_ired_gain[15:0] = CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configRED_GAIN[15:0];
    assign CCD_Configer_I2C_0_sensor_column_mode[15:0] = CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_COLUMN_MODE[15:0];
    assign CCD_Configer_I2C_0_sensor_column_size[15:0] = CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_COLUMN_SIZE[15:0];
    assign CCD_Configer_I2C_0_sensor_exposure[15:0] = CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_EXPOSURE[15:0];
    assign CCD_Configer_I2C_0_sensor_row_mode[15:0] = CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_ROW_MODE[15:0];
    assign CCD_Configer_I2C_0_sensor_row_size[15:0] = CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_ROW_SIZE[15:0];
    assign CCD_Configer_I2C_0_sensor_start_column[15:0] = CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_START_COLUMN[15:0];
    assign CCD_Configer_I2C_0_sensor_start_row[15:0] = CCD_Configer_0_CCD_config_to_CCD_Configer_I2C_0_CCD_configSENSOR_START_ROW[15:0];
    // Clock_Reset_0 assignments:
    assign Clock_Reset_0_cameraclk = Clock_Reset_0_clock_camera_ref_to_clock_cameraCLK;
    assign Clock_Reset_0_fpga_pb_1 = Clock_Reset_0_push_buttons_to_push_buttonsUSER_PB_FPGA[0];
    assign Clock_Reset_0_fpga_pb_2 = Clock_Reset_0_push_buttons_to_push_buttonsUSER_PB_FPGA[1];
    assign Clock_Reset_0_clock_25MHz_to_clock_25MHzCLK = Clock_Reset_0_outclk_0;
    assign Clock_Reset_0_clock_75MHz_to_IP_SAD_Accelerator_0_clock_75MHzCLK = Clock_Reset_0_outclk_1;
    assign Clock_Reset_0_clock_33MHz_to_LTP_Controller_0_clock_33MHzCLK = Clock_Reset_0_outclk_2;
    assign Clock_Reset_0_clock_camera_to_RGB_to_YUV_0_clock_cameraCLK = Clock_Reset_0_outclk_3;
    assign Clock_Reset_0_refclk = Clock_Reset_0_clock_50MHz_ref_to_clock_50MHzCLK;
    assign Clock_Reset_0_clock_25MHz_to_clock_25MHzRST_N = Clock_Reset_0_rst_n_0;
    assign Clock_Reset_0_clock_75MHz_to_IP_SAD_Accelerator_0_clock_75MHzRST_N = Clock_Reset_0_rst_n_1;
    assign Clock_Reset_0_clock_33MHz_to_LTP_Controller_0_clock_33MHzRST_N = Clock_Reset_0_rst_n_2;
    assign Clock_Reset_0_clock_camera_to_RGB_to_YUV_0_clock_cameraRST_N = Clock_Reset_0_rst_n_3;
    // IP_SAD_Accelerator_0 assignments:
    assign IP_SAD_Accelerator_0_arst_n = Clock_Reset_0_clock_75MHz_to_IP_SAD_Accelerator_0_clock_75MHzRST_N;
    assign Kvazaar_QSYS_0_axi_dma_orig_block_clear_fifo_export_to_IP_SAD_Accelerator_0_clear_orig_fifo = IP_SAD_Accelerator_0_clear_orig_fifo;
    assign Kvazaar_QSYS_0_axi_dma_unfiltered1_clear_fifo_export_to_IP_SAD_Accelerator_0_clear_unfilt1_fifo = IP_SAD_Accelerator_0_clear_unfilt1_fifo;
    assign IP_SAD_Accelerator_0_clear_unfilt2_fifo_to_Kvazaar_QSYS_0_axi_dma_unfiltered2_clear_fifo_export = IP_SAD_Accelerator_0_clear_unfilt2_fifo;
    assign IP_SAD_Accelerator_0_clk = Clock_Reset_0_clock_75MHz_to_IP_SAD_Accelerator_0_clock_75MHzCLK;
    assign Kvazaar_QSYS_0_lambda_loaded_external_connection_export_to_IP_SAD_Accelerator_0_lambda_loaded = IP_SAD_Accelerator_0_lambda_loaded;
    assign Kvazaar_QSYS_0_lcu_loaded_external_connection_export_to_IP_SAD_Accelerator_0_lcu_loaded = IP_SAD_Accelerator_0_lcu_loaded;
    assign Kvazaar_QSYS_0_result_ready_external_connection_export_to_IP_SAD_Accelerator_0_result_ready[1:0] = IP_SAD_Accelerator_0_result_ready[1:0];
    // Kvazaar_QSYS_0 assignments:
    assign Kvazaar_QSYS_0_axi_dma_orig_block_clear_fifo_export = Kvazaar_QSYS_0_axi_dma_orig_block_clear_fifo_export_to_IP_SAD_Accelerator_0_clear_orig_fifo;
    assign Kvazaar_QSYS_0_axi_dma_unfiltered1_clear_fifo_export = Kvazaar_QSYS_0_axi_dma_unfiltered1_clear_fifo_export_to_IP_SAD_Accelerator_0_clear_unfilt1_fifo;
    assign Kvazaar_QSYS_0_axi_dma_unfiltered2_clear_fifo_export = IP_SAD_Accelerator_0_clear_unfilt2_fifo_to_Kvazaar_QSYS_0_axi_dma_unfiltered2_clear_fifo_export;
    assign Kvazaar_QSYS_0_lambda_loaded_external_connection_export = Kvazaar_QSYS_0_lambda_loaded_external_connection_export_to_IP_SAD_Accelerator_0_lambda_loaded;
    assign Kvazaar_QSYS_0_lcu_loaded_external_connection_export = Kvazaar_QSYS_0_lcu_loaded_external_connection_export_to_IP_SAD_Accelerator_0_lcu_loaded;
    assign Kvazaar_QSYS_0_result_ready_external_connection_export[1:0] = Kvazaar_QSYS_0_result_ready_external_connection_export_to_IP_SAD_Accelerator_0_result_ready[1:0];
    // LTP_Controller_0 assignments:
    assign LTP_Controller_0_LCD_to_LCDLCD_B[7:0] = LTP_Controller_0_LCD_blue[7:0];
    assign LTP_Controller_0_LCD_to_LCDLCD_DCLK = LTP_Controller_0_LCD_clock;
    assign LTP_Controller_0_LCD_to_LCDLCD_DIM = LTP_Controller_0_LCD_dim;
    assign LTP_Controller_0_LCD_to_LCDLCD_G[7:0] = LTP_Controller_0_LCD_green[7:0];
    assign LTP_Controller_0_LCD_to_LCDLCD_MODE = LTP_Controller_0_LCD_mode;
    assign LTP_Controller_0_LCD_to_LCDLCD_POWER_CTL = LTP_Controller_0_LCD_power_ctl;
    assign LTP_Controller_0_LCD_to_LCDLCD_R[7:0] = LTP_Controller_0_LCD_red[7:0];
    assign LTP_Controller_0_LCD_to_LCDLCD_RSTB = LTP_Controller_0_LCD_rstb;
    assign LTP_Controller_0_LCD_to_LCDLCD_SHLR = LTP_Controller_0_LCD_shlr;
    assign LTP_Controller_0_LCD_to_LCDLCD_UPDN = LTP_Controller_0_LCD_updn;
    assign LTP_Controller_0_blue_in[7:0] = RAW_to_RGB_0_RGB_data_to_LTP_Controller_0_RGB_dataOBLUE[11:4];
    assign LTP_Controller_0_clk = Clock_Reset_0_clock_33MHz_to_LTP_Controller_0_clock_33MHzCLK;
    assign LTP_Controller_0_fifo_in_clk = Clock_Reset_0_clock_camera_to_RGB_to_YUV_0_clock_cameraCLK;
    assign LTP_Controller_0_fifo_write = RAW_to_RGB_0_RGB_data_to_LTP_Controller_0_RGB_dataODVAL;
    assign LTP_Controller_0_green_in[7:0] = RAW_to_RGB_0_RGB_data_to_LTP_Controller_0_RGB_dataOGREEN[11:4];
    assign LTP_Controller_0_LCD_to_LCDLCD_HSD = LTP_Controller_0_horizontal_sync;
    assign LTP_Controller_0_red_in[7:0] = RAW_to_RGB_0_RGB_data_to_LTP_Controller_0_RGB_dataORED[11:4];
    assign LTP_Controller_0_rst_n = Clock_Reset_0_clock_33MHz_to_LTP_Controller_0_clock_33MHzRST_N;
    assign LTP_Controller_0_LCD_to_LCDLCD_VSD = LTP_Controller_0_vertical_sync;
    // RAW_to_RGB_0 assignments:
    assign RAW_to_RGB_0_iCLK = Clock_Reset_0_clock_camera_to_RGB_to_YUV_0_clock_cameraCLK;
    assign RAW_to_RGB_0_iData[11:0] = RAW_to_RGB_0_RAW_data_to_CCD_Capture_0_RAW_dataIDATA[11:0];
    assign RAW_to_RGB_0_iDval = RAW_to_RGB_0_RAW_data_to_CCD_Capture_0_RAW_dataIDVAL;
    assign RAW_to_RGB_0_iMIRROR = RAW_to_RGB_0_dip_switch_to_dip_switchUSER_DIPSW_FPGA[3];
    assign RAW_to_RGB_0_iRST_n = Clock_Reset_0_clock_camera_to_RGB_to_YUV_0_clock_cameraRST_N;
    assign RAW_to_RGB_0_iX_Cont[15:0] = RAW_to_RGB_0_RAW_data_to_CCD_Capture_0_RAW_dataIX_CONT[15:0];
    assign RAW_to_RGB_0_iY_Cont[15:0] = RAW_to_RGB_0_RAW_data_to_CCD_Capture_0_RAW_dataIY_CONT[15:0];
    assign RAW_to_RGB_0_RGB_data_to_LTP_Controller_0_RGB_dataOBLUE[11:0] = RAW_to_RGB_0_oBlue[11:0];
    assign RAW_to_RGB_0_RGB_data_to_LTP_Controller_0_RGB_dataODVAL = RAW_to_RGB_0_oDval;
    assign RAW_to_RGB_0_RGB_data_to_LTP_Controller_0_RGB_dataOGREEN[11:0] = RAW_to_RGB_0_oGreen[11:0];
    assign RAW_to_RGB_0_RGB_data_to_LTP_Controller_0_RGB_dataORED[11:0] = RAW_to_RGB_0_oRed[11:0];
    // RGB_to_YUV_0 assignments:
    assign RGB_to_YUV_0_clk = Clock_Reset_0_clock_camera_to_RGB_to_YUV_0_clock_cameraCLK;
    assign RGB_to_YUV_0_frame_valid = RGB_to_YUV_0_CCD_data_to_CCD_dataIFVAL;
    assign RGB_to_YUV_0_iBlue_z[7:0] = RAW_to_RGB_0_RGB_data_to_LTP_Controller_0_RGB_dataOBLUE[11:4];
    assign RGB_to_YUV_0_iDval_z = RAW_to_RGB_0_RGB_data_to_LTP_Controller_0_RGB_dataODVAL;
    assign RGB_to_YUV_0_iGreen_z[7:0] = RAW_to_RGB_0_RGB_data_to_LTP_Controller_0_RGB_dataOGREEN[11:4];
    assign RGB_to_YUV_0_iRed_z[7:0] = RAW_to_RGB_0_RGB_data_to_LTP_Controller_0_RGB_dataORED[11:4];
    assign RGB_to_YUV_0_rst_n = Clock_Reset_0_clock_camera_to_RGB_to_YUV_0_clock_cameraRST_N;

    // IP-XACT VLNV: TUNI.fi:ip.hw:CCD_Capture:1.0
    CCD_Capture     CCD_Capture_0(
        // Interface: CCD_data
        .iDATA               (CCD_Capture_0_iDATA),
        .iFVAL               (CCD_Capture_0_iFVAL),
        .iLVAL               (CCD_Capture_0_iLVAL),
        // Interface: RAW_data
        .oDATA               (CCD_Capture_0_oDATA),
        .oDVAL               (CCD_Capture_0_oDVAL),
        .oX_Cont             (CCD_Capture_0_oX_Cont),
        .oY_Cont             (CCD_Capture_0_oY_Cont),
        // Interface: clock_camera
        .iCLK                (CCD_Capture_0_iCLK),
        .iRST                (CCD_Capture_0_iRST),
        // These ports are not in any interface
        .iEND                (0),
        .iSTART              (0),
        .oFrame_Cont         ());

    // IP-XACT VLNV: TUNI.fi:ip.hw:CCD_Configer:1.0
    CCD_Configer     CCD_Configer_0(
        // Interface: CCD_config
        .blue_gain           (CCD_Configer_0_blue_gain),
        .green1_gain         (CCD_Configer_0_green1_gain),
        .green2_gain         (CCD_Configer_0_green2_gain),
        .red_gain            (CCD_Configer_0_red_gain),
        .sensor_column_mode  (CCD_Configer_0_sensor_column_mode),
        .sensor_column_size  (CCD_Configer_0_sensor_column_size),
        .sensor_exposure     (CCD_Configer_0_sensor_exposure),
        .sensor_row_mode     (CCD_Configer_0_sensor_row_mode),
        .sensor_row_size     (CCD_Configer_0_sensor_row_size),
        .sensor_start_column (CCD_Configer_0_sensor_start_column),
        .sensor_start_row    (CCD_Configer_0_sensor_start_row),
        .set_conf            (CCD_Configer_0_set_conf),
        // Interface: camera_config
        .camera_control_oc_data_in(0),
        .camera_control_oc_address(),
        // Interface: camera_start_config
        .read_confs          (0),
        // Interface: clock_75MHz
        .clk                 (CCD_Configer_0_clk),
        .rst_n               (CCD_Configer_0_rst_n),
        // Interface: push_buttons
        .exposure_less       (CCD_Configer_0_exposure_less),
        .exposure_more       (CCD_Configer_0_exposure_more));

    // IP-XACT VLNV: TUNI.fi:ip.hw:CCD_Configer_I2C:1.0
    CCD_Configer_I2C #(
        .CLK_Freq            (75000000))
    CCD_Configer_I2C_0(
        // Interface: CCD_config
        .iblue_gain          (CCD_Configer_I2C_0_iblue_gain),
        .igreen1_gain        (CCD_Configer_I2C_0_igreen1_gain),
        .igreen2_gain        (CCD_Configer_I2C_0_igreen2_gain),
        .ired_gain           (CCD_Configer_I2C_0_ired_gain),
        .iSetConf            (CCD_Configer_I2C_0_iSetConf),
        .sensor_column_mode  (CCD_Configer_I2C_0_sensor_column_mode),
        .sensor_column_size  (CCD_Configer_I2C_0_sensor_column_size),
        .sensor_exposure     (CCD_Configer_I2C_0_sensor_exposure),
        .sensor_row_mode     (CCD_Configer_I2C_0_sensor_row_mode),
        .sensor_row_size     (CCD_Configer_I2C_0_sensor_row_size),
        .sensor_start_column (CCD_Configer_I2C_0_sensor_start_column),
        .sensor_start_row    (CCD_Configer_I2C_0_sensor_start_row),
        // Interface: I2C_data
        .I2C_SCLK            (CCD_Configer_I2C_0_I2C_SCLK),
        .I2C_SDAT            (CAMERA_SDATA),
        // Interface: clock_75MHz
        .iCLK                (CCD_Configer_I2C_0_iCLK),
        .iRST_N              (CCD_Configer_I2C_0_iRST_N),
        // Interface: dip_switch
        .iMIRROR_SW          (CCD_Configer_I2C_0_iMIRROR_SW));

    // IP-XACT VLNV: TUNI.fi:ip.hw:Clock_Reset:1.0
    Clock_Reset Clock_Reset_0(
        // Interface: clock_25MHz
        .outclk_0            (Clock_Reset_0_outclk_0),
        .rst_n_0             (Clock_Reset_0_rst_n_0),
        // Interface: clock_33MHz
        .outclk_2            (Clock_Reset_0_outclk_2),
        .rst_n_2             (Clock_Reset_0_rst_n_2),
        // Interface: clock_50MHz_ref
        .refclk              (Clock_Reset_0_refclk),
        // Interface: clock_75MHz
        .outclk_1            (Clock_Reset_0_outclk_1),
        .rst_n_1             (Clock_Reset_0_rst_n_1),
        // Interface: clock_camera
        .outclk_3            (Clock_Reset_0_outclk_3),
        .rst_n_3             (Clock_Reset_0_rst_n_3),
        // Interface: clock_camera_ref
        .cameraclk           (Clock_Reset_0_cameraclk),
        // Interface: push_buttons
        .fpga_pb_1           (Clock_Reset_0_fpga_pb_1),
        .fpga_pb_2           (Clock_Reset_0_fpga_pb_2));

    // IP-XACT VLNV: TUNI.fi:ip.hw:IP_SAD_Accelerator:1.0
    IP_SAD_Accelerator     IP_SAD_Accelerator_0(
        // Interface: clock_75MHz
        .arst_n              (IP_SAD_Accelerator_0_arst_n),
        .clk                 (IP_SAD_Accelerator_0_clk),
        // Interface: config_channel
        .ip_config_in_vz     (0),
        .ip_config_in_z      (0),
        .ip_config_in_lz     (),
        // Interface: left_ref_channel
        .unfiltered2_vz      (0),
        .unfiltered2_z       (0),
        .unfiltered2_lz      (),
        // Interface: orig_channel
        .orig_block_data_in_vz(0),
        .orig_block_data_in_z(0),
        .orig_block_data_in_lz(),
        // Interface: sad_result
        .sad_result          (),
        // Interface: top_ref_channel
        .unfiltered1_vz      (0),
        .unfiltered1_z       (0),
        .unfiltered1_lz      (),
        // These ports are not in any interface
        .clear_orig_fifo     (IP_SAD_Accelerator_0_clear_orig_fifo),
        .clear_unfilt1_fifo  (IP_SAD_Accelerator_0_clear_unfilt1_fifo),
        .clear_unfilt2_fifo  (IP_SAD_Accelerator_0_clear_unfilt2_fifo),
        .lambda_loaded       (IP_SAD_Accelerator_0_lambda_loaded),
        .lcu_loaded          (IP_SAD_Accelerator_0_lcu_loaded),
        .result_ready        (IP_SAD_Accelerator_0_result_ready));

    // IP-XACT VLNV: TUNI.fi:ip.hw:Kvazaar_QSYS:1.0_student
    Kvazaar_QSYS Kvazaar_QSYS_0(
        // Interface: HPS_connection
        .hps_0_hps_io_hps_io_can0_inst_RX(0),
        .hps_0_hps_io_hps_io_emac1_inst_RX_CLK(0),
        .hps_0_hps_io_hps_io_emac1_inst_RX_CTL(0),
        .hps_0_hps_io_hps_io_emac1_inst_RXD0(0),
        .hps_0_hps_io_hps_io_emac1_inst_RXD1(0),
        .hps_0_hps_io_hps_io_emac1_inst_RXD2(0),
        .hps_0_hps_io_hps_io_emac1_inst_RXD3(0),
        .hps_0_hps_io_hps_io_spim0_inst_MISO(0),
        .hps_0_hps_io_hps_io_uart0_inst_RX(0),
        .hps_0_hps_io_hps_io_usb1_inst_CLK(0),
        .hps_0_hps_io_hps_io_usb1_inst_DIR(0),
        .hps_0_hps_io_hps_io_usb1_inst_NXT(0),
        .memory_oct_rzqin    (0),
        .hps_0_hps_io_hps_io_can0_inst_TX(),
        .hps_0_hps_io_hps_io_emac1_inst_MDC(),
        .hps_0_hps_io_hps_io_emac1_inst_TX_CLK(),
        .hps_0_hps_io_hps_io_emac1_inst_TX_CTL(),
        .hps_0_hps_io_hps_io_emac1_inst_TXD0(),
        .hps_0_hps_io_hps_io_emac1_inst_TXD1(),
        .hps_0_hps_io_hps_io_emac1_inst_TXD2(),
        .hps_0_hps_io_hps_io_emac1_inst_TXD3(),
        .hps_0_hps_io_hps_io_qspi_inst_CLK(),
        .hps_0_hps_io_hps_io_qspi_inst_SS0(),
        .hps_0_hps_io_hps_io_sdio_inst_CLK(),
        .hps_0_hps_io_hps_io_spim0_inst_CLK(),
        .hps_0_hps_io_hps_io_spim0_inst_MOSI(),
        .hps_0_hps_io_hps_io_spim0_inst_SS0(),
        .hps_0_hps_io_hps_io_trace_inst_CLK(),
        .hps_0_hps_io_hps_io_trace_inst_D0(),
        .hps_0_hps_io_hps_io_trace_inst_D1(),
        .hps_0_hps_io_hps_io_trace_inst_D2(),
        .hps_0_hps_io_hps_io_trace_inst_D3(),
        .hps_0_hps_io_hps_io_trace_inst_D4(),
        .hps_0_hps_io_hps_io_trace_inst_D5(),
        .hps_0_hps_io_hps_io_trace_inst_D6(),
        .hps_0_hps_io_hps_io_trace_inst_D7(),
        .hps_0_hps_io_hps_io_uart0_inst_TX(),
        .hps_0_hps_io_hps_io_usb1_inst_STP(),
        .memory_mem_a        (),
        .memory_mem_ba       (),
        .memory_mem_cas_n    (),
        .memory_mem_ck       (),
        .memory_mem_ck_n     (),
        .memory_mem_cke      (),
        .memory_mem_cs_n     (),
        .memory_mem_dm       (),
        .memory_mem_odt      (),
        .memory_mem_ras_n    (),
        .memory_mem_reset_n  (),
        .memory_mem_we_n     (),
        .hps_0_hps_io_hps_io_emac1_inst_MDIO(),
        .hps_0_hps_io_hps_io_gpio_inst_GPIO09(),
        .hps_0_hps_io_hps_io_gpio_inst_GPIO35(),
        .hps_0_hps_io_hps_io_gpio_inst_GPIO41(),
        .hps_0_hps_io_hps_io_gpio_inst_GPIO42(),
        .hps_0_hps_io_hps_io_gpio_inst_GPIO43(),
        .hps_0_hps_io_hps_io_gpio_inst_GPIO44(),
        .hps_0_hps_io_hps_io_i2c0_inst_SCL(),
        .hps_0_hps_io_hps_io_i2c0_inst_SDA(),
        .hps_0_hps_io_hps_io_qspi_inst_IO0(),
        .hps_0_hps_io_hps_io_qspi_inst_IO1(),
        .hps_0_hps_io_hps_io_qspi_inst_IO2(),
        .hps_0_hps_io_hps_io_qspi_inst_IO3(),
        .hps_0_hps_io_hps_io_sdio_inst_CMD(),
        .hps_0_hps_io_hps_io_sdio_inst_D0(),
        .hps_0_hps_io_hps_io_sdio_inst_D1(),
        .hps_0_hps_io_hps_io_sdio_inst_D2(),
        .hps_0_hps_io_hps_io_sdio_inst_D3(),
        .hps_0_hps_io_hps_io_usb1_inst_D0(),
        .hps_0_hps_io_hps_io_usb1_inst_D1(),
        .hps_0_hps_io_hps_io_usb1_inst_D2(),
        .hps_0_hps_io_hps_io_usb1_inst_D3(),
        .hps_0_hps_io_hps_io_usb1_inst_D4(),
        .hps_0_hps_io_hps_io_usb1_inst_D5(),
        .hps_0_hps_io_hps_io_usb1_inst_D6(),
        .hps_0_hps_io_hps_io_usb1_inst_D7(),
        .memory_mem_dq       (),
        .memory_mem_dqs      (),
        .memory_mem_dqs_n    (),
        // Interface: camera_config
        .camera_control_oc_s2_address(0),
        .camera_control_oc_s2_byteenable(3),
        .camera_control_oc_s2_chipselect(1),
        .camera_control_oc_s2_clken(1),
        .camera_control_oc_s2_write(0),
        .camera_control_oc_s2_writedata(0),
        .camera_control_oc_s2_readdata(),
        // Interface: camera_start_config
        .configure_camera_external_connection_export(),
        // Interface: clock_75MHz
        .clk_clk             (0),
        .reset_reset_n       (0),
        // Interface: clock_camera
        .dma_yuv_fifo_clk_clk(0),
        // Interface: config_channel
        .acc_config_channel_vz(0),
        .acc_config_channel_data(),
        .acc_config_channel_lz(),
        // Interface: left_ref_channel
        .axi_dma_unfiltered2_channel_vz_export(0),
        .axi_dma_unfiltered2_channel_data_export(),
        .axi_dma_unfiltered2_channel_lz_export(),
        // Interface: orig_channel
        .axi_dma_orig_block_channel_vz_export(0),
        .axi_dma_orig_block_channel_data_export(),
        .axi_dma_orig_block_channel_lz_export(),
        // Interface: sad_result
        .sad_result_high_external_connection_export(0),
        .sad_result_low_external_connection_export(0),
        // Interface: top_ref_channel
        .axi_dma_unfiltered1_channel_vz_export(0),
        .axi_dma_unfiltered1_channel_data_export(),
        .axi_dma_unfiltered1_channel_lz_export(),
        // Interface: u_channel
        .dma_yuv_yuv_input_u_data_in_vz(0),
        .dma_yuv_yuv_input_u_data_in_z(0),
        .dma_yuv_yuv_input_u_data_in_lz(),
        // Interface: v_channel
        .dma_yuv_yuv_input_v_data_in_vz(0),
        .dma_yuv_yuv_input_v_data_in_z(0),
        .dma_yuv_yuv_input_v_data_in_lz(),
        // Interface: y_channel
        .dma_yuv_yuv_input_y_data_in_vz(0),
        .dma_yuv_yuv_input_y_data_in_z(0),
        // Interface: yuv_ctrl
        .yuv_status_external_connection_export(0),
        .yuv_ctrl_external_connection_export(),
        // There ports are contained in many interfaces
        .hps_0_f2h_stm_hw_events_stm_hwevents(0),
        // These ports are not in any interface
        .axi_dma_orig_block_clear_fifo_export(Kvazaar_QSYS_0_axi_dma_orig_block_clear_fifo_export),
        .axi_dma_unfiltered1_clear_fifo_export(Kvazaar_QSYS_0_axi_dma_unfiltered1_clear_fifo_export),
        .axi_dma_unfiltered2_clear_fifo_export(Kvazaar_QSYS_0_axi_dma_unfiltered2_clear_fifo_export),
        .dma_yuv_yuv_input_clear_dma_and_fifo(0),
        .hps_0_f2h_cold_reset_req_reset_n(1),
        .hps_0_f2h_debug_reset_req_reset_n(1),
        .hps_0_f2h_warm_reset_req_reset_n(1),
        .lambda_loaded_external_connection_export(Kvazaar_QSYS_0_lambda_loaded_external_connection_export),
        .lcu_loaded_external_connection_export(Kvazaar_QSYS_0_lcu_loaded_external_connection_export),
        .result_ready_external_connection_export(Kvazaar_QSYS_0_result_ready_external_connection_export),
        .dma_yuv_yuv_input_y_data_in_lz(),
        .hps_0_h2f_reset_reset_n());

    // IP-XACT VLNV: TUNI.fi:ip.hw:LTP_Controller:1.0
    LTP_Controller LTP_Controller_0(
        // Interface: LCD
        .horizontal_sync     (LTP_Controller_0_horizontal_sync),
        .LCD_blue            (LTP_Controller_0_LCD_blue),
        .LCD_clock           (LTP_Controller_0_LCD_clock),
        .LCD_dim             (LTP_Controller_0_LCD_dim),
        .LCD_green           (LTP_Controller_0_LCD_green),
        .LCD_mode            (LTP_Controller_0_LCD_mode),
        .LCD_power_ctl       (LTP_Controller_0_LCD_power_ctl),
        .LCD_red             (LTP_Controller_0_LCD_red),
        .LCD_rstb            (LTP_Controller_0_LCD_rstb),
        .LCD_shlr            (LTP_Controller_0_LCD_shlr),
        .LCD_updn            (LTP_Controller_0_LCD_updn),
        .vertical_sync       (LTP_Controller_0_vertical_sync),
        // Interface: RGB_data
        .blue_in             (LTP_Controller_0_blue_in),
        .fifo_write          (LTP_Controller_0_fifo_write),
        .green_in            (LTP_Controller_0_green_in),
        .red_in              (LTP_Controller_0_red_in),
        // Interface: clock_33MHz
        .clk                 (LTP_Controller_0_clk),
        .rst_n               (LTP_Controller_0_rst_n),
        // Interface: clock_camera
        .fifo_in_clk         (LTP_Controller_0_fifo_in_clk),
        // These ports are not in any interface
        .clear_lcd           (0));

    // IP-XACT VLNV: TUNI.fi:ip.hw:RAW_to_RGB:1.0
    RAW_to_RGB RAW_to_RGB_0(
        // Interface: RAW_data
        .iData               (RAW_to_RGB_0_iData),
        .iDval               (RAW_to_RGB_0_iDval),
        .iX_Cont             (RAW_to_RGB_0_iX_Cont),
        .iY_Cont             (RAW_to_RGB_0_iY_Cont),
        // Interface: RGB_data
        .oBlue               (RAW_to_RGB_0_oBlue),
        .oDval               (RAW_to_RGB_0_oDval),
        .oGreen              (RAW_to_RGB_0_oGreen),
        .oRed                (RAW_to_RGB_0_oRed),
        // Interface: clock_camera
        .iCLK                (RAW_to_RGB_0_iCLK),
        .iRST_n              (RAW_to_RGB_0_iRST_n),
        // Interface: dip_switch
        .iMIRROR             (RAW_to_RGB_0_iMIRROR),
        // These ports are not in any interface
        .iNext               (0));

    // IP-XACT VLNV: TUNI.fi:ip.hw:RGB_to_YUV:1.0
    RGB_to_YUV RGB_to_YUV_0(
        // Interface: CCD_data
        .frame_valid         (RGB_to_YUV_0_frame_valid),
        // Interface: RGB_data
        .iBlue_z             (RGB_to_YUV_0_iBlue_z),
        .iDval_z             (RGB_to_YUV_0_iDval_z),
        .iGreen_z            (RGB_to_YUV_0_iGreen_z),
        .iRed_z              (RGB_to_YUV_0_iRed_z),
        // Interface: clock_camera
        .clk                 (RGB_to_YUV_0_clk),
        .rst_n               (RGB_to_YUV_0_rst_n),
        // Interface: u_channel
        .oU_vz               (0),
        .oU_lz               (),
        .oU_z                (),
        // Interface: v_channel
        .oV_vz               (0),
        .oV_lz               (),
        .oV_z                (),
        // Interface: y_channel
        .oY_vz               (0),
        .oY_lz               (),
        .oY_z                (),
        // Interface: yuv_ctrl
        .yuv_ctrl            (0),
        .write_done          (),
        // These ports are not in any interface
        .x_pixels            (800),
        .y_pixels            (480));


endmodule
