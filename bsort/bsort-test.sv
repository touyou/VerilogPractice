`timescale 1ns / 100ps
`default_nettype none

module test_bsort();
   localparam WIDTH = 8;
   localparam NITEM = 8;

   logic [WIDTH*NITEM-1:0] xini = 64'ha7a8f1e2d5c6b3b4;

   logic [WIDTH*NITEM-1:0] x;
   logic 		   val_x;

   wire [WIDTH*NITEM-1:0]  y;
   wire 		   rdy_y;

   logic 		   clk;
   logic 		   rstn;

   bsort #(WIDTH,NITEM) u1(x,val_x,y,rdy_y,clk,rstn);

   initial begin
      $dumpfile("test_bsort.vcd");
      $dumpvars(0);

      #1;

      rstn <= 0;
      clk <= 0;
      x <= 0;
      val_x <= 0;

      #1;
      clk = ~clk;
      #1;
      clk = ~clk;

      rstn <= 1;

      #1;
      clk = ~clk;
      #1;
      clk = ~clk;

      x <= xini;
      val_x <= 1;

      #1;
      clk = ~clk;
      #1;
      clk = ~clk;

      val_x <= 0;

      repeat(10) begin
        #1;
        clk = ~clk;
        #1;
        clk = ~clk;
        $display("%b %x\n",rdy_y,y);
      end

      $finish;
   end
endmodule

`default_nettype wire
