`timescale 1ns/10ps
module multiplier_tb();
reg clk;
reg[7:0] a,b;
wire[15:0] dadda_product,wallace_product;
reg[15:0] actual_product;
integer count =20;
integer filer,filew;
multiplier DUT(.a(a),.b(b),.dadda_product(dadda_product),.wallace_product(wallace_product));
initial
begin
clk = 1'b0;
forever
begin
#15;
clk = ~clk;
end
end
initial
begin
#5;
filer = $fopen("multiplier_input.txt","r");
filew = $fopen("multiplier_output.txt","w");
#10;
while(count>0)
begin
@(posedge clk);
#2;
$fscanf(filer,"%b",a);
$fscanf(filer,"%b",b);
#1;
actual_product = a*b;
#20;
$fwrite(filew,"\n---------------------------------------------\na----------------->> %b = %d\nb----------------->> %b = %d\n",a,a,b,b);
$fwrite(filew,"DADDA_PRODUCT----->> %b = %d\n",dadda_product,dadda_product);
$fwrite(filew,"WALLACE_PRODUCT--->> %b = %d\n",wallace_product,wallace_product);
$fwrite(filew,"ACTUAL_PRODUCT---->> %b = %d\n---------------------------------------------\n",actual_product,actual_product);
#2;
count = count -1;
end
#10;
$fclose(filew);
$fclose(filer);
end
endmodule