module xnor_nand_gate_tb;
    reg a,b;
    wire y,x1,x2,x3,x4;
xnor_nand_gate uut(.a(a),.b(b),.y(y));
initial 
    begin
        $dumpfile("xnor_nand_gate.vcd");
        $dumpvars(0,xnor_nand_gate_tb);
        $monitor("Time=%0t|a=%b|b=%b|y=%b",$time,a,b,y);

        a=0;b=0;
        #10;
        a=0;b=1;
        #10;
        a=1;b=0;
        #10;
        a=1;b=1;
        #10;

    
end
endmodule