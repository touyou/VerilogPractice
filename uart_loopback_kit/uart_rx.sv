`default_nettype none

module uart_rx #(CLK_PER_HALF_BIT = 5208) (
               output logic [7:0] rdata,
               output logic       rdata_ready,
               output logic       ferr,
               input wire         rxd,
               input wire         clk,
               input wire         rstn);

    // dt
    localparam e_clk_bit = CLK_PER_HALF_BIT * 2 - 1;
    // dt/16
    localparam e_watch_clk_bit =- CLK_PER_HALF_BIT / 8 - 1;
    // dt/2
    localparam e_half_clk_bit = CLK_PER_HALF_BIT - 1;

    logic [7:0]                   rxbuf;
    logic [3:0]                   status;
    logic [31:0]                  counter;
    logic                         watch;
    logic                         next;
    logic                         fin_start_bit;
    logic                         rst_ctr;

    localparam r_idle = 0;
    localparam r_start_bit = 1;
    localparam r_bit_0 = 2;
    localparam r_bit_1 = 3;
    localparam r_bit_2 = 4;
    localparam r_bit_3 = 5;
    localparam r_bit_4 = 6;
    localparam r_bit_5 = 7;
    localparam r_bit_6 = 8;
    localparam r_bit_7 = 9;
    localparam r_stop_bit = 10;

    wire xd;
    synchronizer sy(.clk(clk), .rstn(rstn), .in_val(rxd), .out_val(xd));

    // generate event signal
    always @(posedge clk) begin
        if (~rstn) begin
            counter <= 0;
            watch <= 0;
            next <= 0;
            fin_start_bit <= 0;
        end else begin
            if (counter == e_clk_bit || rst_ctr) begin
                counter <= 0;
            end else begin
                counter <= counter + 1;
            end
            if (~rst_ctr && counter % e_watch_clk_bit == 0) begin
                watch <= 1;
            end else begin
                watch <= 0;
            end
            if (~rst_ctr && counter == e_clk_bit) begin
                next <= 1;
            end else begin
                next <= 0;
            end
            if (~rst_ctr && counter == e_half_clk_bit) begin
                fin_start_bit <= 1;
            end else begin
                fin_start_bit <= 0;
            end
        end
    end

   always @(posedge clk) begin
        if (~rstn) begin
            rdata <= 8'b0;
            rdata_ready <= 1'b0;
            rxbuf <= 8'b0;
            rst_ctr <= 0;
            ferr <= 1'b0;
        end else begin
            rst_ctr <= 0;
            rdata_ready <= 0;

            if (status == r_idle) begin
                if (~xd && watch) begin
                    // まずdt/2待つ
                    status <= r_start_bit;
                    rst_ctr <= 1;
                end
            end else if (status == r_start_bit) begin
                if (fin_start_bit) begin
                    // dt/2待ったので次はdt待って観測
                    status <= r_bit_0;
                    rst_ctr <= 1;
                end
            end else if (next) begin
                if (status == r_stop_bit) begin
                    if (xd) begin
                        // errorなし
                        rdata <= rxbuf;
                        rdata_ready <= 1'b1;
                        status <= r_idle;
                    end else begin
                        rdata_ready <= 1'b0;
                        ferr <= 1'b1;
                        status <= r_idle;
                    end
                end else begin
                    // 受信
                    rxbuf <= {xd, rxbuf[7:1]};
                    status <= status + 1;
                end
            end
        end
   end

endmodule

module synchronizer (
    input wire clk,
    input wire rstn,
    input wire in_val,
    output wire out_val
    );

    reg r1;
    reg r2;

    always @(posedge clk) begin
        if (~rstn) begin
            r1 <= 0;
            r2 <= 0;
        end else begin
            r1 <= in_val;
            r2 <= r1;
        end
    end

    assign out_val = r2;

endmodule


`default_nettype wire
