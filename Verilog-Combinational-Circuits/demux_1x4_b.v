module demux_1x4_b(d,s0,s1,y0,y1,y2,y3);
    input d,s0,s1;
    output reg y0,y1,y2,y3;
always @(*) 
    begin
        y0=0;y1=0;y2=0;y3=0;
        if(s0==0&&s1==0)
            y0=d;
        else if(s0==0&&s1==1)
            y1=d;
        else if(s0==1&&s1==0)
            y2=d;
        else 
            y3=d;

end
endmodule