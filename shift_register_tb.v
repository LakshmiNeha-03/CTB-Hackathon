module test_bench;
  reg [3:0] ip;
  reg [1:0] sel;
  reg  load,rst,clk;
  wire [3:0] op;

  shift_reg dut (.op(op), .ip(ip), .sel(sel), .load(load) , .rst(rst) , .clk(clk));
initial
  begin
     clk=1'b1;
     forever #5 clk=~clk;   
  end
  
initial
  begin
    ip   = 4'b1100;
    rst  = 1'b1;
    load = 1'b1;
    sel  = 2'b00;
    #10;
    
    ip   = 4'b1100;
    rst  = 1'b0;
    load = 1'b1;
    sel  = 2'b00;
    #10;
    
    ip   = 4'b1100;
    rst  = 1'b0;
    load = 1'b0;
    sel  = 2'b00;
    #10;
    
    ip   = 4'b1000;
    rst  = 1'b0;
    load = 1'b1;
    sel  = 2'b01;
    #10;
    
    ip   = 4'b1100;
    load = 1'b0;
    sel  = 2'b01;
    #10;
    
    ip   = 4'b1010;
    load = 1'b1;
    sel  = 2'b10;
    #10;
    
    ip   = 4'b1100;

    load = 1'b0;
    sel  = 2'b10;
    #10;

    ip   = 4'b1110;
    load = 1'b1;
    sel  = 2'b11;
    #10;

    ip   = 4'b1111;
    load = 1'b0;
    sel  = 3'b11;
    #10;

    $finish;
  end 
  
  always@(*)
     $display("time =%d, load=%b, sel=%b , ip=%b , rst=%b , op=%b " , $time, load,sel,ip,rst,op);
  
  initial begin
    $dumpfile("test_bench.vcd");
    $dumpvars();
  end
  
endmodule
