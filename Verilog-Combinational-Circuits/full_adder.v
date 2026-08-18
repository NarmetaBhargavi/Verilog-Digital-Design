module full_adder(sum,carry,a,b,c);
    input a,b,c;
    output sum,carry;
    wire x1,x2,x3;
    xor g1(sum,a,b,c);
    and g2(x1,a,b);
    and g3(x2,b,c);
    and g4(x3,c,a);
    or g5(carry,x1,x2,x3);
endmodule

