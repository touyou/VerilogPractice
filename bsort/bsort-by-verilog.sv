`default_nettype none

module cmpswp
  #( parameter WIDTH = 8 )
   ( input wire [WIDTH-1:0]  x1,
     input wire [WIDTH-1:0]  x2,
     output wire [WIDTH-1:0] y1,
     output wire [WIDTH-1:0] y2,
     output wire             flip);

   assign flip = (x1>x2) ? 1 : 0;

   assign y1 = flip ? x2 : x1;
   assign y2 = flip ? x1 : x2;

endmodule

module bsort
  #( parameter WIDTH = 8,
     parameter NITEM = 8 )
   ( input wire [WIDTH*NITEM-1:0] x,
     input wire               val_x,
     output reg [WIDTH*NITEM-1:0] y,
     output wire              rdy_y,
     input wire               clk,
     input wire               rstn);

   wire [WIDTH*NITEM-1:0]     t;
   wire [WIDTH*NITEM-1:0]     y_n;

   reg [NITEM-2:0]            flip;
   wire [NITEM-2:0]           flip_n;

   always @(posedge clk) begin
      if (~rstn) begin
         y <= 0;
         flip <= 0;
      end else if (val_x) begin
         y <= x;
         flip <= {(NITEM-1){1'b1}};
      end else if (~rdy_y) begin
         y <= y_n;
         flip <= flip_n;
      end
   end

   assign rdy_y = ~(|flip);

   genvar                     i;
   generate
      for (i=0;i+1<NITEM;i=i+2) begin : even_stage
         wire [WIDTH-1:0] v1 = y[WIDTH*(i+1)-1:WIDTH*i];
         wire [WIDTH-1:0] v2 = y[WIDTH*(i+2)-1:WIDTH*(i+1)];
         wire [WIDTH-1:0] w1;
         wire [WIDTH-1:0] w2;

         cmpswp #(WIDTH) u1(v1,v2,w1,w2,flip_n[i]);
         assign t[WIDTH*(i+1)-1:WIDTH*i] = w1;
         assign t[WIDTH*(i+2)-1:WIDTH*(i+1)] = w2;
      end
      if (NITEM % 2 == 1) begin
         assign t[WIDTH*(NITEM)-1:WIDTH*(NITEM-1)]
           = y[WIDTH*(NITEM)-1:WIDTH*(NITEM-1)];
      end
      for (i=1;i+1<NITEM;i=i+2) begin : odd_stage
         wire [WIDTH-1:0] v1 = t[WIDTH*(i+1)-1:WIDTH*i];
         wire [WIDTH-1:0] v2 = t[WIDTH*(i+2)-1:WIDTH*(i+1)];
         wire [WIDTH-1:0] w1;
         wire [WIDTH-1:0] w2;

         cmpswp #(WIDTH) u2(v1,v2,w1,w2,flip_n[i]);
         assign y_n[WIDTH*(i+1)-1:WIDTH*i] = w1;
         assign y_n[WIDTH*(i+2)-1:WIDTH*(i+1)] = w2;
      end
      assign y_n[WIDTH-1:0] = t[WIDTH-1:0];
      if (NITEM % 2 == 0) begin
         assign y_n[WIDTH*(NITEM)-1:WIDTH*(NITEM-1)]
           = t[WIDTH*(NITEM)-1:WIDTH*(NITEM-1)];
      end
   endgenerate

endmodule
`default_nettype wire
