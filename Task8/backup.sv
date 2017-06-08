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
    assign nm2 = ((mm2 >> (me1-me2)) << (me1-me2)) == mm2 ? (mm2 >> (me1-me2)) | 1 : mm2 >> (me1-me2);

    // 足し算する
    wire zs;
    wire [26:0] ztemp1, ztemp2, ztemp3;
    wire [9:0] zte, ze;
    wire [27:0] sum;
    assign zs = s1 == s2 ? s1 :
                mm1 >= nm2 ? s1 : s2;
    assign sum = s1 == s2 ? mm1 + nm2 :
                mm1 >= nm2 ? mm1 - nm2 : nm2 - mm1;
    assign zte = sum[27] ? me1 + 1 : me1;
    assign ztemp1 = sum[27] ? {sum[27:2], sum[1] | sum[0]} : sum[26:0];

    // 正規化
    // zmの最上位が1になるようにする
    assign ztemp2 = ztemp1[26] ? ztemp1 :
                    ztemp1[25] ? {ztemp1[25:0], 1'b0} :
                    ztemp1[24] ? {ztemp1[24:0], 2'b0} :
                    ztemp1[23] ? {ztemp1[23:0], 3'b0} :
                    ztemp1[22] ? {ztemp1[22:0], 4'b0} :
                    ztemp1[21] ? {ztemp1[21:0], 5'b0} :
                    ztemp1[20] ? {ztemp1[20:0], 6'b0} :
                    ztemp1[19] ? {ztemp1[19:0], 7'b0} :
                    ztemp1[18] ? {ztemp1[18:0], 8'b0} :
                    ztemp1[17] ? {ztemp1[17:0], 9'b0} :
                    ztemp1[16] ? {ztemp1[16:0], 10'b0} :
                    ztemp1[15] ? {ztemp1[15:0], 11'b0} :
                    ztemp1[14] ? {ztemp1[14:0], 12'b0} :
                    ztemp1[13] ? {ztemp1[13:0], 13'b0} :
                    ztemp1[12] ? {ztemp1[12:0], 14'b0} :
                    ztemp1[11] ? {ztemp1[11:0], 15'b0} :
                    ztemp1[10] ? {ztemp1[10:0], 16'b0} :
                    ztemp1[9] ? {ztemp1[9:0], 17'b0} :
                    ztemp1[8] ? {ztemp1[8:0], 18'b0} :
                    ztemp1[7] ? {ztemp1[7:0], 19'b0} :
                    ztemp1[6] ? {ztemp1[6:0], 20'b0} :
                    ztemp1[5] ? {ztemp1[5:0], 21'b0} :
                    ztemp1[4] ? {ztemp1[4:0], 22'b0} :
                    ztemp1[3] ? {ztemp1[3:0], 23'b0} :
                    ztemp1[2] ? {ztemp1[2:0], 24'b0} :
                    ztemp1[1] ? {ztemp1[1:0], 25'b0} :
                    ztemp1[0] ? {ztemp1[0], 26'b0} : 27'b0;
    assign ze = ztemp1[26] ? zte :
                ztemp1[25] ? zte-1 :
                ztemp1[24] ? zte-2 :
                ztemp1[23] ? zte-3 :
                ztemp1[22] ? zte-4 :
                ztemp1[21] ? zte-5 :
                ztemp1[20] ? zte-6 :
                ztemp1[19] ? zte-7 :
                ztemp1[18] ? zte-8 :
                ztemp1[17] ? zte-9 :
                ztemp1[16] ? zte-10 :
                ztemp1[15] ? zte-11 :
                ztemp1[14] ? zte-12 :
                ztemp1[13] ? zte-13 :
                ztemp1[12] ? zte-14 :
                ztemp1[11] ? zte-15 :
                ztemp1[10] ? zte-16 :
                ztemp1[9] ? zte-17 :
                ztemp1[8] ? zte-18 :
                ztemp1[7] ? zte-19 :
                ztemp1[6] ? zte-20 :
                ztemp1[5] ? zte-21 :
                ztemp1[4] ? zte-22 :
                ztemp1[3] ? zte-23 :
                ztemp1[2] ? zte-24 :
                ztemp1[1] ? zte-25 :
                ztemp1[0] ? zte-26 : zte-27;
    // assign nm2 = ((mm2 >> (me1-me2)) << (me1-me2)) == mm2 ? (mm2 >> (me1-me2)) | 1 : mm2 >> (me1-me2);
    // assign ztemp3 = $signed(ze) > 0 ? ztemp2 :
    //     ((ztemp2 >> (0-$signed(ze))) << (0-$signed(ze))) == ztemp2 ? (ztemp2 >> (0-$signed(ze))) | 1 :
    //      ztemp2 >> (0-$signed(ze));

    // 丸め！！！
    round r(.zm(ztemp2), .ze(ze), .zs(zs), .ym(y[22:0]), .ye(y[30:23]), .ys(y[31]), .ovf(ovf));
endmodule

module round(
    input wire [26:0] zm,
    input wire [9:0] ze,
    input wire zs,
    output wire [22:0] ym,
    output wire [7:0] ye,
    output wire ys,
    output wire ovf
    );

    assign ovf = $signed(ze) > 255 ? 1 : 0;

    wire [23:0] ztemp;
    assign ztemp = zm[25:3] + 1;

    assign ym = ovf ? 0 :
        zm[2]==1 && (zm[3]|zm[1]|zm[0])==1 ? ztemp[22:0] : zm[25:3];

    assign ye = ovf ? 255 :
        zm[2]==1 && (zm[3]|zm[1]|zm[0])==1 ? (ze==1 && zm[26]==0 ? 0 : (ztemp[23]==1 ? ze[7:0]+1 : ze[7:0])) : (ze==1 && zm[26]==0 ? 0 : ze[7:0]);
    assign ys = zs;
endmodule // round

`default_nettype wire
