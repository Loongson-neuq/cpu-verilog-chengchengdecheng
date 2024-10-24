module judge3(          //当多数人同意时输出1
    input a,b,c,
    output out
);
    
    assign out = (a&b&-c) |  (a&c&-b) | (b&c&-a)  | （a&b&c);// 超过两个输入1
    
endmodule