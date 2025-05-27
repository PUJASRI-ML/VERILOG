//Dataflow modelling
module nor_gate(output y, input a,b);
  assign y=~(a|b);
endmodule

//Behavioral modelling
module nor_gate(output reg y, input a,b);
   always @ (a,b)
      begin
   y=~(a|b);
      end
endmodule

//Structural modelling
module nor_gate(output y, input a,b);
   nor n1(y,a,b);
endmodule

//Testbench
module nor_tb;
reg A,B;
wire out_nor;
  nor_gate dut(.A(A),.B(B),.out_nor(out_nor));
initial begin
  $display("NOR GATE TRUTH TABLE");
  $monitor("A : %b B : %b     OUT : %b ",A,B,out_nor);
A = 0 ; B = 0 ; #10 ;
A = 0 ; B = 1 ; #10 ;
A = 1 ; B = 0 ; #10 ;
A = 1 ; B = 1 ; #10 ;
$finish;
end
//TO VIEW WAVEFORMS
initial begin
  $dumpfile("nor_gate.vcd");
  $dumpvars(0,nor_tb);
end
endmodule
