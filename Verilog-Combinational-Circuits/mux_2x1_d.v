module mux_2x1_d(y,s0,i0,i1);
    input  i0,i1,s0;
    output  y;
assign y = s0 ? i1 : i0;
endmodule