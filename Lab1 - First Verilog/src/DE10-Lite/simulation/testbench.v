`timescale 1 ns / 100 ps
module testbench;

    reg  [1:4] key;
    wire       led;

    lab1 dut ( key, led );

    initial 
        begin
            key = 4'b0000;    
            #10;            
            key = 4'b0001;    
            #10;            
            key = 4'b0010;    
            #10;           
            key = 4'b0011;    
            #10;            
            key = 4'b0100;    
            #10;            
            key = 4'b0101;    
            #10;            
            key = 4'b0110;    
            #10;            
            key = 4'b0111;    
            #10;            
            key = 4'b1000;    
            #10;            
            key = 4'b1001;    
            #10;            
            key = 4'b1010;  
            #10;            
            key = 4'b1011;  
            #10;           
            key = 4'b1100;  
            #10;            
            key = 4'b1101;  
            #10;            
            key = 4'b1110;   
            #10;            
            key = 4'b1111;  
            #10;            
        end

    initial 
        $monitor ("key=%b led=%b", key, led);

endmodule
