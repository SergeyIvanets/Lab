module DC3
(
  input      [1:0]  x_i,
  input             ena_i,
  
  output reg [2:0]  y_o
);

always @ (*)
  begin
    y_o = 3'b111;
    if( ena_i ) begin
      case (x_i)
        2'b00 : y_o = 3'b110;
        2'b01 : y_o = 3'b101;
        2'b10 : y_o = 3'b011;
        2'b11 : y_o = 3'b111;
      endcase
    end 
  end 
  
endmodule 