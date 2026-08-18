module enc_4x2_d(d0,d1,d2,d3,y0,y1);
    input d0,d1,d2,d3,e;
    output y0,y1;
    assign y0 = d2 | d3;
    assign y1 = d3 | d1;
endmodule