### Simulation and Design of 16-bit ALU using Verilog


This project implements and simulates a **16-bit Arithmetic Logic Unit (ALU)** using **Verilog**. The ALU performs arithmetic and logical operations on two 16-bit inputs based on a control signal and produces a 16-bit output along with a zero flag.

## Features

* Arithmetic operations: **Addition, Subtraction**
* Logical operations: **AND, OR, XOR, NOT**
* Shift operations: **Left Shift, Right Shift**
* Comparison: **Set Less Than (SLT)**
* **Zero flag generation**

## Files

* `alu16.v` – Verilog module for the 16-bit ALU
* `alu16_tb.v` – Testbench used for simulation

## Tools Used

* Verilog HDL
* Xilinx Vivado / ModelSim for simulation

## ALU Operations

| ALU_Sel | Operation     |
| ------- | ------------- |
| 0000    | Addition      |
| 0001    | Subtraction   |
| 0010    | AND           |
| 0011    | OR            |
| 0100    | XOR           |
| 0101    | NOT           |
| 0110    | Shift Left    |
| 0111    | Shift Right   |
| 1000    | Set Less Than |

## Example Simulation Output

For inputs:
A = 10
B = 5

| ALU_Sel | Operation   | Output       |
| ------- | ----------- | ------------ |
| 0000    | ADD         | 15           |
| 0001    | SUB         | 5            |
| 0010    | AND         | 0            |
| 0011    | OR          | 15           |
| 0100    | XOR         | 15           |
| 0101    | NOT         | 65525 (FFF5) |
| 0110    | Shift Left  | 20           |
| 0111    | Shift Right | 5            |
| 1000    | SLT         | 0            |


