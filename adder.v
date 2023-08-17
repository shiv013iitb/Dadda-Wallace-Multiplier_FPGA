`timescale 1ns/10ps
module half_adder(input a,b, output sum,carry);
assign #2 sum = a^b;
assign #1 carry = a&b;
endmodule

module full_adder(input a,b,c, output sum, carry);
assign #3 sum = a^b^c;
assign #2 carry = (a&b)|(b&c)|(c&a);
endmodule

module carry_select_adder2(input a0,b0,a1,b1,cin,output sum0,sum1,carry_out);

full_adder f00(a0,b0,1'b0,f00sum,f00carry);
full_adder f01(a1,b1,f00carry,f01sum,f01carry);

full_adder f10(a0,b0,1'b1,f10sum,f10carry);
full_adder f11(a1,b1,f10carry,f11sum,f11carry);

assign sum0 = cin?f10sum:f00sum;
assign sum1 = cin?f11sum:f01sum;
assign carry_out = cin?f11carry:f01carry;

endmodule

module carry_select_adder3(input a0,b0,a1,b1,a2,b2,cin,output sum0,sum1,sum2,carry_out);

full_adder f00(a0,b0,1'b0,f00sum,f00carry);
full_adder f01(a1,b1,f00carry,f01sum,f01carry);
full_adder f02(a2,b2,f01carry,f02sum,f02carry);

full_adder f10(a0,b0,1'b1,f10sum,f10carry);
full_adder f11(a1,b1,f10carry,f11sum,f11carry);
full_adder f12(a2,b2,f11carry,f12sum,f12carry);

assign sum0 = cin?f10sum:f00sum;
assign sum1 = cin?f11sum:f01sum;
assign sum2 = cin?f12sum:f02sum;
assign carry_out = cin?f12carry:f02carry;

endmodule

module carry_select_adder4(input a0,b0,a1,b1,a2,b2,a3,b3,cin,output sum0,sum1,sum2,sum3,carry_out);

full_adder f00(a0,b0,1'b0,f00sum,f00carry);
full_adder f01(a1,b1,f00carry,f01sum,f01carry);
full_adder f02(a2,b2,f01carry,f02sum,f02carry);
full_adder f03(a3,b3,f02carry,f03sum,f03carry);

full_adder f10(a0,b0,1'b1,f10sum,f10carry);
full_adder f11(a1,b1,f10carry,f11sum,f11carry);
full_adder f12(a2,b2,f11carry,f12sum,f12carry);
full_adder f13(a3,b3,f12carry,f13sum,f13carry);

assign sum0 = cin?f10sum:f00sum;
assign sum1 = cin?f11sum:f01sum;
assign sum2 = cin?f12sum:f02sum;
assign sum3 = cin?f13sum:f03sum;
assign carry_out = cin?f13carry:f03carry;

endmodule

module carry_select_adder5(input a0,b0,a1,b1,a2,b2,a3,b3,a4,b4,cin,output sum0,sum1,sum2,sum3,sum4,carry_out);

full_adder f00(a0,b0,1'b0,f00sum,f00carry);
full_adder f01(a1,b1,f00carry,f01sum,f01carry);
full_adder f02(a2,b2,f01carry,f02sum,f02carry);
full_adder f03(a3,b3,f02carry,f03sum,f03carry);
full_adder f04(a4,b4,f03carry,f04sum,f04carry);

full_adder f10(a0,b0,1'b1,f10sum,f10carry);
full_adder f11(a1,b1,f10carry,f11sum,f11carry);
full_adder f12(a2,b2,f11carry,f12sum,f12carry);
full_adder f13(a3,b3,f12carry,f13sum,f13carry);
full_adder f14(a4,b4,f13carry,f14sum,f14carry);

assign sum0 = cin?f10sum:f00sum;
assign sum1 = cin?f11sum:f01sum;
assign sum2 = cin?f12sum:f02sum;
assign sum3 = cin?f13sum:f03sum;
assign sum4 = cin?f14sum:f04sum;
assign carry_out = cin?f14carry:f04carry;

endmodule