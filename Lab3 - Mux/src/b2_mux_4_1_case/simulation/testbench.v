`timescale 1 ns / 100 ps
module testbench;

  reg  [1:0] d0;
  reg  [1:0] d1;
  reg  [1:0] d2;
  reg  [1:0] d3;
  reg  [1:0] sel;
  wire [1:0] y;
 
  b2_mux_4_1_case b2_mux_4_1_case (d0, d1, d2, d3, sel, y);    

  initial 
  begin
    d0 = 2'b00;
    d1 = 2'b01;
    d2 = 2'b10;
    d3 = 2'b11;
    sel = 2'b00;     // sel change to 00; d0 -> y

    #10;
    sel = 2'b01;     // sel change to 01; d1 -> y

    #10;
    sel = 2'b10;     // sel change to 10; d2 -> y

    #10;
    sel = 2'b11;     // sel change to 11; d3 -> y

    #10;
    d3 = 2'b00;

    #10;
    d3 = 2'b10;
    #10;
  end

  initial 
    $monitor("d0=%b d1=%b d2=%b d3=%bsel=%b y=%b", 
              d0, d1, d2, d3, sel, y);
endmodule