module and_nand_gate(y,a,b);
    input a,b;
    wire x;
    output y;
    nand g1(x,a,b);
    nand g2(y,x,x);
endmodule