module mux_2x1_b(y,i0,i1,s0);
    input i0,i1,s0;
    output reg y;
always @(*) 
    begin
        if(s0==0)
            y = i0;
        else
            y = i1;

end
endmodule