module or_nand_gate(y,a,b);
    input a,b;
    output y;
    wire x1,x2;
nand g3(x1,a,a);
nand g4(x2,b,b);
nand g5(y,x1,x2);
endmodule