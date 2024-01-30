`timescale 1ns / 1ps

module mono_stable_tb();
    reg clk;
reg reset;
reg trigger;
wire pulse;

parameter PULSE_WIDTH = 20;

mono_stable dut(clk , reset , trigger , pulse);

initial begin
    clk=0;
    forever #50 clk=~clk;
end

initial begin
    $monitor("trigger=%b  pulse=%b, count = %0d",trigger,pulse,imonostable.count);
    $dumpfile("monostable_tb.vcd");
    $dumpvars(0,monostable_tb);

    trigger=1'b0;
    reset = 1'b0;    

    @(posedge clk) reset = 1'b1;
    @(posedge clk) reset = 1'b0;  
    @(posedge clk) trigger=1'b1;
    @(posedge clk) trigger=1'b0;

    repeat(25) @(posedge clk);

    $finish;
end  
endmodule
