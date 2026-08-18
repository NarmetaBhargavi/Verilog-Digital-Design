module or_nand_gate_tb;
    reg a,b;
    wire x1,x2,y;
or_nand_gate uut(y,a,b);
initial begin
    

    $dumpfile("or_nand_gate.vcd");
    $dumpvars(0,or_nand_gate_tb);
    $monitor("Time=%0t|a=%b|b=%b|y=%b",$time,a,b,y);

    a=0;b=0;
    #10;
    a=0;b=1;
    #10;
    a=1;b=0;
    #10;
    a=1;b=1;
    #10;
    $finish;
end
endmodule
