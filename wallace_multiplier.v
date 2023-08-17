module wallace_multiplier(input[7:0] a,b, output[15:0] product);

wire a0b0,a1b0,a2b0,a3b0,a4b0,a5b0,a6b0,a7b0,
     a0b1,a1b1,a2b1,a3b1,a4b1,a5b1,a6b1,a7b1,
	 a0b2,a1b2,a2b2,a3b2,a4b2,a5b2,a6b2,a7b2,
	 a0b3,a1b3,a2b3,a3b3,a4b3,a5b3,a6b3,a7b3,
	 a0b4,a1b4,a2b4,a3b4,a4b4,a5b4,a6b4,a7b4,
	 a0b5,a1b5,a2b5,a3b5,a4b5,a5b5,a6b5,a7b5,
	 a0b6,a1b6,a2b6,a3b6,a4b6,a5b6,a6b6,a7b6,
	 a0b7,a1b7,a2b7,a3b7,a4b7,a5b7,a6b7,a7b7;
	 
wire h111sum,h111carry,f121sum,f121carry,f131sum,f131carry,f141sum,f141carry,h141sum,h141carry,f151sum,f151carry,f152sum,f152carry,f161sum,f161carry,f162sum,
     f162carry,f171sum,f171carry,f172sum,f172carry,f181sum,f181carry,h181sum,h181carry,f191sum,f191carry,f1101sum,f1101carry,h1111sum,h1111carry,
	 h221sum,h221carry,f231sum,f231carry,f241sum,f241carry,f251sum,f251carry,f261sum,f261carry,h261sum,h261carry,f271sum,f271carry,f272sum,f272carry,f281sum,
	 f281carry,f282sum,f282carry,f291sum,f291carry,f292sum,f292carry,f2101sum,f2101carry,f2111sum,f2111carry,f2121sum,f2121carry,h2131sum,h2131carry,
	 h331sum,h331carry,h341sum,h341carry,f351sum,f351carry,f361sum,f361carry,f371sum,f371carry,f381sum,f381carry,f391sum,f391carry,f3101sum,f3101carry,
	 h3111sum,h3111carry,h3121sum,h3121carry,
	 h441sum,h441carry,h451sum,h451carry,h461sum,h461carry,f471sum,f471carry,f481sum,f481carry,f491sum,f491carry,f4101sum,f4101carry,f4111sum,f4111carry,f4121sum,
	 f4121carry,f4131sum,f4131carry,h4141sum,h4141carry,	 
	 h551sum,h551carry,csa4sum0,csa4sum1,csa4sum2,csa4sum3,csa4carry,csa5sum0,csa5sum1,csa5sum2,csa5sum3,csa5sum4,csa5carry;
	 

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


half_adder h111(a1b0,a0b1,h111sum,h111carry);
full_adder f121(a2b0,a1b1,a0b2,f121sum,f121carry);
full_adder f131(a3b0,a2b1,a1b2,f131sum,f131carry);
full_adder f141(a4b0,a3b1,a2b2,f141sum,f141carry);
full_adder f151(a5b0,a4b1,a3b2,f151sum,f151carry);
full_adder f161(a6b0,a5b1,a4b2,f161sum,f161carry);
full_adder f171(a7b0,a6b1,a5b2,f171sum,f171carry);
half_adder h181(a7b1,a6b2,h181sum,h181carry);

half_adder h141(a1b3,a0b4,h141sum,h141carry);
full_adder f152(a2b3,a1b4,a0b5,f152sum,f152carry);
full_adder f162(a3b3,a2b4,a1b5,f162sum,f162carry);
full_adder f172(a4b3,a3b4,a2b5,f172sum,f172carry);
full_adder f181(a5b3,a4b4,a3b5,f181sum,f181carry);
full_adder f191(a6b3,a5b4,a4b5,f191sum,f191carry);
full_adder f1101(a7b3,a6b4,a5b5,f1101sum,f1101carry);
half_adder h1111(a7b4,a6b5,h1111sum,h1111carry);




