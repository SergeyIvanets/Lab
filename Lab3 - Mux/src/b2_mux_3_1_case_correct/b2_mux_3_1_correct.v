module b2_mux_3_1_correct
(
  input      [1:0] d0, d1, d2,
  input      [1:0] sel,
  output reg [1:0] y
);

  always @ (*)
    case (sel)
      2'b00:   y = d0;
      2'b01:   y = d1;
      default: y = d2;
    endcase
endmodule