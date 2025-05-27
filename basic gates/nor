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
