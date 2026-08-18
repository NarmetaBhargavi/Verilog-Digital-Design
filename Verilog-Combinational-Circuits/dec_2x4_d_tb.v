module dec_2x4_d_tb;
    reg a,b;
    wire i0,i1,i2,i3;
dec_2x4_d uut(.a(a),.b(b),.i0(i0),.i1(i1),.i2(i2),.i3(i3));
    initial 
        begin
            $dumpfile("dec_2x4_d.vcd");
            $dumpvars(0,dec_2x4_d_tb);
            $monitor("time=%0t|a=%b|b=%b|i0=%b|i1=%b|i2=%b|i3=%b",$time,a,b,i0,i1,i2,i3);
            a=0;b=0;#10;
            a=0;b=1;#10;
            a=1;b=0;#10;
            a=1;b=1;#10;
            $finish;
        
    end
endmodule