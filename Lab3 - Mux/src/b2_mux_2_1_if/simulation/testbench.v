`timescale 1 ns / 100 ps
module testbench;

  reg  [1:0] d0;
  reg  [1:0] d1;
  reg        sel;
  wire [1:0] y;

  b2_mux_2_1_if b2_mux_2_1_if (d0, d1, sel, y);    

  initial 
  begin
    d0  = 2'b00;
    d1  = 2'b11;
    sel = 1'b0;     
    
    #10;
    sel = 1'b1;     
    
    #10
    d1 = 2'b01;
    
    #5
    d1 = 2'b10;
    #5;           
  end
  
  initial 
    $monitor("d0=%b d1=%b sel=%b y=%b", 
              d0, d1, sel, y);
endmodule

