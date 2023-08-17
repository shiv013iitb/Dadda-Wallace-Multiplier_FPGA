module dadda_multiplier(input[7:0] a,b, output[15:0] product);

wire a0b0,a1b0,a2b0,a3b0,a4b0,a5b0,a6b0,a7b0,
     a0b1,a1b1,a2b1,a3b1,a4b1,a5b1,a6b1,a7b1,
	 a0b2,a1b2,a2b2,a3b2,a4b2,a5b2,a6b2,a7b2,
	 a0b3,a1b3,a2b3,a3b3,a4b3,a5b3,a6b3,a7b3,
	 a0b4,a1b4,a2b4,a3b4,a4b4,a5b4,a6b4,a7b4,
	 a0b5,a1b5,a2b5,a3b5,a4b5,a5b5,a6b5,a7b5,
	 a0b6,a1b6,a2b6,a3b6,a4b6,a5b6,a6b6,a7b6,
	 a0b7,a1b7,a2b7,a3b7,a4b7,a5b7,a6b7,a7b7;
	 
wire h161sum,h161carry,f171sum,f171carry,h171sum,h171carry,f181sum,f181carry,h181sum,h181carry,f191sum,f191carry,
     h241sum,h241carry,f251sum,f251carry,h251sum,h251carry,f261sum,f261carry,f262sum,f262carry,f271sum,f271carry,
	 f281sum,f281carry,f282sum,f282carry,f291sum,f291carry,f292sum,f292carry,f2101sum,f2102carry,f2111sum,f2111carry,
     h331sum,h331carry,f341sum,f341carry,f351sum,f351carry,f361sum,f361carry,f371sum,f371carry,f381sum,f381carry,
     f391sum,f391carry,f3101sum,f3101carry,f3111sum,f3111carry,f3121sum,f3121carry,
     h421sum,h421carry,f431sum,f431carry,f441sum,f441carry,f451sum,f451carry,f461sum,f461carry,f471sum,f471carry,f481sum,
	 f481carry,f491sum,f491carry,f4101sum,f4101carry,f4111sum,f4111carry,f4121sum,f4121carry,f4131sum,f4131carry,
     csa2sum0,csa2sum1,ca2carry,csa3sum0,csa3sum1,csa3sum2,csa3carry,csa4sum0,csa4sum1,csa4sum2,csa4sum3,csa4carry,
     csa5sum0,csa5sum1,csa5sum2,csa5sum3,csa5sum4,csa5carry;	 
	 
assign a0b0 = a[0]&b[0];
assign a1b0 = a[1]&b[0];
assign a2b0 = a[2]&b[0];
assign a3b0 = a[3]&b[0];
assign a4b0 = a[4]&b[0];
assign a5b0 = a[5]&b[0];
assign a6b0 = a[6]&b[0];
assign a7b0 = a[7]&b[0];	 
assign a0b1 = a[0]&b[1];
assign a1b1 = a[1]&b[1];
assign a2b1 = a[2]&b[1];
assign a3b1 = a[3]&b[1];
assign a4b1 = a[4]&b[1];
assign a5b1 = a[5]&b[1];
assign a6b1 = a[6]&b[1];
assign a7b1 = a[7]&b[1];	 
assign a0b2 = a[0]&b[2];
assign a1b2 = a[1]&b[2];
assign a2b2 = a[2]&b[2];
assign a3b2 = a[3]&b[2];
assign a4b2 = a[4]&b[2];
assign a5b2 = a[5]&b[2];
assign a6b2 = a[6]&b[2];
assign a7b2 = a[7]&b[2];	 
assign a0b3 = a[0]&b[3];
assign a1b3 = a[1]&b[3];
assign a2b3 = a[2]&b[3];
assign a3b3 = a[3]&b[3];
assign a4b3 = a[4]&b[3];
assign a5b3 = a[5]&b[3];
assign a6b3 = a[6]&b[3];
assign a7b3 = a[7]&b[3];	 
assign a0b4 = a[0]&b[4];
assign a1b4 = a[1]&b[4];
assign a2b4 = a[2]&b[4];
assign a3b4 = a[3]&b[4];
assign a4b4 = a[4]&b[4];
assign a5b4 = a[5]&b[4];
assign a6b4 = a[6]&b[4];
assign a7b4 = a[7]&b[4];	 
assign a0b5 = a[0]&b[5];
assign a1b5 = a[1]&b[5];
assign a2b5 = a[2]&b[5];
assign a3b5 = a[3]&b[5];
assign a4b5 = a[4]&b[5];
assign a5b5 = a[5]&b[5];
assign a6b5 = a[6]&b[5];
assign a7b5 = a[7]&b[5];	 
assign a0b6 = a[0]&b[6];
assign a1b6 = a[1]&b[6];
assign a2b6 = a[2]&b[6];
assign a3b6 = a[3]&b[6];
assign a4b6 = a[4]&b[6];
assign a5b6 = a[5]&b[6];
assign a6b6 = a[6]&b[6];
assign a7b6 = a[7]&b[6];	 
assign a0b7 = a[0]&b[7];
assign a1b7 = a[1]&b[7];
assign a2b7 = a[2]&b[7];
assign a3b7 = a[3]&b[7];
assign a4b7 = a[4]&b[7];
assign a5b7 = a[5]&b[7];
assign a6b7 = a[6]&b[7];
assign a7b7 = a[7]&b[7];	 

