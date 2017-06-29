`default_nettype none

module datamover
  #( parameter AWIDTH = 8,
     parameter IAWIDTH = 8 )
   ( output wire [IAWIDTH-1:0]        iaddr,
     input wire [4+AWIDTH+AWIDTH-1:0] inst,
     input wire 		      inst_val,
     output reg [AWIDTH-1:0] 	      daddr,
     output reg 		      denb,
     output reg 		      dwenb,
     input wire [31:0]		      din,
     output reg [31:0] 		      dout,
     output reg 		      data_rdy,
     input wire 		      clk,
     input wire 		      rstn );

   reg [6:0] 		     state;
   reg [IAWIDTH-1:0] 	     pc;
   wire [3:0]		     opcode;
   wire [AWIDTH-1:0] 	     op_a;
   wire [AWIDTH-1:0] 	     op_b;   

   localparam s_wait        = 7'b0000001;
   localparam s_inst_fetch  = 7'b0000010;
   localparam s_inst_decode = 7'b0000100;
   localparam s_d_load_req  = 7'b0001000;
   localparam s_d_load_acp  = 7'b0010000;
   localparam s_d_store_req = 7'b0100000;
   localparam s_d_store_acp = 7'b1000000;

   assign opcode = inst[4+AWIDTH+AWIDTH-1:AWIDTH+AWIDTH];
   assign op_a = inst[AWIDTH-1:0];
   assign op_b = inst[AWIDTH+AWIDTH-1:AWIDTH];
   assign iaddr = pc;

   always @(posedge clk) begin
      if (~rstn) begin
         state <= s_wait;
         data_rdy <= 1'b0;
         pc <= '0;
         daddr <= '0;
         denb <= 1'b0;
         dwenb <= 1'b0;
      end else if (state == s_wait) begin
         pc <= '0;
         daddr <= '0;
         denb <= 1'b0;
         dwenb <= 1'b0;
         if (inst_val) begin
            denb <= 1'b0;
            dwenb <= 1'b0;
            state <= s_inst_fetch;
         end
      end else if (state == s_inst_fetch) begin
         state <= s_inst_decode;
      end else if (state == s_inst_decode) begin
         if (opcode == 4'b0000) begin
            daddr <= op_a;
            denb <= 1'b1;
            state <= s_d_load_req;
         end else begin
            state <= s_wait;
            data_rdy <= 1'b1;
         end
      end else if (state == s_d_load_req) begin
         denb <= 1'b0;
	 state <= s_d_load_acp;
      end else if (state == s_d_load_acp) begin 
         daddr <= op_b;
         denb <= 1'b1;
         dwenb <= 1'b1;
         dout <= din;
         state <= s_d_store_req;
      end else if (state == s_d_store_req) begin
         denb <= 1'b0;
         dwenb <= 1'b0;
         state <= s_d_store_acp;
      end else if (state == s_d_store_acp) begin
         pc <= pc + 1'b1;
         state <= s_inst_fetch;
      end
   end

endmodule

`default_nettype wire
