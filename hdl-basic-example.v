`default_nettype none

// 2:1 8 bit multiplexer

module mux8_2to1
  ( input wire [7:0] a,
    input wire [7:0] b,
    input wire 	     sel,
    output wire [7:0] y);

   assign y = sel ? a : b;
endmodule // mux8_2to1

// signal concatenation

module concat
  ( input wire [7:0] a,
    input wire [7:0] b,
    output wire [15:0] y);

   assign y = {a,b};
endmodule // concat

// slice of signal

module slice
  ( input wire [15:0] a,
    output wire [7:0] y);

   assign y = a[7:0];
endmodule // slice

// 7 segment encoder

module seven_segment
  ( input wire [3:0] x,
    output wire pin_a,
    output wire pin_b,
    output wire pin_c,
    output wire pin_d,
    output wire pin_e,
    output wire pin_f,
    output wire pin_g );

   wire [6:0] 	pin;

   assign pin = (x == 4'h0) ? 7'b1111110 :
		(x == 4'h1) ? 7'b0110000 :
		(x == 4'h2) ? 7'b1101101 :
		(x == 4'h3) ? 7'b1111001 :
		(x == 4'h4) ? 7'b0110011 :
		(x == 4'h5) ? 7'b1011011 :
		(x == 4'h6) ? 7'b1011111 :
		(x == 4'h7) ? 7'b1110000 :
		(x == 4'h8) ? 7'b1111111 :
		(x == 4'h9) ? 7'b1111011 :
   		(x == 4'ha) ? 7'b1110111 :
		(x == 4'hb) ? 7'b0011111 :
		(x == 4'hc) ? 7'b1001110 :
		(x == 4'hd) ? 7'b0111101 :
		(x == 4'he) ? 7'b1001111 :
		7'b1000111;

   assign {pin_a,pin_b,pin_c,pin_d,pin_e,pin_f,pin_g} = pin;

endmodule

// 7 segment encoder by always_comb and case

module seven_segment_2
  ( input wire [3:0] x,
    output wire pin_a,
    output wire pin_b,
    output wire pin_c,
    output wire pin_d,
    output wire pin_e,
    output wire pin_f,
    output wire pin_g );

   logic [6:0] 	pin;

   always_comb begin
      case (x)
	4'h0: pin = 7'b1111110;
	4'h1: pin = 7'b0110000;
	4'h2: pin = 7'b1101101;
	4'h3: pin = 7'b1111001;
	4'h4: pin = 7'b0110011;
	4'h5: pin = 7'b1011011;
	4'h6: pin = 7'b1011111;
	4'h7: pin = 7'b1110000;
	4'h8: pin = 7'b1111111;
	4'h9: pin = 7'b1111011;
   	4'ha: pin = 7'b1110111;
	4'hb: pin = 7'b0011111;
	4'hc: pin = 7'b1001110;
	4'hd: pin = 7'b0111101;
	4'he: pin = 7'b1001111;
	default: pin = 7'b1000111;
      endcase // case (x)
   end // always_comb

   assign {pin_a,pin_b,pin_c,pin_d,pin_e,pin_f,pin_g} = pin;

endmodule

// D Flip Flip with synchronous reset

module fdr
  (input wire d,
   input wire clk,
   input wire rstn,
   output reg q);

   always @(posedge clk) begin
      if (~rstn) begin
	 q <= 0;
      end else begin
	 q <= d;
      end
   end
endmodule // fdr

// D Flip Flip with synchronous reset, enable

module fdre
  (input wire d,
   input wire clk,
   input wire rstn,
   input wire e,
   output reg q);

   always @(posedge clk) begin
      if (~rstn) begin
	 q <= 0;
      end else if (e) begin
	 q <= d;
      end
   end
endmodule // fdre

// synchronous write, asynchronous read, single port
// RAM by distributed RAM

module dist_ram
  ( input wire [9:0]   addr,
    input wire [15:0]  data_in,
    output wire [15:0] data_out,
    input wire 	       write_enable,
    input wire 	       clk);

   reg [15:0] 	       dram[1023:0];

   always @(posedge clk) begin
      if (write_enable) begin
	 dram[addr] <= data_in;
      end
   end

   assign data_out = dram[addr];
endmodule // dist_ram

// write-first mode single port block RAM

module blk_ram
  ( input wire [9:0]  addr,
    input wire [15:0] data_in,
    output reg [15:0] data_out,
    input wire 	      write_enable,
    input wire 	      enable,
    input wire 	      clk );

   reg [15:0] 	bram[1023:0];

   always @(posedge clk) begin
      if (enable) begin
	 if (write_enable) begin
	    bram[addr] <= data_in;
	    data_out <= data_in;
	 end else begin
	   data_out <= bram[addr];
	 end
      end
   end
endmodule // blk_ram

// write-first mode single port block RAM with output registers
// for high clock frequencies.

module blk_ram_reg
  ( input wire [9:0]  addr,
    input wire [15:0] data_in,
    output reg [15:0] data_out,
    input wire 	      write_enable,
    input wire 	      enable,
    input wire 	      clk );

   reg [15:0] 	bram[1023:0];
   reg [15:0] 	outreg;

   always @(posedge clk) begin
      if (enable) begin
	 if (write_enable) begin
	    bram[addr] <= data_in;
	    outreg <= data_in;
	 end else begin
	    outreg <= bram[addr];
	 end
	 data_out <= outreg;
      end
   end
endmodule // blk_ram_reg

// write-first mode dual port block RAM

module blk_ram_dual_port
  ( input wire [9:0]  addr_a,
    input wire [9:0]  addr_b,
    input wire [15:0] data_in_a,
    input wire [15:0] data_in_b,
    output reg [15:0] data_out_a,
    output reg [15:0] data_out_b,
    input wire 	      write_enable_a,
    input wire 	      write_enable_b,
    input wire 	      enable_a,
    input wire 	      enable_b,
    input wire 	      clk );

   reg [15:0] 	bram[1023:0];

   always @(posedge clk) begin
      if (enable_a) begin
	 if (write_enable_a) begin
	    bram[addr_a] <= data_in_a;
	    data_out_a <= data_in_a;
	 end else begin
	   data_out_a <= bram[addr_a];
	 end
      end
   end

   always @(posedge clk) begin
      if (enable_b) begin
	 if (write_enable_b) begin
	    bram[addr_b] <= data_in_b;
	    data_out_b <= data_in_b;
	 end else begin
	    data_out_b <= bram[addr_b];
	 end
      end
   end
endmodule // blk_ram_dual_port

// 32 bit shift register without reset

module shift_reg
  ( input wire  si,
    output wire so,
    input wire 	clk);

   reg 		shift_reg[31:0];

   always @(posedge clk) begin
      shift_reg <= {shift_reg[30:0], si};
   end

   assign so = shift_reg[31];
endmodule

// 8 bit adder with carry

module cadder
  ( input wire [7:0]  a,
    input wire [7:0]  b,
    output wire [7:0] y,
    output wire       c);

   assign {c,y} = {1'b0,a} + {1'b0,b};
endmodule // cadder

// 32 bit signed multiplier
// 1 latency stage on operands
// 5 latency stage on the multiplication

module mult_signed
  ( input wire [31:0]  a,
    input wire [31:0]  b,
    output wire [63:0] y,
    input wire 	       clk );

   reg [31:0] 	       a_reg;
   reg [31:0] 	       b_reg;
   reg [63:0] 	       out_reg[4:0];

   always @(posedge clk) begin
      a_reg <= a;
      b_reg <= b;
      out_reg[0] <= $signed(a_reg) * $signed(b_reg);
      out_reg[4:1] <= out_reg[3:0];
   end

   assign y = out_reg[4];
endmodule // mult_signed

`default_nettype wire
