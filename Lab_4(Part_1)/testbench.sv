// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps
module lab4_pt1_schematic_lab4_pt1_schematic_sch_tb;
  
//inputs
  reg CALL;
  reg CANCEL;
  reg CLK;
  
//outputs
  wire LED;
  
//Bidirs
  
//UUT
  fasystem_bh UUT (
    .call_button(CALL),
    .cancel_button(CANCEL),
    .light_state(LED),
    .clk(CLK)
  );
    
//Initialize Inputs
    //lab4_pt1_schematic_sch_tb UUT (
    //.call_button(CALL),
    //.cancel_button(CANCEL),
    //.clk(CLK),
    //.light_state(LED)
    //);
    
    initial CLK = 0;
    always #5 CLK = ~CLK;
    initial begin
      $dumpfile("dump.vcd"); $dumpvars;
      $monitor("At t = %0d, CLK = %0b", $time, CLK);
      #250 $finish;
    end
    
    initial begin
      //$dumpfile("dump.vcd"); $dumpvars;
      CALL = 0;
      CANCEL = 0;
    end
    
    initial begin 
      //$dumpfile("dump.vcd"); $dumpvars;
      #50
      CALL = 0;
      CANCEL = 0;
      $display("TC1");
      if (LED != 1'b0) $display ("Result is wrong");
    
      //$dumpfile("dump.vcd"); $dumpvars;
      #50
      CALL = 0;
      CANCEL = 1;
      $display("TC2");
      if (LED != 1'b0) $display ("Result is wrong");
    
      //$dumpfile("dump.vcd"); $dumpvars;
      #50 
      CALL = 1;
      CANCEL = 0;
      $display("TC3");
      if (LED != 1'b1) $display ("Result is wrong");
      
      //$dumpfile("dump.vcd"); $dumpvars;
      #50
      CALL = 1;
      CANCEL = 1;
      $display("TC4");
       if (LED != 1'b1) $display ("Result is wrong");
      
     end
      endmodule
