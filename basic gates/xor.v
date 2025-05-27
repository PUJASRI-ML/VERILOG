//Dataflow modelling
module xor_gate(output y, input a,b);
    assign y=a^b;
endmodule

//Behavioral modelling
module xor_gate(output reg y, input a,b);
    always @ (a,b)
       begin
    y=a^b;
       end
endmodule

//Structural modelling
module xor_gate(output y, input a,b);
   xor x1(y,a,b);
endmodule
