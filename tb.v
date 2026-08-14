
include "ram.v"
module tb;
reg clk,rst,en,wr;
reg [1:0]addr;
reg [3:0]indata;
wire [3:0]outdata;
ram dut(.*);

initial begin
clk=1;
forever #10
clk=~clk;
end

initial
begin
rst=0; #20
rst=1; #80
rst=0; 
 
end
 
initial
begin
en=1;
wr=1;
#20
addr=2'b0;
indata=4'b0110; 
#20;
addr=2'b1;
indata=4'b0001;	
#20;
addr=2'b10;
indata=4'b0111;
#20;
addr=2'b11;
indata=4'b1100;
#20;

wr=0; 
addr=2'b0;
#20;
addr=2'b1;
#20;
addr=2'b10;
#20
addr=2'b11; 


#300 $finish;
end
endmodule


