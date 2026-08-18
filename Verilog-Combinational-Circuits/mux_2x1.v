module mux_2x1(y,i0,i1,s0);
    input s0,i0,i1;
    output y;
    wire s,a1,a2;
    not g1(s,s0);
    and g2(a1,s,i0);
    and g3(a2,s0,i1);
    or  g4(y,a1,a2);
endmodule