`timescale 1ns / 1ps
module testbench;
  // input and output test signals
  reg  [1:0] x_i;
  reg        ena_i;
  wire [3:0] y_o;
  // creating the instance of the module 
  // we want to test
  //  DC3 - module name
  //  dut  - instance name 
  //('dut' means 'device under test')
  DC3 dut ( x_i, ena_i, y_o );
  // do at the beginning of the simulation
  initial 
    begin
      ena_i = 0;
      x_i = 2'b00;    
      #10;            
      x_i = 2'b01;    
      #10;            
      x_i = 2'b10;   
      #10;             
      x_i = 2'b11;    
      #10;   
      ena_i = 1;
      x_i = 2'b00;    
      #10;            
      x_i = 2'b01;    
      #10;            
      x_i = 2'b10;   
      #10;             
      x_i = 2'b11;    
      #10;             
    end
  // do at the beginning of the simulation
  //  print signal values on every change
  initial 
    $monitor("x_i=%b ena_i=%b y_o=%b", x_i, ena_i, y_o);
  // do at the beginning of the simulation
  initial 
    $dumpvars;  //iverilog dump init
endmodule
