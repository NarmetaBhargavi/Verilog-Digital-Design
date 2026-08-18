module enc_4x2(d0,d1,d2,d3,y0,y1);
    input d0,d1,d2,d3;
    output y0,y1;
    or g1(y0,d3,d2);
    or g2(y1,d3,d1);
endmodule