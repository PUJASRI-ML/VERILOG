//Dataflow modelling
module not_gate(output y, input a);
    assign y=~a;
endmodule

//Behavioral modelling
module not_gate(output reg y, input a);
  always @ (a)  
    begin
  y=~a;
    end
endmodule

//Structural modelling
module not_gate(output y, input a);
   not n1(y,a);
endmodule

//Testbench
module not_tb;
reg a;
wire y;
   not_gate dut(.a(a),.y(y));
initial begin
   $display("NOT GATE TRUTH TABLE");
   $monitor("a : %b     y : %b ",a,y);
a = 0 ;  #10 ;
a = 1 ;  #10 ;
$finish;
end
//TO VIEW WAVEFORMS
initial begin
    $dumpfile("not_gate.vcd");
    $dumpvars(0,not_tb);
end
endmodule
