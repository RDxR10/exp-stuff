//timescale 1ns / 1ns
//Constant Multipliers
//g(x) = x16 + 59x15 + 13x14 + 104x13 + 189x12 + 68x11 + 209x10 + 30x9
// + 8x8 + 163x7 + 65x6 + 41x5 + 229x4 + 98x3 + 50x2 + 36x + 59.
//*59
module gfmult0(y,x);
input [7:0]x;
output [7:0]y;
reg [7:0]y;
always@(x)
begin
y[7]=x[7]^x[4]^x[3]^x[2];
y[6]=x[7]^x[6]^x[3]^x[2]^x[1];
y[5]=x[6]^x[5]^x[2]^x[1]^x[0];
y[4]=x[5]^x[4]^x[1]^x[0];
y[3]=x[7]^x[2]^x[0];
y[2]=x[7]^x[6]^x[4]^x[3]^x[2]^x[1];
y[1]=x[6]^x[5]^x[4]^x[1]^x[0];
y[0]=x[5]^x[4]^x[3]^x[0];
end
endmodule
73
//*36
module gfmult1(y,x);
input [7:0]x;
output [7:0]y;
reg [7:0]y;
always@(x)
begin
y[7]=x[7]^x[6]^x[5]^x[2];
y[6]=x[7]^x[6]^x[5]^x[4]^x[1];
y[5]=x[7]^x[6]^x[5]^x[4]^x[3]^x[0];
y[4]=x[7]^x[6]^x[5]^x[4]^x[3]^x[2];
y[3]=x[4]^x[3]^x[1];
y[2]=x[7]^x[6]^x[5]^x[3]^x[0];
y[1]=x[7]^x[4];
y[0]=x[7]^x[6]^x[3];
end
endmodule
//*50
module gfmult2(y,x);
input [7:0]x;
output [7:0]y;
reg [7:0]y;
always@(x)
begin
y[7]=x[3]^x[2];
y[6]=x[2]^x[1];
y[5]=x[7]^x[1]^x[0];
y[4]=x[7]^x[6]^x[0];
y[3]=x[7]^x[6]^x[5]^x[3]^x[2];
y[2]=x[6]^x[5]^x[4]^x[3]^x[1];
y[1]=x[5]^x[4]^x[0];
y[0]=x[4]^x[3];
end
endmodule
//*98
module gfmult3(y,x);
input [7:0]x;
output [7:0]y;
reg [7:0]y;
always@(x)
begin
y[7]=x[6]^x[5]^x[2]^x[1];
y[6]=x[7]^x[5]^x[4]^x[1]^x[0];
y[5]=x[6]^x[4]^x[3]^x[0];
y[4]=x[7]^x[5]^x[3]^x[2];
y[3]=x[5]^x[4];
74
y[2]=x[7]^x[6]^x[5]^x[4]^x[3]^x[2]^x[1];
y[1]=x[7]^x[4]^x[3]^x[0];
y[0]=x[7]^x[6]^x[3]^x[2];
end
endmodule
//*229
module gfmult4(y,x);
input [7:0]x;
output [7:0]y;
reg [7:0]y;
always@(x)
begin
y[7]=x[7]^x[6]^x[5]^x[4]^x[2]^x[1]^x[0];
y[6]=x[7]^x[6]^x[5]^x[4]^x[3]^x[1]^x[0];
y[5]=x[7]^x[6]^x[5]^x[4]^x[3]^x[2]^x[0];
y[4]=x[6]^x[5]^x[4]^x[3]^x[2]^x[1];
y[3]=x[6]^x[3];
y[2]=x[6]^x[4]^x[1]^x[0];
y[1]=x[7]^x[6]^x[4]^x[3]^x[2]^x[1];
y[0]=x[7]^x[6]^x[5]^x[3]^x[2]^x[1]^x[0];
end
endmodule
//*41
module gfmult5(y,x);
input [7:0]x;
output [7:0]y;
reg [7:0]y;
always@(x)
begin
y[7]=x[6]^x[4]^x[2];
y[6]=x[5]^x[3]^x[1];
y[5]=x[7]^x[4]^x[2]^x[0];
y[4]=x[7]^x[6]^x[3]^x[1];
y[3]=x[7]^x[5]^x[4]^x[0];
y[2]=x[3]^x[2];
y[1]=x[6]^x[4]^x[1];
y[0]=x[7]^x[5]^x[3]^x[0];
end
endmodule
//*65
module gfmult6(y,x);
input [7:0]x;
output [7:0]y;
reg [7:0]y;
always@(x)
begin
75
y[7]=x[6]^x[5]^x[1];
y[6]=x[5]^x[4]^x[0];
y[5]=x[4]^x[3];
y[4]=x[3]^x[2];
y[3]=x[6]^x[5]^x[2];
y[2]=x[7]^x[6]^x[4];
y[1]=x[7]^x[3]^x[1];
y[0]=x[7]^x[6]^x[2]^x[0];
end
endmodule
//*163
module gfmult7(y,x);
input [7:0]x;
output [7:0]y;
reg [7:0]y;
always@(x)
begin
y[7]=x[6]^x[5]^x[4]^x[2]^x[0];
y[6]=x[7]^x[5]^x[4]^x[3]^x[1];
y[5]=x[6]^x[4]^x[3]^x[2]^x[0];
y[4]=x[5]^x[3]^x[2]^x[1];
y[3]=x[6]^x[5]^x[1];
y[2]=x[6]^x[2];
y[1]=x[7]^x[6]^x[4]^x[2]^x[1]^x[0];
y[0]=x[7]^x[6]^x[5]^x[3]^x[1]^x[0];
end
endmodule
//*8
module gfmult8(y,x);
input [7:0]x;
output [7:0]y;
reg [7:0]y;
always@(x)
begin
y[7]=x[4];
y[6]=x[7]^x[3];
y[5]=x[7]^x[6]^x[2];
y[4]=x[7]^x[6]^x[5]^x[1];
y[3]=x[6]^x[5]^x[0];
y[2]=x[7]^x[5];
y[1]=x[6];
y[0]=x[5];
end
endmodule
//*30
module gfmult9(y,x);
76
input [7:0]x;
output [7:0]y;
reg [7:0]y;
always@(x)
begin
y[7]=x[7]^x[6]^x[5]^x[4]^x[3];
y[6]=x[6]^x[5]^x[4]^x[3]^x[2];
y[5]=x[7]^x[5]^x[4]^x[3]^x[2]^x[1];
y[4]=x[7]^x[6]^x[4]^x[3]^x[2]^x[1]^x[0];
y[3]=x[7]^x[4]^x[2]^x[1]^x[0];
y[2]=x[5]^x[4]^x[1]^x[0];
y[1]=x[7]^x[6]^x[5]^x[0];
y[0]=x[7]^x[6]^x[5]^x[4];
end
endmodule
//*209
module gfmult10(y,x);
input [7:0]x;
output [7:0]y;
reg [7:0]y;
always@(x)
begin
y[7]=x[7]^x[4]^x[3]^x[1]^x[0];
y[6]=x[7]^x[6]^x[3]^x[2]^x[0];
y[5]=x[7]^x[6]^x[5]^x[2]^x[1];
y[4]=x[7]^x[6]^x[5]^x[4]^x[1]^x[0];
y[3]=x[7]^x[6]^x[5]^x[1];
y[2]=x[7]^x[6]^x[5]^x[3]^x[1];
y[1]=x[6]^x[5]^x[3]^x[2]^x[1];
y[0]=x[5]^x[4]^x[2]^x[1]^x[0];
end
endmodule
//*68
module gfmult11(y,x);
input [7:0]x;
output [7:0]y;
reg [7:0]y;
always@(x)
begin
y[7]=x[7]^x[6]^x[1];
y[6]=x[6]^x[5]^x[0];
y[5]=x[7]^x[5]^x[4];
y[4]=x[7]^x[6]^x[4]^x[3];
y[3]=x[7]^x[5]^x[3]^x[2]^x[1];
y[2]=x[7]^x[4]^x[2]^x[0];
y[1]=x[3];
y[0]=x[7]^x[2];
77
end
endmodule
//*189
module gfmult12(y,x);
input [7:0]x;
output [7:0]y;
reg [7:0]y;
always@(x)
begin
y[7]=x[7]^x[3]^x[2]^x[0];
y[6]=x[7]^x[6]^x[2]^x[1];
y[5]=x[7]^x[6]^x[5]^x[1]^x[0];
y[4]=x[7]^x[6]^x[5]^x[4]^x[0];
y[3]=x[7]^x[6]^x[5]^x[4]^x[2]^x[0];
y[2]=x[6]^x[5]^x[4]^x[1]^x[2]^x[0];
y[1]=x[5]^x[4]^x[2]^x[1];
y[0]=x[4]^x[3]^x[1]^x[0];
end
endmodule
//*104
module gfmult13(y,x);
input [7:0]x;
output [7:0]y;
reg [7:0]y;
always@(x)
begin
y[7]=x[5]^x[4]^x[2]^x[1];
y[6]=x[4]^x[3]^x[1]^x[0];
y[5]=x[7]^x[3]^x[2]^x[0];
y[4]=x[7]^x[6]^x[2]^x[1];
y[3]=x[7]^x[6]^x[4]^x[2]^x[0];
y[2]=x[7]^x[6]^x[4]^x[3]^x[2];
y[1]=x[7]^x[6]^x[4]^x[3];
y[0]=x[6]^x[5]^x[3]^x[2];
end
endmodule
//*13
module gfmult14(y,x);
input [7:0]x;
output [7:0]y;
reg [7:0]y;
always@(x)
begin
y[7]=x[7]^x[5]^x[4];
y[6]=x[7]^x[6]^x[4]^x[3];
y[5]=x[6]^x[5]^x[3]^x[2];
78
y[4]=x[4]^x[5]^x[2]^x[1];
y[3]=x[7]^x[5]^x[3]^x[1]^x[0];
y[2]=x[7]^x[6]^x[5]^x[2]^x[0];
y[1]=x[7]^x[6]^x[1];
y[0]=x[6]^x[5]^x[0];
end
endmodule
//in this design gfmult15 will not be used
//since it is the same as gfmult0
//*59
module gfmult15(y,x);
input [7:0]x;
output [7:0]y;
reg [7:0]y;
always@(x)
begin
y[7]=x[7]^x[4]^x[3]^x[2];
y[6]=x[6]^x[7]^x[3]^x[2]^x[1];
y[5]=x[6]^x[5]^x[2]^x[1]^x[0];
y[4]=x[5]^x[4]^x[1]^x[0];
y[3]=x[7]^x[2]^x[0];
y[2]=x[7]^x[6]^x[4]^x[3]^x[2]^x[1];
y[1]=x[6]^x[5]^x[4]^x[1]^x[0];
y[0]=x[5]^x[4]^x[3]^x[0];
end
endmodule
module encode(
clk,
rst_n,
din,
din_ena,
din_syn,
dout,
dout_ena,
dout_syn
);
input clk,rst_n; //clock and reset button
input [7:0]din; //information input
input din_ena,din_syn; //enable button
output [7:0]dout; //code word output
output dout_ena,dout_syn;
reg [7:0]cnt_204; //counter
79
always@(posedge clk or negedge rst_n) begin
//set the counter
if(!rst_n) begin
cnt_204 <= 8'd0;
end
else if(din_ena)begin
if(din_syn)
cnt_204 <= 8'd1;
else
cnt_204 <= (cnt_204 < 8'd204) ? (cnt_204 + 1'b1) : 8'd0;
end
else begin
cnt_204 <= cnt_204;
end
end
//product of the constant multiplication
wire [7:0]mul_59,mul_13,mul_104,mul_189,mul_68,mul_209,mul_30,mul_8,mul_163,
 mul_65,mul_41,mul_229,mul_98,mul_50,mul_36;
