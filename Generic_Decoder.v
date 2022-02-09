
module Generic_Decoder (IGEN , OGEN
);
parameter n;
input wire [n-1:0] IGEN;
output reg [2**n-1:0] OGEN;
always @(IGEN)
begin
    OGEN<=(1<<IGEN);
end
    
endmodule


module Generic_tb();

reg [3:0] IGEN;
wire [15:0] OGEN;


Generic_Decoder #(4) obj(IGEN,OGEN);

initial begin

IGEN<=3;
#5
IGEN<=2;
#5
IGEN <=7;



end




endmodule