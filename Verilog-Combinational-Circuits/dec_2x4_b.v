module dec_2x4_b(i0,i1,i2,i3,a,b);
    input a,b;
    output reg i0,i1,i2,i3;
always @(*) 
    begin
        i0 = 0;
        i1 = 0;
        i2 = 0;
        i3 = 0;
        if(~a&&~b)
            i0=1;
        else if(~a&&b)
            i1=1;
        else if(a&&~b)
            i2=1;
        else 
            i3=1;


    
end
endmodule