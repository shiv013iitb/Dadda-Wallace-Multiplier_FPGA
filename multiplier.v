module multiplier(input[7:0] a,b, output[15:0] dadda_product, wallace_product);
dadda_multiplier da_m(a,b,dadda_product);
wallace_multiplier wa_m(a,b,wallace_product);
endmodule