half_adder h161(a6b0,a5b1,h161sum,h161carry);
full_adder f171(a7b0,a6b1,a5b2,f171sum,f171carry);
half_adder h171(a4b3,a3b4,h171sum,h171carry);
full_adder f181(a7b1,a6b2,a5b3,f181sum,f181carry);
half_adder h181(a4b4,a3b5,h181sum,h181carry);
full_adder f191(a7b2,a6b3,a5b4,f191sum,f191carry);

half_adder h241(a4b0,a3b1,h241sum,h241carry);
full_adder f251(a5b0,a4b1,a3b2,f251sum,f251carry);
half_adder h251(a2b3,a1b4,h251sum,h251carry);
full_adder f261(h161sum,a4b2,a3b3,f261sum,f261carry);
full_adder f262(a2b4,a1b5,a0b6,f262sum,f262carry);
full_adder f271(h161carry,f171sum,h171sum,f271sum,f271carry);
full_adder f272(a2b5,a1b6,a0b7,f272sum,f272carry);
full_adder f281(f171carry,h171carry,f181sum,f281sum,f281carry);
full_adder f282(h181sum,a2b6,a1b7,f282sum,f282carry);
full_adder f291(f181carry,h181carry,f191sum,f291sum,f291carry);
full_adder f292(a4b5,a3b6,a2b7,f292sum,f292carry);
full_adder f2101(f191carry,a7b3,a6b4,f2101sum,f2101carry);
full_adder f2102(a5b5,a4b6,a3b7,f2102sum,f2102carry);
full_adder f2111(a7b4,a6b5,a5b6,f2111sum,f2111carry);

half_adder h331(a3b0,a2b1,h331sum,h331carry);
full_adder f341(h241sum,a2b2,a1b3,f341sum,f341carry);
full_adder f351(h241carry,f251sum,h251sum,f351sum,f351carry);
full_adder f361(f251carry,h251carry,f261sum,f361sum,f361carry);
full_adder f371(f261carry,f262carry,f271sum,f371sum,f371carry);
full_adder f381(f271carry,f272carry,f281sum,f381sum,f381carry);
full_adder f391(f281carry,f282carry,f291sum,f391sum,f391carry);
full_adder f3101(f291carry,f292carry,f2101sum,f3101sum,f3101carry);
full_adder f3111(f2101carry,f2102carry,f2111sum,f3111sum,f3111carry);
full_adder f3121(f2111carry,a7b5,a6b6,f3121sum,f3121carry);

half_adder h421(a1b1,a2b0,h421sum,h421carry);
full_adder f431(h331sum,a0b3,a1b2,f431sum,f431carry);
full_adder f441(h331carry,f341sum,a0b4,f441sum,f441carry);
full_adder f451(f341carry,f351sum,a0b5,f451sum,f451carry);
full_adder f461(f351carry,f361sum,f262sum,f461sum,f461carry);
full_adder f471(f361carry,f371sum,f272sum,f471sum,f471carry);
full_adder f481(f371carry,f381sum,f282sum,f481sum,f481carry);
full_adder f491(f381carry,f391sum,f292sum,f491sum,f491carry);
full_adder f4101(f391carry,f3101sum,f2102sum,f4101sum,f4101carry);
full_adder f4111(f3101carry,f3111sum,a4b7,f4111sum,f4111carry);
full_adder f4121(f3111carry,f3121sum,a5b7,f4121sum,f4121carry);
full_adder f4131(f3121carry,a7b6,a6b7,f4131sum,f4131carry);

carry_select_adder2 csa2(a1b0,a0b1,h421sum,a0b2,1'b0,csa2sum0,csa2sum1,csa2carry);
carry_select_adder3 csa3(f431sum,h421carry,f441sum,f431carry,f451sum,f441carry,csa2carry,csa3sum0,csa3sum1,csa3sum2,csa3carry);
carry_select_adder4 csa4(f461sum,f451carry,f471sum,f461carry,f481sum,f471carry,f491sum,f481carry,csa3carry,csa4sum0,csa4sum1,csa4sum2,csa4sum3,csa4carry);
carry_select_adder5 csa5(f4101sum,f491carry,f4111sum,f4101carry,f4121sum,f4111carry,f4131sum,f4121carry,a7b7,f4131carry,csa4carry,csa5sum0,csa5sum1,csa5sum2,
                         csa5sum3,csa5sum4,csa5carry);

assign product[0] = a0b0;
assign product[1] = csa2sum0;
assign product[2] = csa2sum1;
assign product[3] = csa3sum0;
assign product[4] = csa3sum1;
assign product[5] = csa3sum2;
assign product[6] = csa4sum0;
assign product[7] = csa4sum1;
assign product[8] = csa4sum2;
assign product[9] = csa4sum3;
assign product[10] = csa5sum0;
assign product[11] = csa5sum1;
assign product[12] = csa5sum2;
assign product[13] = csa5sum3;
assign product[14] = csa5sum4;
assign product[15] = csa5carry;

endmodule	