half_adder h221(h111carry,f121sum,h221sum,h221carry);
full_adder f231(f121carry,f131sum,a0b3,f231sum,f231carry);
full_adder f241(f131carry,f141sum,h141sum,f241sum,f241carry);
full_adder f251(f141carry,h141carry,f151sum,f251sum,f251carry);
full_adder f261(f151carry,f152carry,f161sum,f261sum,f261carry);
full_adder f271(f161carry,f162carry,f171sum,f271sum,f271carry);
full_adder f281(f171carry,f172carry,h181sum,f281sum,f281carry);
full_adder f291(h181carry,f181carry,a7b2,f291sum,f291carry);

half_adder h261(f162sum,a0b6,h261sum,h261carry);
full_adder f272(f172sum,a1b6,a0b7,f272sum,f272carry);
full_adder f282(f181sum,a2b6,a1b7,f282sum,f282carry);
full_adder f292(f191sum,a3b6,a2b7,f292sum,f292carry);
full_adder f2101(f1101sum,a4b6,a3b7,f2101sum,f2101carry);
full_adder f2111(h1111sum,a5b6,a4b7,f2111sum,f2111carry);
full_adder f2121(a7b5,a6b6,a5b7,f2121sum,f2121carry);
half_adder h2131(a7b6,a6b7,h2131sum,h2131carry);




half_adder h331(h221carry,f231sum,h331sum,h331carry);
half_adder h341(f231carry,f241sum,h341sum,h341carry);
full_adder f351(f152sum,f251sum,f241carry,f351sum,f351carry);
full_adder f361(h261sum,f261sum,f251carry,f361sum,f361carry);
full_adder f371(h261carry,f261carry,f271sum,f371sum,f371carry);
full_adder f381(f271carry,f272carry,f281sum,f381sum,f381carry);
full_adder f391(f281carry,f282carry,f291sum,f391sum,f391carry);
full_adder f3101(f291carry,f292carry,f191carry,f3101sum,f3101carry);
half_adder h3111(f2101carry,f1101carry,h3111sum,h3111carry);
half_adder h3121(f2111carry,h1111carry,h3121sum,h3121carry);




half_adder h441(h331carry,h341sum,h441sum,h441carry);
half_adder h451(h341carry,f351sum,h451sum,h451carry);
half_adder h461(f351carry,f361sum,h461sum,h461carry);
full_adder f471(f361carry,f371sum,f272sum,f471sum,f471carry);
full_adder f481(f371carry,f381sum,f282sum,f481sum,f481carry);
full_adder f491(f381carry,f391sum,f292sum,f491sum,f491carry);
full_adder f4101(f391carry,f3101sum,f2101sum,f4101sum,f4101carry);
full_adder f4111(f3101carry,h3111sum,f2111sum,f4111sum,f4111carry);
full_adder f4121(h3111carry,h3121sum,f2121sum,f4121sum,f4121carry);
full_adder f4131(h3121carry,h2131sum,f2121carry,f4131sum,f4131carry);
half_adder h4141(a7b7,h2131carry,h4141sum,h4141carry);




half_adder h551(h441carry,h451sum,h551sum,h551carry);
carry_select_adder4 csa4(h451carry,h461sum,h461carry,f471sum,f471carry,f481sum,f481carry,f491sum,h551carry,csa4sum0,csa4sum1,csa4sum2,csa4sum3,csa4carry);
carry_select_adder5 csa5(f491carry,f4101sum,f4101carry,f4111sum,f4111carry,f4121sum,f4121carry,f4131sum,f4131carry,h4141sum,csa4carry,csa5sum0,csa5sum1,
                         csa5sum2,csa5sum3,csa5sum4,csa5carry);
						 
						 
assign product[0] = a0b0;
assign product[1] = h111sum;
assign product[2] = h221sum;
assign product[3] = h331sum;
assign product[4] = h441sum;
assign product[5] = h551sum;
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
