`default_nettype none

module datamover_axi_wrap
  #( parameter AWIDTH = 8,
     parameter IAWIDTH = 8 )
   ( output wire [IAWIDTH-1:0]        iaddr,
     input wire [4+AWIDTH+AWIDTH-1:0] instr,
     input wire                       instr_val,

     // AXI4-lite master memory interface
     // address write channel
     output wire                      axi_awvalid,
     input wire                       axi_awready,
     output wire [31:0]               axi_awaddr,
     output wire [2:0]                axi_awprot,
     // data write channel
     output wire                      axi_wvalid,
     input wire                       axi_wready,
     output wire [31:0]               axi_wdata,
     output wire [3:0]                axi_wstrb,
     // response channel
     input wire                       axi_bvalid,
     output wire                      axi_bready,
     input wire [1:0]                 axi_bresp,
     // address read channel
     output wire                      axi_arvalid,
     input wire                       axi_arready,
     output wire [31:0]               axi_araddr,
     output wire [2:0]                axi_arprot,
     // read data channel
     input wire                       axi_rvalid,
     output wire                      axi_rready,
     input wire [31:0]                axi_rdata,
     input wire [1:0]                 axi_rresp,

     output wire                      data_rdy,
     input wire                       clk,
     input wire                       rstn);

   datamover_axi #(AWIDTH, IAWIDTH) u1 (iaddr, instr, instr_val,
                 axi_awvalid, axi_awready, axi_awaddr, axi_awprot,
                 axi_wvalid, axi_wready, axi_wdata, axi_wstrb,
                 axi_bvalid, axi_bready, axi_bresp,
                 axi_arvalid, axi_arready, axi_araddr, axi_arprot,
                 axi_rvalid, axi_rready, axi_rdata, axi_rresp,
                 data_rdy, clk, rstn);

endmodule

`default_nettype wire
