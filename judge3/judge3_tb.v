/*
testbench激励文件

测试点应至少包括：
...
{a,b,c} = {0,0,0};
#10
{a,b,c} = {0,0,1};
#10
{a,b,c} = {0,1,1};
#10
{a,b,c} = {1,1,1};
#10
$finish;

*/
`timmescale 1ns/1ps
module judge3_tb;
    reg a, b, c;
    wire out;
        judge UUT (
            .a(a),
            .b(b),
            .c(c),
            .out(out)
            );
    initial begin
        a=0;b=0;c=0;
        #10;
        a=1;b=1;c=1;
        #10 ;
        a=0;b=1;c=0;
        #10;
        a=0;b=0;c=1;
        #10;
        a=0;b=1;c=1;
        #10;
        a=1;b=0;c=1;
        #10;
        a=1;b=1;c=0;
        #10;
        a=1;b=1;c=1;
        #a0;
    end        
endmodule    