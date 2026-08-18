module enc_4x2_b_tb;
    reg d0,d1,d2,d3,e;
    wire y0,y1;
enc_4x2_b uut(.d0(d0),.d1(d1),.d2(d2),.d3(d3),.e(e),.y0(y0),.y1(y1));
initial 
    begin
        $dumpfile("enc_4x2_b.vcd");
        $dumpvars(0,enc_4x2_b_tb);
        $monitor("Time=%0t|d0=%b|d1=%b|d2=%b|d3=%b|y0=%b|y1=%b",$time,d0,d1,d2,d3,y0,y1);
        e=1;
        d0=1;d1=0;d2=0;d3=0;#10;
        d0=0;d1=1;d2=0;d3=0;#10;
        d0=0;d1=0;d2=1;d3=0;#10;
        d0=0;d1=0;d2=0;d3=1;#10;
        $finish;
    
end
endmodule