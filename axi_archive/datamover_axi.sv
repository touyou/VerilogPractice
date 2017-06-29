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

   reg [6:0]                state;
   reg [IAWIDTH-1:0]        pc;
   wire [3:0]               opcode;
   wire [AWIDTH-1:0]        op_a;
   wire [AWIDTH-1:0]        op_b;

   // Operand: 0x0 copy ELSE end exec
   assign opcode = inst[4+AWIDTH+AWIDTH-1:AWIDTH+AWIDTH];
   // Copy Source
   assign op_a = inst[AWIDTH-1:0];
   // Copy Destination
   assign op_b = inst[AWIDTH+AWIDTH-1:AWIDTH];
   assign iaddr = pc;

   localparam s_wait        = 7'b0000001;
   localparam s_inst_fetch  = 7'b0000010;
   localparam s_inst_decode = 7'b0000100;
   localparam s_d_load_req  = 7'b0001000;
   localparam s_d_load_acp  = 7'b0010000;
   localparam s_d_store_req = 7'b0100000;
   localparam s_d_store_acp = 7'b1000000;
   // address write channel output axi_awvalid, input axi_awready, output  axi_awaddr, output axi_awprot,
   // data write channel output axi_wvalid. input axi_wready, output axi_wdata, output axi_wstrb,
   // response channel input axi_bvalid, output axi_bready, input axi_bresp,
   // address read channel output axi_arvalid, input axi_arready, output axi_araddr, output axi_arprot,
   // read data channel input axi_rvalid, output axi_rready, input axi_rdata, input axi_rresp,

   // Ignore this program
   assign axi_awprot = 0;
   assign axi_arprot = 0;
   assign axi_wstrb = 4'b1111;

   always @(posedge clk) begin
      if (~rstn) begin
        state <= s_wait;
        pc <= 0;
        data_rdy <= 0;
        axi_awvalid <= 0;
        axi_awaddr <= 0;

        axi_wvalid <= 0;
        axi_wdata <= 0;

        axi_bready <= 0;
        // Status
        axi_bresp <= 0;

        axi_arvalid <= 0;
        axi_araddr <= 0;

        axi_rready <= 0;
        // Status
        axi_rresp <= 0;
      end else begin
        if (state == s_wait) begin
        end
      end
   end

endmodule

`default_nettype wire
