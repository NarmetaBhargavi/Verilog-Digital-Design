module demux_1x4(d,s0,s1,y0,y1,y2,y3);
    input d,s0,s1;
    output y0,y1,y2,y3;
    wire w0,w1;
    not g1(w0,s0);
    not g2(w1,s1);
    and g3(y0,d,w0,w1);
    and g4(y1,d,w0,s1);
    and g5(y2,d,s0,w1);
    and g6(y3,d,s0,s1);
endmodule


