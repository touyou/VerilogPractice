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

    if (x1[30:23] > x2[30:23]) begin
        assign s1 = x1[31:31];
        assign e1 = x1[30:23];
        assign m1 = x1[22:0];
        assign s2 = x2[31:31];
        assign e2 = x2[30:23];
        assign m2 = x2[22:0];
    end else begin
        assign s1 = x2[31:31];
        assign e1 = x2[30:23];
        assign m1 = x2[22:0];
        assign s2 = x1[31:31];
        assign e2 = x1[30:23];
        assign m2 = x1[22:0];
    end

    // 例外処理
    // NaNがある場合はNaN
    if (e2 == 255 && m2 != 0) begin
        assign y = {s2 & s1, e2, 1, m2[21:0]};
    end else if (e1 == 255 && m1 != 0) begin
        assign y = {s1, e1, 1, m1[21:0]};
    // 無限大の時は符号が違う場合だけNaN
    end else if ((e1 == 255 && m1 == 0) && (e2 == 255 && m2 == 0) begin
        if (s1 != s2) begin
            assign y = {0, e1, 1, 22'b0};
        end else begin
            assign y = {s1, e1, m1};
        end
    // ゼロ同士の計算
    end else if ((e1 == 0 && m1 == 0) && (e2 == 0 && m2 == 0)) begin
        assign y = {s1 & s2, e1, m1};
    // その他は普通の計算
    end else begin

    end

endmodule



`default_nettype wire
