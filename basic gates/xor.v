//Dataflow modelling
module xor_gate(output y, input a,b);
    assign y=a^b;
endmodule

//Behavioral modelling
module xor_gate(output reg y, input a,b);
    always @ (a,b)
       begin
    y=a^b;
       end
endmodule

//Structural modelling
module xor_gate(output y, input a,b);
   xor x1(y,a,b);
endmodule

//Testbench
module xor_tb;
reg a,b;
wire y;
   xor_gate dut(.a(a),.b(b),.y(y));
initial begin
    $display("XOR GATE TRUTH TABLE");
   $monitor("a : %b b : %b     y : %b ",a,b,y);
a = 0 ; b = 0 ; #10 ;
a = 0 ; b = 1 ; #10 ;
a = 1 ; b = 0 ; #10 ;
a = 1 ; b = 1 ; #10 ;
$finish;
end
//TO VIEW WAVEFORMS
initial begin
    $dumpfile("xor_gate.vcd");
    $dumpvars(0,xor_tb);
end
endmodule
