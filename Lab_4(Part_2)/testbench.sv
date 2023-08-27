`timescale 1ns / 1ps

module lab_4_pt2_testbench;
  
//inputs
  reg clk;
  reg signal;
  
//outputs
  wire outedge;
  
  //UUT
  lab4_pt2_bh uut (
    .clk(clk),
    .signal(signal),
    .outedge(outedge)
  );
  
  initial begin
    //Initialize inputs
    signal = 'd0;
    clk = 'd0;
  end
  
  //always #1 clk <= ~clk;
  initial clk = 0;
  always #10 clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    $monitor("At t = %0d, clk = %0b", $time, clk);
      #12000 $finish;
  end
  
initial begin
  //Wait 100 ns for global reset to finish
  #100;
  signal = 'd1;
  #2500
  signal = 'd0;
  #2500
  signal = 'd1;
  #5000
  signal = 'd0;
  
end
  
endmodule
