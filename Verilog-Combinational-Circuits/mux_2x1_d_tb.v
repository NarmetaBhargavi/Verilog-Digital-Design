module mux_2x1_d_tb;
    reg s0,i0,i1;
    wire y;
mux_2x1_d uut(.s0(s0),.i0(i0),.i1(i1),.y(y));
initial 
    begin
        $dumpfile("mux_2x1.vcd");
        $dumpvars(0,mux_2x1_d_tb);
         $monitor("Time=%0t i0=%b i1=%b s0=%b y=%b",
              $time, i0, i1, s0, y);
        i0=0; i1=0; s0=0; #10;
        i0=0; i1=0; s0=1; #10;
        i0=0; i1=1; s0=0; #10;
        i0=1; i1=0; s0=0; #10;
        i0=0; i1=0; s0=1; #10;
        i0=0; i1=1; s0=1; #10;
        i0=1; i1=0; s0=1; #10;
        i0=1; i1=1; s0=1; #10;
        $finish;
    
end
endmodule