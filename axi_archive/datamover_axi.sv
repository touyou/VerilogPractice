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
   assign opcode = instr[4+AWIDTH+AWIDTH-1:AWIDTH+AWIDTH];
   // Copy Source
   assign op_a = instr[AWIDTH-1:0];
   // Copy Destination
   assign op_b = instr[AWIDTH+AWIDTH-1:AWIDTH];
   assign iaddr = pc;

   localparam s_wait        = 7'b0000001;
   localparam s_state_1     = 7'b0000010;
   localparam s_state_2     = 7'b0000100;
   localparam s_state_3     = 7'b0001000;
   localparam s_state_4     = 7'b0010000;
   localparam s_state_5     = 7'b0100000;
   localparam s_state_6     = 7'b1000000;

   // Ignore in this program
   assign axi_awprot = 0;
   assign axi_arprot = 0;
   assign axi_wstrb = 4'b1111;

   // assign wire to reg
   reg awvalid;
   reg [31:0] awaddr;
   reg wvalid;
   reg bready;
   reg arvalid;
   assign axi_awvalid = awvalid;
   assign axi_awaddr = awaddr;
   assign axi_wvalid = wvalid;
   assign axi_bready = bready;
   assign axi_arvalid = arvalid;

   always @(posedge clk) begin
      if (~rstn) begin
        state <= s_wait;
        pc <= 0;
        data_rdy <= 0;
        awvalid <= 0;   // write address VALID
        awaddr <= 0;    // write address DATA
        wvalid <= 0;    // write data VALID
        axi_wdata <= 0;     // write data DATA
        bready <= 0;    // write response READY
        arvalid <= 0;   // read address VALID
        axi_araddr <= 0;    // read address DATA
        axi_rready <= 0;    // read data READY
      end else begin
        if (state == s_wait) begin
            pc <= 0;
            axi_araddr <= 0;
            arvalid <= 0;
            if (instr_val) begin
                state <= s_state_1;
            end
        end else if (state == s_state_1) begin
            state <= s_state_2;
        end else if (state == s_state_2) begin
            if (opcode == 4'b0000) begin
                // start reading
                axi_araddr <= {22'd0, op_a, 2'b00};
                arvalid <= 1'b1;
                state <= s_state_3;
            end else begin
                state <= s_wait;
                data_rdy <= 1'b1;
            end
        end else if (state == s_state_3) begin
            if (axi_arready) begin
                arvalid <= 0;
            end
            if (axi_rvalid) begin
                axi_rready <= 1'b1;
                state <= s_state_4;
            end
        end else if (state == s_state_4) begin
            axi_rready <= 0;
            // start writing
            awaddr <= {22'd0, op_b, 2'b00};
            awvalid <= 1'b1;
            axi_wdata <= axi_rdata;
            wvalid <= 1'b1;
            state <= s_state_5;
        end else if (state == s_state_5) begin
            if (axi_awready) begin
                awvalid <= 0;
            end
            if (axi_wready) begin
                wvalid <= 0;
            end
            if (axi_bvalid) begin
                bready <= 1'b1;
                state <= s_state_6;
            end
        end else if (state == s_state_6) begin
            bready <= 0;
            pc <= pc + 1;
            state <= s_state_1;
        end
    end
   end

endmodule

`default_nettype wire
