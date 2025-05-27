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
reg a,b;
wire y;
   nor_gate dut(.a(a),.b(b),.y(y));
initial begin
  $display("NOR GATE TRUTH TABLE");
   $monitor("a : %b b : %b     y : %b ",a,b,y);
a = 0 ; b = 0 ; #10 ;
a = 0 ; b = 1 ; #10 ;
a = 1 ; b = 0 ; #10 ;
a = 1 ; b = 1 ; #10 ;
$finish;
end
//TO VIEW WAVEFORMS
initial begin
  $dumpfile("nor_gate.vcd");
  $dumpvars(0,nor_tb);
end
endmodule
