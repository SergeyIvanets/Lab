`timescale 1 ns / 100 ps
module testbench;
  
  reg  a;
  reg  b;
  reg  sel;
  wire y;
 
  b1_mux_2_1_comb b1_mux_2_1_comb  (a, b, sel, y);
    
  initial 
    begin
      a = 1'b0;
      b = 1'b1;
      sel = 1'b0;     
     
      #10;
      sel = 1'b1;     
     
      #10
      b = 1'b0;      
     
      #5
      b = 1'b1;
     
      #5;           
  end
  
  initial 
    $monitor("a=%b b=%b sel=%b y=%b", a, b, sel, y);
endmodule

