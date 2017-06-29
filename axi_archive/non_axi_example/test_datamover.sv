`timescale 1ns / 1ps
`default_nettype none

module test_datamover
  #( AWIDTH = 8,
     IAWIDTH = 8 )
   ();

   wire [AWIDTH-1:0]          iaddr;
   reg [4+AWIDTH+AWIDTH-1:0]  inst;
   reg 			      inst_val;
   wire [AWIDTH-1:0] 	      daddr;
   wire 		      denb;
   wire 		      dwenb;
   reg [31:0] 		      din;
   wire [31:0] 		      dout;
   wire 		      data_rdy;
   reg 			      clk;
   reg 			      rstn;

   reg [4+AWIDTH+AWIDTH-1:0]  ibram[2**IAWIDTH-1:0];
   initial $readmemh("datamover_inst.hex",ibram);
   
   reg [31:0] 		      bram[2**AWIDTH-1:0];
   initial $readmemh("datamover_data.hex",bram);

   integer 		      i;
   integer 		      f_handl;
  
   datamover u1(iaddr, inst, inst_val, daddr, denb, dwenb,
		din, dout, data_rdy, clk, rstn);

   always @(posedge clk) begin
      inst <= ibram[iaddr];
   end

   always @(posedge clk) begin
      if (denb) begin
	 if (dwenb) begin
	    bram[daddr] <= dout;
	    din <= dout;
	 end else begin
	    din <= bram[daddr];
	 end
      end
   end
   
   initial begin
      $dumpfile("test_datamover.vcd");
      $dumpvars(0);

      #1;
      rstn = 0;
      clk = 1;
      inst_val = 0;

      #1;
      clk = 0;
      #1;
      clk = 1;

      #1;
      clk = 0;
      rstn = 1;
      #1;
      clk = 1;
      
      #1;
      clk = 0;
      inst_val = 1;
      #1;
      clk = 1;

      #1;
      clk = 0;
      inst_val = 0;
      #1;
      clk = 1;

      while (data_rdy == 0) begin
	 #1;
	 clk = 0;
	 #1;
	 clk = 1;
      end
      #1;
      clk = 0;
      #1;
      clk = 1;

      f_handl = $fopen("datamover_result.hex");
      for ( i=0; i<2**AWIDTH-1; i=i+1 ) begin
	 $fwriteh(f_handl,"%08x\n",bram[i]);
      end
      $finish;
   end
endmodule

`default_nettype wire
