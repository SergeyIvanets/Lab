module DC1
(
  input   [1:0]  x_i,
  
  output  [3:0]  y_o
);
 
  assign y_o[0] = !x_i[1] && !x_i[0];
  assign y_o[1] = !x_i[1] &&  x_i[0];
  assign y_o[2] =  x_i[1] && !x_i[0];
  assign y_o[3] =  x_i[1] &&  x_i[0];
  
endmodule 
