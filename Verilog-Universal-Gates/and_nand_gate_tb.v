module and_nand_gate_tb;
    reg a,b;
    wire x,y;
and_nand_gate uut(.a(a),.b(b),.y(y));
initial 
    begin
        $dumpfile("and_nand_gate.vcd");
        $dumpvars(0,and_nand_gate_tb);
        $monitor("Time=%t|a=%b|b=%b|y=%b",$time,a,b,y);

        a=0;b=0;
        #10;
         a=1;b=0;
        #10;
         a=0;b=1;
        #10;
         a=1;b=1;
        #10;
        $finish;
    
end
endmodule