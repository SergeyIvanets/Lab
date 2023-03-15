module DC2
(
  input      [1:0]  x_i,
  
  output reg [3:0]  y_o
);

always @ (*)
begin
  case (x_i)
    2'h0 : y_o = 4'h1;
    2'h1 : y_o = 4'h2;
    2'h2 : y_o = 4'h4;
    2'h3 : y_o = 4'h8;
  endcase
end 
  
endmodule 