module lab1
(
  input  [1:4] sw_i,    // KEYs
  output       LED_o    // LED0
);

  wire [1:4] x = sw_i;

  assign LED_o   = !x[1] && !x[2] && x[3] ||
                    x[1] &&  x[2] && x[3] ||
                   !x[2] &&  x[3] && x[4];    

endmodule
