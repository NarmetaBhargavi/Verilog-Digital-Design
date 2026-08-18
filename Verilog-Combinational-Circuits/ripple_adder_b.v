module ripple_adder_b(sum,cout,a,b,cin);
    input [3:0] a , b;
    input cin;
    output reg [3:0] sum;
    output reg cout;
    reg [4:0] r;
always @(*)
    begin
        r = a + b + cin;
        sum = r[3:0];
        cout = r[4];
        
    end
endmodule