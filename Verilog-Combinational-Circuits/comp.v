module comp(y0,y1,y2,a,b);
    input a,b;
    output y0,y1,y2;
    wire a0,b0;
    not g1(a0,a);
    not g2(b0,b);
    and g3(y0,a,b0);
    xnor g4(y1,a,b);
    and g5(y2,a0,b);
endmodule