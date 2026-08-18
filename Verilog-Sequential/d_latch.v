module d_latch(d,e,q,qn);
    input  d,e;
    output reg q;
    output qn;
always @(*) 
begin
        if(e)
            q=d;
        else
            q=q;
    
end
assign qn=~q;
endmodule