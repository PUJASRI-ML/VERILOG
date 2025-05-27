//Dataflow modelling
module nand_gate(output y, input a,b);
   assign y=~(a&b);
endmodule

//Behavioral modelling
module nand_gate(output reg y, input a,b);
   always @(a,b)
     begin
   y=~(a&b);
     end
endmodule

//Structural modelling
module nand_gate(output y, input a,b);
    nand n1(y,a,b);
endmodule

//Testbench
module and_tb;
reg A,B;
wire out_and;
and_gate dut(.A(A),.B(B),.out_and(out_and));
initial begin
$display("AND GATE TRUTH TABLE");
$monitor("A : %b B : %b     OUT : %b ",A,B,out_and);
A = 0 ; B = 0 ; #10 ;
A = 0 ; B = 1 ; #10 ;
A = 1 ; B = 0 ; #10 ;
A = 1 ; B = 1 ; #10 ;
$finish;
end
//TO VIEW WAVEFORMS
initial begin
$dumpfile("and_gate.vcd");
$dumpvars(0,and_tb);
end
endmodule
