module d_flipflop(d,e,clk,q,qn);
    input  d,e,clk;
    output reg q;
    output qn;
always @(posedge clk) 
begin
        if(e)
            q<=d;
        else
            q<=q;
    
end
assign qn=~q;
endmodule