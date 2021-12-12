module top( input sys_clk_i,
            input reset_n_i,
            input uart0_rxd_i,
            output uart0_txd_o,
            output mosi_o, //output mosi
            input miso_i, //input miso
            output sclk_o, //output sclk
            output nss_o);

    wire clk72mhz_o;
    wire        master_pclk_o;
    wire        master_rst_o;
    wire        master_penable_o;
    wire [7:0]  master_paddr_o;
    wire        master_pwrite_o;
    wire [31:0] master_pwdata_o;
    wire [3:0]  master_pstrb_o;
    wire [2:0]  master_pprot_o;
    wire        master_psel1_o;
    wire [31:0] master_prdata1_i;
    wire        master_pready1_i;
    wire        master_pslverr1_i;

    Gowin_PLLVR pll_72MHz(
        .clkout(clk72mhz_o), //output clkout
        .clkin(sys_clk_i) //input clkin
    );

//    assign master_pready1_i = 1'b1;
//    assign master_pslverr1_i = 1;
//    assign master_prdata1_i = 0;

//    assign sclk_o = 0;
//    assign nss_o = 0;
//    assign mosi_o = 0;

    Gowin_EMPU empu_m3(
		.sys_clk(clk72mhz_o), //input sys_clk
		.uart0_rxd(uart0_rxd_i), //input uart0_rxd
		.uart0_txd(uart0_txd_o), //output uart0_txd
//    .mosi(mosi_o), //output mosi
//		.miso(miso_i), //input miso
//		.sclk(sclk_o), //output sclk
//		.nss(nss_o), //output nss
		.master_pclk(master_pclk_o), //output master_pclk
		.master_rst(master_rst_o), //output master_rst
		.master_penable(master_penable_o), //output master_penable
		.master_paddr(master_paddr_o), //output [7:0] master_paddr
		.master_pwrite(master_pwrite_o), //output master_pwrite
		.master_pwdata(master_pwdata_o), //output [31:0] master_pwdata
		.master_pstrb(master_pstrb_o), //output [3:0] master_pstrb
		.master_pprot(master_pprot_o), //output [2:0] master_pprot
		.master_psel1(master_psel1_o), //output master_psel1
		.master_prdata1(master_prdata1_i), //input [31:0] master_prdata1
		.master_pready1(master_pready1_i), //input master_pready1
		.master_pslverr1(master_pslverr1_i), //input master_pslverr1
		.reset_n(reset_n_i) //input reset_n
	);

  SPIController spi(
    .io_apb_PADDR(master_paddr_o),
    .io_apb_PSEL(master_psel1_o),
    .io_apb_PENABLE(master_penable_o),
    .io_apb_PREADY(master_pready1_i),
    .io_apb_PWRITE(master_pwrite_o),
    .io_apb_PWDATA(master_pwdata_o),
    .io_apb_PRDATA(master_prdata1_i),
    .io_apb_PSLVERROR(master_pslverr1_i),
    .io_spiMOSI(mosi_o), //output mosi
		.io_spiMISO(miso_i), //input miso
		.io_spiSCK(sclk_o), //output sclk
		.io_spiCS(nss_o), //output nss
    .clk(master_pclk_o),
    .resetn(master_rst_o)

//    .dbg_fifoQ(dbg_fifoQ),
//    .dbg_regData0(dbg_regData0),
//    .dbg_fifoRd(dbg_fifoRd),
//    .dbg_regDataTrg(dbg_regDataTrg)
  );

endmodule