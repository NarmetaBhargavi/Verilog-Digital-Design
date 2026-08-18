module d_flipflop_tb;
    reg e,d,clk;
    wire q,qn;
d_flipflop uut(.e(e),.d(d),.clk(clk),.q(q),.qn(qn));
initial begin
    clk=0;
    forever #5 clk = ~clk;
end
initial begin
        $dumpfile("d_flipflop.vcd");
        $dumpvars(0,d_flipflop_tb);
        $monitor("Time=%0t|clk=%b|e=%b|d=%b|q=%b|qn=%b",$time, clk, e, d, q, qn);
        e=1;d=0;#12;
        e=1;d=1;#10;
        e=0;d=0;#10;
        e=1;d=0;#10;
        $finish;
end
endmodule