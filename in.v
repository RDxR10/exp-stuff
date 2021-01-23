 module sigin(data, clk, ena, rst);
 input clk, ena, rst; 
 output [7:0] data; 
 reg [7:0] data;

 always @ (posedge clk or negedge rst)
 begin
  if (!rst)
  data = 8'b0;
  else if (ena)
  data = data + 8'b1;
 end
endmodule
