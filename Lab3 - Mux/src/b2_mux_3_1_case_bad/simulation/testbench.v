`timescale 1 ns / 100 ps
module testbench;

  reg  [1:0] d0;
  reg  [1:0] d1;
  reg  [1:0] d2;
  reg  [1:0] sel;
  wire [1:0] y;
 
  b2_mux_3_1_case b2_mux_3_1_case (d0, d1, d2, sel, y);    

  initial 
  begin
    d0 = 2'b00;
    d1 = 2'b01;
    d2 = 2'b10;
    sel = 2'b00;     

    #10;
    sel = 2'b01;     

    #10;
    sel = 2'b10;     

    #10;
    sel = 2'b11;     

    #10;
    sel = 2'b01;     

    #10;
    sel = 2'b11;     
    #10;
  end

  initial 
    $monitor("d0=%b d1=%b d2=%b sel=%b y=%b", 
              d0, d1, d2, sel, y);
endmodule