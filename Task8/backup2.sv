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
               ((e1 == 0 && m1 == 0) && (e2 == 0 && m2 == 0)) ? {s1 & s2, e1, m1} :
               (e1 == e2 && m1 == m2) ? 0 : temp ;

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

    // e1 > e2
    wire [26:0] mm1, mm2;
    assign mm1 = {e1 == 0 ? 1'b0 : 1'b1, m1, 3'b0};
    assign mm2 = {e2 == 0 ? 1'b0 : 1'b1, m2, 3'b0};
    wire [7:0] me1, me2;
    assign me1 = e1 == 0 ? 1 : e1;
    assign me2 = e2 == 0 ? 1 : e2;

    // shiftする。ただし切り捨て部分に0以外があれば最後を1にする
    wire [26:0] nm2;
    wire [4:0] sm2, en2;
    prencoder pre(.a({4'b0, mm2}), .out(sm2), .en(en2));
    assign nm2 = sm2 > me1-me2 || en2 == 0 ? mm2 >> (me1-me2) : mm2 >> (me1-me2) | 1;

    // 足し算する
    wire zs;
    wire [26:0] ztemp1, ztemp2, ztemp4;
    wire [23:0] ztemp3;
    wire [9:0] zte, zse, zue, ze;
    wire [27:0] sum;
    assign zs = s1 == s2 ? s1 :
                mm1 >= nm2 ? s1 : s2;
    assign sum = s1 == s2 ? mm1 + nm2 :
                mm1 >= nm2 ? mm1 - nm2 : nm2 - mm1;
    assign zte = sum[27] ? me1 + 1 : me1;
    assign ztemp1 = sum[27] ? {sum[27:2], sum[1] | sum[0]} : sum[26:0];

    // normalise_1
    wire [4:0] sm, en;
    pencoder pe(.a({4'b0, ztemp1}), .out(sm), .en(en));
    // sm == 5 最上位が１、sm > 5
    assign ztemp2 = sm-5 > zte-1 ? ztemp1 << (zte-5) : ztemp1 << (sm-5);
    assign zse = sm-5 > zte-1 ? 1 : (sm<=5 ? zte : zte-(sm-5));

    // normalise_2
    wire [4:0] sm3, en3;
    prencoder pre2(.a({4'b0, ztemp2}), .out(sm3), .en(en3));
    assign ztemp4 = zse==0 || zse[9] == 1 ? ( sm3 > 0-zse+1 || en3 == 0 ? ztemp2 >> (0-zse+1) : ztemp2 >> (0-zse+1)) : ztemp2;
    assign zue = zse==0 || zse[9] == 1 ? 1 : zse;

    // round
    assign ztemp3 = ztemp4[2] && (ztemp4[3]|ztemp4[1]|ztemp4[0]) ? ztemp4[26:3]+1 : ztemp4[26:3];
    assign ze = ztemp4[2] && (ztemp4[3]|ztemp4[1]|ztemp4[0]) && ztemp3==24'hffffff ? zse+1 : zse;

    // pack
    assign y = ze==1&&ztemp3[23]==0 ? {zs,8'b0,ztemp3[22:0]} :
        ze==255 ? {zs,8'b11111111,23'b0} : {zs, ze, ztemp3[22:0]};
endmodule

module pencoder
    ( input wire [30:0] a,
      output wire [4:0] out, en );

    assign out = a[30] ? 5'b00001 :
            a[29] ? 5'b00010 :
            a[28] ? 5'b00011 :
            a[27] ? 5'b00100 :
            a[26] ? 5'b00101 :
            a[25] ? 5'b00110 :
            a[24] ? 5'b00111 :
            a[23] ? 5'b01000 :
            a[22] ? 5'b01001 :
            a[21] ? 5'b01010 :
            a[20] ? 5'b01011 :
            a[19] ? 5'b01100 :
            a[18] ? 5'b01101 :
            a[17] ? 5'b01110 :
            a[16] ? 5'b01111 :
            a[15] ? 5'b10000 :
            a[14] ? 5'b10001 :
            a[13] ? 5'b10010 :
            a[12] ? 5'b10011 :
            a[11] ? 5'b10100 :
            a[10] ? 5'b10101 :
            a[9] ? 5'b10110 :
            a[8] ? 5'b10111 :
            a[7] ? 5'b11000 :
            a[6] ? 5'b11001 :
            a[5] ? 5'b11010 :
            a[4] ? 5'b11011 :
            a[3] ? 5'b11100 :
            a[2] ? 5'b11101 :
            a[1] ? 5'b11110 : 5'b11111;
    assign en = |a;
endmodule

module prencoder
    ( input wire [30:0] a,
      output wire [4:0] out, en );

    assign out = a[0] ? 5'b00001 :
            a[1] ? 5'b00010 :
            a[2] ? 5'b00011 :
            a[3] ? 5'b00100 :
            a[4] ? 5'b00101 :
            a[5] ? 5'b00110 :
            a[6] ? 5'b00111 :
            a[7] ? 5'b01000 :
            a[8] ? 5'b01001 :
            a[9] ? 5'b01010 :
            a[10] ? 5'b01011 :
            a[11] ? 5'b01100 :
            a[12] ? 5'b01101 :
            a[13] ? 5'b01110 :
            a[14] ? 5'b01111 :
            a[15] ? 5'b10000 :
            a[16] ? 5'b10001 :
            a[17] ? 5'b10010 :
            a[18] ? 5'b10011 :
            a[19] ? 5'b10100 :
            a[20] ? 5'b10101 :
            a[21] ? 5'b10110 :
            a[22] ? 5'b10111 :
            a[23] ? 5'b11000 :
            a[24] ? 5'b11001 :
            a[25] ? 5'b11010 :
            a[26] ? 5'b11011 :
            a[27] ? 5'b11100 :
            a[28] ? 5'b11101 :
            a[29] ? 5'b11110 : 5'b11111;
    assign en = |a;
endmodule

`default_nettype wire
