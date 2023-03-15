`timescale 1ns / 1ps
module testbench;
  reg  [1:0] x_i;
  reg        ena_i;
  wire [2:0] y_o;
  DC3 dut ( x_i, ena_i, y_o );
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
  initial 
    $monitor("x_i=%b ena_i=%b y_o=%b", x_i, ena_i, y_o);
endmodule
