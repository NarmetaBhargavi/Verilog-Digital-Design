module half_adder_b(sum,carry,a,b);
    input a,b;
    output reg sum,carry;
always @(*)
    begin
        sum = a ^ b;
        carry = a & b;
    end
endmodule