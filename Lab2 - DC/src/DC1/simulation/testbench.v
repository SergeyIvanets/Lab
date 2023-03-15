`timescale 1ns / 1ps
module testbench;
  // input and output test signals
  reg  [1:0] x_i;
  wire [3:0] y_o;
  // creating the instance of the module 
  // we want to test
  //  DC1 - module name
  //  dut  - instance name 
  //('dut' means 'device under test')
  DC1 dut ( x_i, y_o );
  // do at the beginning of the simulation
  initial 
    begin
      x_i = 2'b00;    // set test signals value
      #10;            // pause
      x_i = 2'b01;    // set test signals value
      #10;            // pause
      x_i = 2'b10;    // set test signals value
      #10;            // pause
      x_i = 2'b11;    // set test signals value
      #10;            // pause
    end
  // do at the beginning of the simulation
  //  print signal values on every change
  initial 
    $monitor("x_i=%b y_o=%b", x_i, y_o);
  // do at the beginning of the simulation
  initial 
    $dumpvars;  //iverilog dump init
endmodule
