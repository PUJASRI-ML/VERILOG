//Dataflow modelling
module xnor_gate(output y, input a,b);
    assign y=~(a^b);
endmodule

//Behavioral modelling
module xnor_gate(output reg y, input a,b);
    always @ (a,b)
       begin
    y=~(a^b);
       end
endmodule

//Structural modelling
module xnor_gate(output y, input a,b);
   xnor x1(y,a,b);
endmodule
