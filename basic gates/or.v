//Dataflow modelling
module or_gate(output y, input a,b);
  assign y=a|b;
endmodule

//Behavioral modelling
module or_gate(output reg y, input a,b);
   always @ (a,b)
      begin
   y=a|b;
      end
endmodule

//Structural modelling
module or_gate(output y, input a,b);
   or o1(y,a,b);
endmodule

//Testbench
module or_tb;
reg a,b;
wire y;
   or_gate dut(.a(a),.b(b),.y(y));
initial begin
  $display("OR GATE TRUTH TABLE");
   $monitor("a : %b b : %b     y : %b ",a,b,y);
a = 0 ; b = 0 ; #10 ;
a = 0 ; b = 1 ; #10 ;
a = 1 ; b = 0 ; #10 ;
a = 1 ; b = 1 ; #10 ;
$finish;
end
//TO VIEW WAVEFORMS
initial begin
  $dumpfile("or_gate.vcd");
  $dumpvars(0,or_tb);
end
endmodule
