module d_latch_tb;
    reg e,d;
    wire q,qn;
d_latch uut(.e(e),.d(d),.q(q),.qn(qn));
initial begin
        $dumpfile("d_latch.vcd");
        $dumpvars(0,d_latch_tb);
        $monitor("Time=%0t|e=%b|d=%b|q=%b|qn=%b",$time,e,d,q,qn);

        e=0;d=0;#10;
        e=1;d=0;#10;
        e=1;d=1;#10;
        e=0;d=0;#10;
        e=0;d=1;#10;
        e=1;d=1;#10;
        e=1;d=0;#10;
        e=0;d=1;#10;
        $finish;
end
endmodule