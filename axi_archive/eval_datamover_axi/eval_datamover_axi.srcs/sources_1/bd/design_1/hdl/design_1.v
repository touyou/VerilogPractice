//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
//Date        : Mon Jun 26 16:58:01 2017
//Host        : hodaka running 64-bit Debian GNU/Linux 8.8 (jessie)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=19,numReposBlks=19,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=2,da_bram_cntlr_cnt=3,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (led,
    ledtrig);
  output [7:0]led;
  output ledtrig;

  wire [11:0]axi_bram_ctrl_0_bram_addr_a;
  wire axi_bram_ctrl_0_bram_clk_a;
  wire axi_bram_ctrl_0_bram_en_a;
  wire [3:0]axi_bram_ctrl_0_bram_we_a;
  wire [31:0]axi_bram_ctrl_0_bram_wrdata_a;
  wire [19:0]blk_mem_gen_0_douta;
  wire [31:0]blk_mem_gen_1_douta;
  wire [31:0]blk_mem_gen_1_doutb;
  wire [7:0]c_counter_binary_0_Q;
  wire [0:0]c_shift_ram_0_Q;
  wire [0:0]c_shift_ram_1_Q;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire [31:0]datamover_axi_wrap_0_axi_ARADDR;
  wire [2:0]datamover_axi_wrap_0_axi_ARPROT;
  wire datamover_axi_wrap_0_axi_ARREADY;
  wire datamover_axi_wrap_0_axi_ARVALID;
  wire [31:0]datamover_axi_wrap_0_axi_AWADDR;
  wire [2:0]datamover_axi_wrap_0_axi_AWPROT;
  wire datamover_axi_wrap_0_axi_AWREADY;
  wire datamover_axi_wrap_0_axi_AWVALID;
  wire datamover_axi_wrap_0_axi_BREADY;
  wire [1:0]datamover_axi_wrap_0_axi_BRESP;
  wire datamover_axi_wrap_0_axi_BVALID;
  wire [31:0]datamover_axi_wrap_0_axi_RDATA;
  wire datamover_axi_wrap_0_axi_RREADY;
  wire [1:0]datamover_axi_wrap_0_axi_RRESP;
  wire datamover_axi_wrap_0_axi_RVALID;
  wire [31:0]datamover_axi_wrap_0_axi_WDATA;
  wire datamover_axi_wrap_0_axi_WREADY;
  wire [3:0]datamover_axi_wrap_0_axi_WSTRB;
  wire datamover_axi_wrap_0_axi_WVALID;
  wire datamover_axi_wrap_0_data_rdy;
  wire [7:0]datamover_axi_wrap_0_iaddr;
  wire util_reduced_logic_0_Res;
  wire [9:0]xlconcat_0_dout;
  wire [0:0]xlconstant_0_dout;
  wire [19:0]xlconstant_1_dout;
  wire [0:0]xlconstant_2_dout;
  wire [1:0]xlconstant_3_dout;
  wire [31:0]xlconstant_4_dout;
  wire [3:0]xlconstant_5_dout;
  wire [9:0]xlslice_0_Dout;
  wire [7:0]xlslice_1_Dout;

  assign led[7:0] = xlslice_1_Dout;
  assign ledtrig = util_reduced_logic_0_Res;
  design_1_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_bram_addr_a),
        .bram_clk_a(axi_bram_ctrl_0_bram_clk_a),
        .bram_en_a(axi_bram_ctrl_0_bram_en_a),
        .bram_rddata_a(blk_mem_gen_1_douta),
        .bram_we_a(axi_bram_ctrl_0_bram_we_a),
        .bram_wrdata_a(axi_bram_ctrl_0_bram_wrdata_a),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(datamover_axi_wrap_0_axi_ARADDR[11:0]),
        .s_axi_aresetn(clk_wiz_0_locked),
        .s_axi_arprot(datamover_axi_wrap_0_axi_ARPROT),
        .s_axi_arready(datamover_axi_wrap_0_axi_ARREADY),
        .s_axi_arvalid(datamover_axi_wrap_0_axi_ARVALID),
        .s_axi_awaddr(datamover_axi_wrap_0_axi_AWADDR[11:0]),
        .s_axi_awprot(datamover_axi_wrap_0_axi_AWPROT),
        .s_axi_awready(datamover_axi_wrap_0_axi_AWREADY),
        .s_axi_awvalid(datamover_axi_wrap_0_axi_AWVALID),
        .s_axi_bready(datamover_axi_wrap_0_axi_BREADY),
        .s_axi_bresp(datamover_axi_wrap_0_axi_BRESP),
        .s_axi_bvalid(datamover_axi_wrap_0_axi_BVALID),
        .s_axi_rdata(datamover_axi_wrap_0_axi_RDATA),
        .s_axi_rready(datamover_axi_wrap_0_axi_RREADY),
        .s_axi_rresp(datamover_axi_wrap_0_axi_RRESP),
        .s_axi_rvalid(datamover_axi_wrap_0_axi_RVALID),
        .s_axi_wdata(datamover_axi_wrap_0_axi_WDATA),
        .s_axi_wready(datamover_axi_wrap_0_axi_WREADY),
        .s_axi_wstrb(datamover_axi_wrap_0_axi_WSTRB),
        .s_axi_wvalid(datamover_axi_wrap_0_axi_WVALID));
  design_1_axi_protocol_checker_0_0 axi_protocol_checker_0
       (.aclk(clk_wiz_0_clk_out1),
        .aresetn(clk_wiz_0_locked),
        .pc_axi_araddr(datamover_axi_wrap_0_axi_ARADDR),
        .pc_axi_arprot(datamover_axi_wrap_0_axi_ARPROT),
        .pc_axi_arready(datamover_axi_wrap_0_axi_ARREADY),
        .pc_axi_arvalid(datamover_axi_wrap_0_axi_ARVALID),
        .pc_axi_awaddr(datamover_axi_wrap_0_axi_AWADDR),
        .pc_axi_awprot(datamover_axi_wrap_0_axi_AWPROT),
        .pc_axi_awready(datamover_axi_wrap_0_axi_AWREADY),
        .pc_axi_awvalid(datamover_axi_wrap_0_axi_AWVALID),
        .pc_axi_bready(datamover_axi_wrap_0_axi_BREADY),
        .pc_axi_bresp(datamover_axi_wrap_0_axi_BRESP),
        .pc_axi_bvalid(datamover_axi_wrap_0_axi_BVALID),
        .pc_axi_rdata(datamover_axi_wrap_0_axi_RDATA),
        .pc_axi_rready(datamover_axi_wrap_0_axi_RREADY),
        .pc_axi_rresp(datamover_axi_wrap_0_axi_RRESP),
        .pc_axi_rvalid(datamover_axi_wrap_0_axi_RVALID),
        .pc_axi_wdata(datamover_axi_wrap_0_axi_WDATA),
        .pc_axi_wready(datamover_axi_wrap_0_axi_WREADY),
        .pc_axi_wstrb(datamover_axi_wrap_0_axi_WSTRB),
        .pc_axi_wvalid(datamover_axi_wrap_0_axi_WVALID));
  design_1_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(datamover_axi_wrap_0_iaddr),
        .clka(clk_wiz_0_clk_out1),
        .dina(xlconstant_1_dout),
        .douta(blk_mem_gen_0_douta),
        .wea(xlconstant_0_dout));
  design_1_blk_mem_gen_1_0 blk_mem_gen_1
       (.addra(xlslice_0_Dout),
        .addrb(xlconcat_0_dout),
        .clka(axi_bram_ctrl_0_bram_clk_a),
        .clkb(clk_wiz_0_clk_out1),
        .dina(axi_bram_ctrl_0_bram_wrdata_a),
        .dinb(xlconstant_4_dout),
        .douta(blk_mem_gen_1_douta),
        .doutb(blk_mem_gen_1_doutb),
        .ena(axi_bram_ctrl_0_bram_en_a),
        .enb(datamover_axi_wrap_0_data_rdy),
        .wea(axi_bram_ctrl_0_bram_we_a),
        .web(xlconstant_5_dout));
  design_1_c_counter_binary_0_0 c_counter_binary_0
       (.CE(datamover_axi_wrap_0_data_rdy),
        .CLK(clk_wiz_0_clk_out1),
        .Q(c_counter_binary_0_Q));
  design_1_c_shift_ram_0_0 c_shift_ram_0
       (.CLK(clk_wiz_0_clk_out1),
        .D(xlconstant_2_dout),
        .Q(c_shift_ram_0_Q));
  design_1_c_shift_ram_0_1 c_shift_ram_1
       (.CLK(clk_wiz_0_clk_out1),
        .D(c_shift_ram_0_Q),
        .Q(c_shift_ram_1_Q));
  design_1_datamover_axi_wrap_0_0 datamover_axi_wrap_0
       (.axi_araddr(datamover_axi_wrap_0_axi_ARADDR),
        .axi_arprot(datamover_axi_wrap_0_axi_ARPROT),
        .axi_arready(datamover_axi_wrap_0_axi_ARREADY),
        .axi_arvalid(datamover_axi_wrap_0_axi_ARVALID),
        .axi_awaddr(datamover_axi_wrap_0_axi_AWADDR),
        .axi_awprot(datamover_axi_wrap_0_axi_AWPROT),
        .axi_awready(datamover_axi_wrap_0_axi_AWREADY),
        .axi_awvalid(datamover_axi_wrap_0_axi_AWVALID),
        .axi_bready(datamover_axi_wrap_0_axi_BREADY),
        .axi_bresp(datamover_axi_wrap_0_axi_BRESP),
        .axi_bvalid(datamover_axi_wrap_0_axi_BVALID),
        .axi_rdata(datamover_axi_wrap_0_axi_RDATA),
        .axi_rready(datamover_axi_wrap_0_axi_RREADY),
        .axi_rresp(datamover_axi_wrap_0_axi_RRESP),
        .axi_rvalid(datamover_axi_wrap_0_axi_RVALID),
        .axi_wdata(datamover_axi_wrap_0_axi_WDATA),
        .axi_wready(datamover_axi_wrap_0_axi_WREADY),
        .axi_wstrb(datamover_axi_wrap_0_axi_WSTRB),
        .axi_wvalid(datamover_axi_wrap_0_axi_WVALID),
        .clk(clk_wiz_0_clk_out1),
        .data_rdy(datamover_axi_wrap_0_data_rdy),
        .iaddr(datamover_axi_wrap_0_iaddr),
        .instr(blk_mem_gen_0_douta),
        .instr_val(c_shift_ram_1_Q),
        .rstn(clk_wiz_0_locked));
  design_1_sim_clk_gen_0_0 sim_clk_gen_0
       (.clk(clk_wiz_0_clk_out1),
        .sync_rst(clk_wiz_0_locked));
  design_1_util_reduced_logic_0_0 util_reduced_logic_0
       (.Op1(c_counter_binary_0_Q),
        .Res(util_reduced_logic_0_Res));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(c_counter_binary_0_Q),
        .In1(xlconstant_3_dout),
        .dout(xlconcat_0_dout));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  design_1_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
  design_1_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
  design_1_xlconstant_4_0 xlconstant_4
       (.dout(xlconstant_4_dout));
  design_1_xlconstant_5_0 xlconstant_5
       (.dout(xlconstant_5_dout));
  design_1_xlslice_0_0 xlslice_0
       (.Din(axi_bram_ctrl_0_bram_addr_a),
        .Dout(xlslice_0_Dout));
  design_1_xlslice_1_0 xlslice_1
       (.Din(blk_mem_gen_1_doutb),
        .Dout(xlslice_1_Dout));
endmodule
