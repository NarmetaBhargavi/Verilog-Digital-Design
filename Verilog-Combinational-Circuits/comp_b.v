module comp_b(y0,y1,y2,a,b);
    input a,b;
    output reg y0,y1,y2;
always @(*) 
    begin
        if(a>b) begin
            y0=1;
            y1=0;
            y2=0;
        end
        else if(a==b) begin
            y0=0;
            y1=1;
            y2=0;
        end
        else begin
            y0=0;
            y1=0;
            y2=1;
        end

    
end
endmodule