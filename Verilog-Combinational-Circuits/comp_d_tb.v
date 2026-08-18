module comp_d_tb;
    reg a,b;
    wire y0,y1,y2;
comp_d uut(.a(a),.b(b),.y0(y0),.y1(y1),.y2(y2));
    initial 
        begin
            $dumpfile("comp_d.vcd");
            $dumpvars(0,comp_d_tb);
            $monitor("Time=%0t|a=%b|b=%b|y0=%b|y1=%b|y2=%b",$time,a,b,y0,y1,y2);
            a=0;b=0;#10;
            a=1;b=0;#10;
            a=0;b=1;#10;
            a=1;b=1;#10;
        
    end
endmodule