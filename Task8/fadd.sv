`default_nettype none

module fadd
  ( input wire [31:0] x1,
    input wire [31:0] x2,
    output wire [31:0] y,
    output wire ovf
    );

    wire s1, s2;
    wire [7:0] e1, e2;
    wire [22:0] m1, m2;
    assign s1 = x1[30:23] > x2[30:23] ? x1[31:31] : x2[31:31];
    assign e1 = x1[30:23] > x2[30:23] ? x1[30:23] : x2[30:23];
    assign m1 = x1[30:23] > x2[30:23] ? x1[22:0] : x2[22:0];
    assign s2 = x1[30:23] > x2[30:23] ? x2[31:31] : x1[31:31];
    assign e2 = x1[30:23] > x2[30:23] ? x2[30:23] : x1[30:23];
    assign m2 = x1[30:23] > x2[30:23] ? x2[22:0] : x1[22:0];

    wire [31:0] temp;
    subadder sa(.s1(s1), .e1(e1), .m1(m1), .s2(s2), .e2(e2), .m2(m2), .y(temp), .ovf(ovf));
    // 例外処理
    assign y = (e2 == 255 && m2 != 0) ? {s2 & s1, e2, 1'b1, m2[21:0]} :
               (e1 == 255 && m1 != 0) ? {s1, e1, 1'b1, m1[21:0]} :
               ((e1 == 255 && m1 == 0) && (e2 == 255 && m2 == 0) && s1 != s2) ? {1'b0, e1, 1'b1, 22'b0} :
               ((e1 == 255 && m1 == 0) && (e2 == 255 && m2 == 0)) ? {s1, e1, m1} :
               ((e1 == 0 && m1 == 0) && (e2 == 0 && m2 == 0)) ? {s1 & s2, e1, m1} : temp ;

endmodule

module subadder
  ( input wire s1,
    input wire s2,
    input wire [7:0] e1,
    input wire [7:0] e2,
    input wire [22:0] m1,
    input wire [22:0] m2,
    output wire [31:0] y,
    output wire ovf );

    // この時点で絶対に e1 / e2が保証
    
endmodule


`default_nettype wire
