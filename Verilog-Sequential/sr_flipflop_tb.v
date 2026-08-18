module sr_flipflop_tb;
    reg s,r,clk;
    wire q,qn;
sr_flipflop uut(.s(s),.r(r),.clk(clk),.q(q),.qn(qn));
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end
initial begin
        $dumpfile("sr_flipflop.vcd");
        $dumpvars(0,sr_flipflop_tb);
        $monitor("Time=%0t|s=%b|r=%b|q=%b|qn=%b",$time,s,r,q,qn);

        s=0;r=0;#10;
        s=0;r=1;#10;
        s=1;r=0;#10;
        s=1;r=1;#10;
        $finish;
end
endmodule