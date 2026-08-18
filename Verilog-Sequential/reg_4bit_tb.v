module reg_4bit_tb;
    reg [3:0]d;
    reg clk;
    wire [3:0]q;
reg_4bit uut(.clk(clk),.d(d),.q(q));
initial begin
    clk = 0;
    forever #5 clk = ~clk;

end
initial begin
        $dumpfile("reg_4bit.vcd");
        $dumpvars(0,reg_4bit_tb);
        $monitor("Time=%0t|clk=%b|d=%b|q=%b",$time,clk,d,q);
        d=4'b1000;#10;
        d=4'b1101;#10;
        d=4'b1001;#10;
        d=4'b1101;#10;
        $finish;
end
endmodule