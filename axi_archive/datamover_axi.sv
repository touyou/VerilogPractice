`default_nettype none

module datamover_axi
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
     output reg [2:0]                 axi_awprot,
     // data write channel
     output wire                      axi_wvalid,
     input wire                       axi_wready,
     output reg [31:0]                axi_wdata,
     output reg [3:0]                 axi_wstrb,
     // response channel
     input wire                       axi_bvalid,
     output wire                      axi_bready,
     input wire [1:0]                 axi_bresp,
     // address read channel
     output wire                      axi_arvalid,
     input wire                       axi_arready,
     output reg [31:0]                axi_araddr,
     output reg [2:0]                 axi_arprot,
     // read data channel
     input wire                       axi_rvalid,
     output reg                       axi_rready,
     input wire [31:0]                axi_rdata,
     input wire [1:0]                 axi_rresp,

     output reg                       data_rdy,
     input wire                       clk,
     input wire                       rstn);

   assign iaddr = 0;

   assign axi_awvalid = 0;
   assign axi_awaddr = 0;
   assign axi_awprot = 0;
   
   assign axi_wvalid = 0;
   assign axi_wdata = 0;
   assign axi_wstrb = 0;

   assign axi_bready = 0;
   
   assign axi_arvalid = 0;
   assign axi_araddr = 0;
   assign axi_arprot = 0;

   assign data_rdy = 0;
   
endmodule

`default_nettype wire
