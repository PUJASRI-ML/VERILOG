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
