`timescale 1ns / 1ps
module lab4_pt3_testbench;
  
//Inputs
  reg clk;
  reg sw0;
  reg sw1;
  reg sw2;
  reg sw3;
  
  //outpus
  wire [3:0] an;
  wire [7:0] sseg;
  
  //UUT
  displaymux_main_bh uut (
    .clk(clk),
    .sw0(sw0),
    .sw1(sw1),
    .sw2(sw2),
    .sw3(sw3),
    .an(an),
    .sseg(sseg)
  );
  
  initial begin
    clk = 0;
    sw0 = 0;
    sw1 = 0;
    sw2 = 0;
    sw3 = 0;
  end
  
  always #5 clk = ~clk;
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    $monitor("At t = %0d, clk = %0b", $time, clk);
    #2000 $finish;
  end
  
  initial begin
    //Initialize inputs
    #100
    sw0 = 0;
    sw1 = 0;
    sw2 = 0;
    sw3 = 0;
    
    //wait 100ns
    
    #100
    sw0 = 1;
    sw1 = 0;
    sw2 = 0;
    sw3 = 0;
    #100
    sw0 = 0;
    sw1 = 1;
    sw2 = 0;
    sw3 = 0;
    #100
    sw0 = 1;
    sw1 = 1;
    sw2 = 0;
    sw3 = 0;
    #100
    sw0 = 0;
    sw1 = 0;
    sw2 = 1;
    sw3 = 0;
    #100
    sw0 = 1;
    sw1 = 0;
    sw2 = 1;
    sw3 = 0;
    #100
    sw0 = 0;
    sw1 = 1;
    sw2 = 1;
    sw3 = 0;
    #100
    sw0 = 1;
    sw1 = 1;
    sw2 = 1;
    sw3 = 0;
    #100
    sw0 = 0;
    sw1 = 0;
    sw2 = 0;
    sw3 = 1;
    #100
    sw0 = 1;
    sw1 = 0;
    sw2 = 0;
    sw3 = 1;
    #100
    sw0 = 0;
    sw1 = 1;
    sw2 = 0;
    sw3 = 1;
    #100
    sw0 = 1;
    sw1 = 1;
    sw2 = 0;
    sw3 = 1;
    #100
    sw0 = 0;
    sw1 = 0;
    sw2 = 1;
    sw3 = 1;
    #100
    sw0 = 1;
    sw1 = 0;
    sw2 = 1;
    sw3 = 1;
    #100
    sw0 = 0;
    sw1 = 1;
    sw2 = 1;
    sw3 = 1;
    #100
    sw0 = 1;
    sw1 = 1;
    sw2 = 1;
    sw3 = 1;
    
  end
endmodule
