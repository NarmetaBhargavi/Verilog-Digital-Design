module ripple_adder_b_tb;
    reg [3:0] a,b;
    reg cin;
    wire [3:0] sum;
    wire cout;
ripple_adder_b uut(
    .sum(sum),
    .cout(cout),
    .a(a),
    .b(b),
    .cin(cin)
);
initial 
    begin
        $dumpfile("ripple_carry_adder.vcd");
        $dumpvars(0,ripple_adder_b_tb);
        $monitor("Time=%0t|a=%b|b=%b|c=%b|sum=%b|cout=%b",$time,a,b,cin,sum,cout);
        a=4'b0000; b=4'b0000; cin=0; #10;
        a=4'b0011; b=4'b0101; cin=0; #10;
        a=4'b1011; b=4'b0001; cin=0; #10;
        a=4'b0010; b=4'b0010; cin=1; #10;
        $finish;
    
end
endmodule