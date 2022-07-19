module shift_reg(op,clk,rst, load,sel,ip);
  output reg [3:0] op;
  input load;
  input [1:0] sel;
  input [3:0] ip;
  input clk, rst;
  
  always @(posedge clk or posedge rst)
   begin
     if (rst)
       
       op = 0;
      
     else    
       case(load)
         1'b1: 
          begin                                 //Load Input
            op = ip;
          end
          
         1'b0:                                 //Operation 
           case (sel)
            3'b000:  op = op<<1;                //Left Shift
            3'b001:  op = op>>1;               //Right Shift
            3'b010:  op = {op[2:0],op[3]};    //Rotate Left
            3'b011:  op = {op[0], op[3:1]};  //Rotate Right
          endcase                                     
       endcase
   
   end 
    
  endmodule
