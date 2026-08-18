module sr_latch(q,qn,s,r);
    input s,r;
    output reg q;
    output qn;
always @(*) 
begin
    case({s,r}) 
        2'b00:q=q;
        2'b01:q=1'b0;
        2'b10:q=1'b1;
        2'b11:q=1'bx;
    endcase


end
assign qn = ~q;
endmodule

