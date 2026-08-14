module ram(clk,rst,en,wr,addr,indata,outdata);
input clk,rst,en,wr;
input [1:0]addr;
input [3:0]indata;
output reg [3:0]outdata;
reg[3:0]mem[3:0];
always@(posedge clk,posedge rst)
begin
if(rst)
  outdata<=2'b0; 
else
if(en==1 && wr==1)
mem[addr]<=indata;
else 
if(en==1 && wr==0)
  outdata<=mem[addr]; 
else
 outdata<=2'bx; 
end
endmodule



