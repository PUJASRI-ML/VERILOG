//Dataflow modelling
module and_gate(output y, input a,b);
   assign y=a&b;
endmodule

//Behavioral modelling
module and_gate(output reg y, input a,b);
   always @(a,b)
     begin
   y=a&b;
     end
endmodule

//Structural modelling
module and_gate(output y, input a,b);
    and a1(y,a,b);
endmodule
