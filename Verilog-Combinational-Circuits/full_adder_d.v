module full_adder_d(sum,carry,a,b,c);
    input a,b,c;
    output sum ,carry;
assign sum = a ^ b ^ c;
assign carry = (a&b)| (b&c) | (c&b);
endmodule

    