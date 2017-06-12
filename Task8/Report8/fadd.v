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
    assign s1 = x1[31];
    assign e1 = x1[30:23];
    assign m1 = x1[22:0];
    assign s2 = x2[31];
    assign e2 = x2[30:23];
    assign m2 = x2[22:0];

    wire [31:0] sum;
    // これが加算器
    subadder sa(.s1(s1), .e1(e1), .m1(m1), .s2(s2), .e2(e2), .m2(m2), .y(sum), .ovf(ovf));
    // Special Case
    assign y = e1 == 255 && e2 == 255 && m1 != 0 && m2 != 0 ? {s2, e2, {1'b1, m2[21:0]}} : // both NaN
        e1==255 &&  m1 != 0 ? {s1, e1, {1'b1, m1[21:0]}} : // left x is NaN
        e2 == 255 && m2 != 0 ? {s2, e2, {1'b1, m2[21:0]}} :       // right x is NaN
        // Both inf and different sign
        s1 != s2 && e1 == 255 && m1 == 0 && e2 == 255 && m2 ==-0 ? {1'b1, e1, {1'b1, 22'b0}} :
        e1 == 255 && m1 == 0 ? {s1, e1, m1} :                       // left x is inf
        e2 == 255 && m2 == 0 ? {s2, e2, m2} :                       // right x is inf
        e1 == 0 && m1 == 0 && e2 == 0 && m2 == 0 ? {s1 & s2, e1, m1} : // both zero
        e1 == 0 && m1 == 0 ? {s2, e2, m2} :                         // left x is 0
        e2 == 0 && m2 == 0 ? {s1, e1, m1} :                         // right x is 0
        s1 != s2 && e1 == e2 && m1 == m2 ? 32'b0 : sum;             // different sign and |x1|==|x2|
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

    // 正規化数のほうにはケチ表現をつけてあげる
    // lが大きい方、sが小さい方
    wire ls, ss;
    wire [7:0] le, stempe;
    wire [26:0] lm, stempm;
    assign ls = e1 >= e2 ? s1 : s2;
    assign ss = e1 < e2 ? s1 : s2;
    assign le = e1 >= e2 ? (e1 == 0 ? 1 : e1) : (e2 == 0 ? 1 : e2);
    assign stempe = e1 < e2 ? (e1 == 0 ? 1 : e1) : (e2 == 0 ? 1 : e2);
    assign lm = e1 >= e2 ? {e1==0?1'b0:1'b1, m1, 3'b0} : {e2==0?1'b0:1'b1, m2, 3'b0};
    assign stempm = e1 < e2 ? {e1==0?1'b0:1'b1, m1, 3'b0} : {e2==0?1'b0:1'b1, m2, 3'b0};

    // 小数点をそろえる。le-stempe分だけ小さい方を右シフト
    // この時,sticky bitの扱いに注意する
    // すべて含めてLSBの右からの位置がシフト量よりも多ければ
    wire [8:0] sube;
    wire [4:0] lsbp;
    wire [4:0] en1;
    assign sube = le - stempe;
    prencoder pe(.a({4'b0, stempm[26:0]}), .out(lsbp), .en(en1));
    wire [26:0] sm;
    wire [7:0] se;
    assign se = le;
    assign sm = (stempm >> sube) | (lsbp > sube ? 0 : 1);

    // 足し算
    wire ys;
    // 符号は違ったらmの大きい方に合わせる
    assign ys = ls == ss ? ls :
        lm >= sm ?  ls : ss;
    // 合計は符号によって足し算になったり引き算になったり
    // ここで負にはならないようにするから考えるのは桁上り分だけ
    wire [27:0] sum;
    assign sum = ls == ss ? lm + sm :
        lm >= sm ? lm - sm : sm - lm;
    // sum[27]が1のときはそこがケチ表現、それ以外はsum[26]がケチ表現になるので
    // その状態を保存
    wire [26:0] zm;
    assign zm = sum[27] ? {sum[27:4], sum[3], sum[2], sum[1] | sum[0]} : sum[26:0];
    wire [8:0] tempe;
    assign tempe = sum[27] ? le+1 : le;
    // 正規化
    // zeの最小限は1になるまで
    wire [4:0] en2;
    wire [4:0] msbp;
    pencoder pc(.a({4'b0, zm}), .out(msbp), .en(en2));
    wire [8:0] ze;
    wire [26:0] shiftedm;
    // msbp-5bit分だけシフトすると正規化になる
    // シフトした時はleの値がその分だけ減る
    // ここでleが1になる以上シフトしてしまうとだめ→le-1だけシフトしていいよ的な
    assign ze = msbp-5 < tempe ? tempe - msbp + 5 : 1;
    assign shiftedm = tempe > msbp-5 ? zm << (msbp-5) : zm << (tempe-1);
    // shiftedmは正規化できているはずだから最後に丸める。
    wire [23:0] ym;
    wire [8:0] ye;
    assign ym = shiftedm[2] && (shiftedm[3] | shiftedm[1] | shiftedm[0]) ?
        shiftedm[25:3] + 1 : shiftedm[25:3];
    assign ye = shiftedm[2] && (shiftedm[3] | shiftedm[1] | shiftedm[0]) && {1'b1,shiftedm[25:3]} == 24'hffffff ? ze + 1 : ze;
    assign y = ye >= 255 ? {ys, 8'hff, 23'b0} : {ys, (ye==1&&shiftedm[26]==0 ? 8'b0 : ye[7:0]), ym[22:0]};
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
