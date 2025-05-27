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