//values in the shift registers
reg [7:0]shift0,shift1,shift2,shift3,shift4,shift5,shift6,shift7,shift8,
shift9,shift10,shift11,shift12,shift13,shift14,shift15;
//the feedback
reg [7:0]xor_feedback;
always @ (din or shift15)
begin
 xor_feedback = (cnt_204 > 8'd187) ? 8'd0 : din^shift15;
end
//gfmult15 u15 (mul_59,xor_feedback);
gfmult14 u14 (mul_13, xor_feedback);
gfmult13 u13 (mul_104, xor_feedback);
gfmult12 u12 (mul_189, xor_feedback);
gfmult11 u11 (mul_68, xor_feedback);
gfmult10 u10 (mul_209, xor_feedback);
gfmult9 u9 (mul_30, xor_feedback);
gfmult8 u8 (mul_8, xor_feedback);
gfmult7 u7 (mul_163, xor_feedback);
gfmult6 u6 (mul_65, xor_feedback);
gfmult5 u5 (mul_41, xor_feedback);
gfmult4 u4 (mul_229, xor_feedback);
gfmult3 u3 (mul_98, xor_feedback);
gfmult2 u2 (mul_50, xor_feedback);
gfmult1 u1 (mul_36, xor_feedback);
80
gfmult0 u0 (mul_59, xor_feedback);
always@(posedge clk or negedge rst_n) begin
if(~rst_n) begin //set the initial states of the shift registers
 shift0 <= 0;
 shift1 <= 0;
 shift2 <= 0;
 shift3 <= 0;
 shift4 <= 0;
 shift5 <= 0;
 shift6 <= 0;
 shift7 <= 0;
 shift8 <= 0;
 shift9 <= 0;
 shift10 <= 0;
 shift11 <= 0;
 shift12 <= 0;
 shift13 <= 0;
 shift14 <= 0;
 shift15 <= 0;
 end

 else if(din_ena) begin
shift15 <= shift14^mul_59;
shift14 <= shift13^mul_13;
shift13 <= shift12^mul_104;
shift12 <= shift11^mul_189;
shift11 <= shift10^mul_68;
shift10 <= shift9^mul_209;
shift9 <= shift8^mul_30;
shift8 <= shift7^mul_8;
shift7 <= shift6^mul_163;
shift6 <= shift5^mul_65;
shift5 <= shift4^mul_41;
shift4 <= shift3^mul_229;
shift3 <= shift2^mul_98;
shift2 <= shift1^mul_50;
shift1 <= shift0^mul_36;
shift0 <= mul_59;
end
end
assign dout = (cnt_204 < 8'd188) ? din : shift15;
assign dout_ena = din_ena;
assign dout_syn = din_syn;
endmodule
