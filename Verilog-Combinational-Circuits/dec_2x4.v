module dec_2x4(i0,i1,i2,i3,a,b);
    input a,b;
    output i0,i1,i2,i3;
    wire a0,b0;
    not g0(a0,a);
    not g1(b0,b);
    and g2(i0,a0,b0);
    and g3(i1,a0,b);
    and g4(i2,a,b0);
    and g5(i3,a,b);
endmodule
