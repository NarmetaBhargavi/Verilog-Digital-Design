module xnor_nand_gate(y,a,b);
    input a,b;
    output y;
    wire x1,x2,x3,x4;
nand g1(x1,a,b);
nand g2(x2,a,x1);
nand g3(x3,b,x1);
nand g4(x4,x2,x3);
nand g5(y,x4,x4);
endmodule