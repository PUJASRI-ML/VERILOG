//Dataflow modelling
module xnor_gate(output y, input a,b);
    assign y=~(a^b);
endmodule

//Behavioral modelling
module xnor_gate(output reg y, input a,b);
    always @ (a,b)
       begin
    y=~(a^b);
       end
endmodule

//Structural modelling
module xnor_gate(output y, input a,b);
   xnor x1(y,a,b);
endmodule

//Testbench
module xnor_tb;
reg a,b;
wire y;
   xnor_gate dut(.a(a),.b(b),.y(y));
initial begin
    $display("XNOR GATE TRUTH TABLE");
   $monitor("a : %b b : %b     y : %b ",a,b,y);
a = 0 ; b = 0 ; #10 ;
a = 0 ; b = 1 ; #10 ;
a = 1 ; b = 0 ; #10 ;
a = 1 ; b = 1 ; #10 ;
$finish;
end
//TO VIEW WAVEFORMS
initial begin
    $dumpfile("xnor_gate.vcd");
    $dumpvars(0,xnor_tb);
end
endmodule
