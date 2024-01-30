`timescale 1ns / 1ps

module fulladd_dataflow_tb( );
    reg inputA,inputB, carryin;
    wire sum , carryout;
    
    fulladd_dataflow dut( inputA , inputB,carryin,sum,carryout);
    initial 
        begin 
            inputA =0 ; inputB=0 ; carryin=0;
            #100;
            #100; inputA=0; inputB=0; carryin=1;
            
            #100; inputA=0; inputB=1;carryin=0;
            
            #100; inputA=0; inputB=1 ; carryin=1;
            
            #100; inputA=1; inputB=0; carryin=0;
           
            #100; inputA=1; inputB =0; carryin=1;
            
            #100; inputA = 1; inputB=1; carryin=0;
            
            #100; inputA=1; inputB=1; carryin=1;
            
            #100; inputA=0; inputB=0 ; carryin=0;
            
          end
   
    
endmodule
