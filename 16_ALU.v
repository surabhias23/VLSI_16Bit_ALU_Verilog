module alu16(
input [15:0] A,
input [15:0] B,
input [3:0] ALU_Sel,
output reg [15:0] ALU_Out,
output Zero
);

always @(*) 
begin
case(ALU_Sel)

4'b0000: ALU_Out = A + B; // Addition
4'b0001: ALU_Out = A - B; // Subtraction
4'b0010: ALU_Out = A & B; // AND
4'b0011: ALU_Out = A | B; // OR
4'b0100: ALU_Out = A ^ B; // XOR
4'b0101: ALU_Out = ~A; // NOT
4'b0110: ALU_Out = A << 1; // Shift Left
4'b0111: ALU_Out = A >> 1; // Shift Right
4'b1000: ALU_Out = (A < B) ? 16'b1 : 16'b0; // Less Than

default: ALU_Out = 16'b0;

endcase
end

assign Zero = (ALU_Out == 16'b0);

endmodule
