/*
testbench激励文件

时钟信号：
always #5 clk = ~clk;

*/
`timmescale 1ns/1ps
module timer_tb;
        reg clk;
        wire [7:0] timer;
        timer uut (
            .clk(clk),
            .timer(timer)
        );
        always #5 clk =~clk;
    initial begin
        clk =0;
    end
endmodule           