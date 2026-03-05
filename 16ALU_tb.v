module alu16_tb;

reg [15:0] A,B;
reg [3:0] ALU_Sel;
wire [15:0] ALU_Out;
wire Zero;

alu16 uut(
.A(A),
.B(B),
.ALU_Sel(ALU_Sel),
.ALU_Out(ALU_Out),
.Zero(Zero)
);

initial
begin

A = 16'd10; 
B = 16'd5;

ALU_Sel = 4'b0000; #10; // ADD
ALU_Sel = 4'b0001; #10; // SUB
ALU_Sel = 4'b0010; #10; // AND
ALU_Sel = 4'b0011; #10; // OR
ALU_Sel = 4'b0100; #10; // XOR
ALU_Sel = 4'b0101; #10; // NOT
ALU_Sel = 4'b0110; #10; // Shift left
ALU_Sel = 4'b0111; #10; // Shift right
ALU_Sel = 4'b1000; #10; // SLT

#20 $finish;

end

endmodule
