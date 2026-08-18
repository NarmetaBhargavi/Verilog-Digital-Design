module comp_d(y0,y1,y2,a,b);
    input a,b;
    output y0,y1,y2;
    assign y0= (a&~b);
    assign y1= ~(a^b);
    assign y2= (~a&b);
endmodule