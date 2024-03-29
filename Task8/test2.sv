`timescale 1ns / 100ps
`default_nettype none
module test_faddone();
wire [31:0] x1,x2,y;
wire        ovf;
logic [31:0] x1i,x2i;
shortreal    fx1,fx2,fy;
int          i,j,k,it,jt;
bit [22:0]   m1,m2;
bit [9:0]    dum1,dum2;
logic [31:0] fybit;
int          s1,s2;
logic [23:0] dy;
bit [22:0] tm;
assign x1 = x1i;
assign x2 = x2i;
fadd u1(x1,x2,y,ovf);
initial begin
    // $dumpfile("test_fadd.vcd");
    // $dumpvars(0);
    // 1 11111110 01011011001010011101011 1 11111110 01110110000011100100011
    s1[0] = 1'b1;
    s2[0] = 1'b1;
    i     = 8'b11111110;
    j     = 8'b11111110;
    m1    = 23'b01011011001010011101011;
    m2    = 23'b01110110000011100100011;
    x1i = {s1[0],i[7:0],m1};
    x2i = {s2[0],j[7:0],m2};
    fx1 = $bitstoshortreal(x1i);
    fx2 = $bitstoshortreal(x2i);
    fy = fx1 + fx2;
    fybit = $shortrealtobits(fy);
    #1;
    if (y !== fybit) begin
        $display("x1, x2 = %b %b\n", x1, x2);
        $display("%e %b\n", fy, $shortrealtobits(fy));
        $display("%e %b\n", $bitstoshortreal(y), y);
    end
    $finish;
end
endmodule
`default_nettype wire
