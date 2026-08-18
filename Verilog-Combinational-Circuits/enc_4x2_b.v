module enc_4x2_b(d0,d1,d2,d3,e,y0,y1);
    input d0,d1,d2,d3,e;
    output reg y0,y1;
    
always @(*) 
    begin
    
        if(e)
        begin
            y0=(d2|d3);
            y1=(d3|d1);
        end
        else  
            begin
                y0=0;
                y1=0;
            end
    end
endmodule