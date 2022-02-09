module MyTest();
initial
$display("A    B    C    D    OUT");
integer i;
initial begin
for(i=0; i<16; i=i+1)


$display("%b    %b    %b    %b    %b \n ____________________ \n",i[3],i[2],i[1], i[0],(i[3]&(~i[2])|(i[1]&(~i[0]))));


end








endmodule