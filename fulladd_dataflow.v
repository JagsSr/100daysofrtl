`timescale 1ns / 1ps

module fulladd_dataflow(
    input inputA,
    input inputB,
    input carryin,
    output sum,
    output carryout,
    wire temp1,temp2,temp3
    );
    
    assign temp1 = inputA ^ inputB;
    assign temp3 = inputA & inputB;
    assign sum = temp1 ^ carryin;
    assign temp2 = temp2 & carryin;
    assign carryout = temp2 | temp3;
endmodule
