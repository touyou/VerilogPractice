`default_nettype none

module div32p2
  ( input wire [63:0] x,
    input wire [31:0] d,
    output reg [31:0] q,
    output reg [31:0] r,
    input wire clk,
    input wire rstn);

    reg [63:0] x_reg;
    reg [31:0] d_reg;
    reg [16:0] qhi_reg;
    wire [15:0] qlow, qhi;
    wire [63:0] work, ret;

    always @ (posedge clk) begin
        if (~rstn) begin
            x_reg <= 63'b0;
            d_reg <= 31'b0;
        end else begin
            x_reg <= work;
            d_reg <= d;
            qhi_reg <= qhi;
            q <= {qhi_reg, qlow};
            r <= ret[63:32];
        end
    end

    div16 div16_1(.n16(x), .d16(d), .q16(qhi), .r16(work));
    div16 div16_2(.n16(x_reg), .d16(d_reg), .q16(qlow), .r16(ret));
endmodule

module div16
  ( input wire [63:0] n16,
    input wire [31:0] d16,
    output wire [15:0] q16,
    output wire [63:0] r16);

    wire [63:0] work;
    div8 div8_1(.n8(n16), .d8(d16), .q8(q16[15:8]), .r8(work));
    div8 div8_2(.n8(work), .d8(d16), .q8(q16[7:0]), .r8(r16));
endmodule

module div8
  ( input wire [63:0] n8,
    input wire [31:0] d8,
    output wire [7:0] q8,
    output wire [63:0] r8);

    wire [63:0] work;
    div4 div4_1(.n4(n8), .d4(d8), .q4(q8[7:4]), .r4(work));
    div4 div4_2(.n4(work), .d4(d8), .q4(q8[3:0]), .r4(r8));
endmodule

module div4
  ( input wire [63:0] n4,
    input wire [31:0] d4,
    output wire [3:0] q4,
    output wire [63:0] r4);

    wire [63:0] work;
    div2 div2_1(.n2(n4), .d2(d4), .q2(q4[3:2]), .r2(work));
    div2 div2_2(.n2(work), .d2(d4), .q2(q4[1:0]), .r2(r4));
endmodule

module div2
  ( input wire [63:0] n2,
    input wire [31:0] d2,
    output wire [1:0] q2,
    output wire [63:0] r2);

    wire [63:0] work;
    div1 div1_1(.n1(n2), .d1(d2), .q1(q2[1]), .r1(work));
    div1 div1_2(.n1(work), .d1(d2), .q1(q2[0]), .r1(r2));
endmodule

module div1
  ( input wire [63:0] n1,
    input wire [31:0] d1,
    output wire q1,
    output wire [63:0] r1);

    wire [64:0] work = {n1, 1'b0} - {d1, 32'b0};
    assign r1 = work[64] ? {n1[62:0], 1'b0} : work[63:0];
    assign q1 = ~work[64];
endmodule

`default_nettype wire
