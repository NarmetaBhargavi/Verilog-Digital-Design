module dec_2x4_d(i0,i1,i2,i3,a,b);
    input a,b;
    output i0,i1,i2,i3;
    assign i0=(~a&&~b);
    assign i1=(~a&&b);
    assign i2=(a&&~b);
    assign i3=(a&&b);
endmodule