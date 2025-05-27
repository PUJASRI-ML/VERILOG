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
