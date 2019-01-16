module system (clk,enable,reset,A,B,C,S,Cout,O); // final complete structure
  input clk,enable,reset;
  input[3:0] A,B;
  input C;
  input[2:0] S;
  output Cout;
  output[3:0] O;
  wire[3:0] X1,X2,X5;
  wire X3,X4;
  reg4 M1 ( // 4 bit register for input A
   .clk(clk),
   .enable(enable),
   .reset(reset),
   .I(A),
   .O(X1)
   );
  reg4 M2 ( // 4 bit register for input B
   .clk(clk),
   .enable(enable),
   .reset(reset),
   .I(B),
   .O(X2)
   );
  reg1 M3 ( // 1 bit register for input C
   .clk(clk),
   .enable(enable),
   .reset(reset),
   .I(C),
   .O(X3)
   );
  alu M4 ( // importing the ALU structure
   .A(X1),
   .B(X2),
   .C(X3),
   .S(S),
   .Cout(X4),
   .O(X5)
   );
  reg1 M5 ( // 1 bit register for Cout
   .clk(clk),
   .enable(enable),
   .reset(reset),
   .I(X4),
   .O(Cout)
   );
  reg4 M6 ( // 4 bit register for the out value
   .clk(clk),
   .enable(enable),
   .reset(reset),
   .I(X5),
   .O(O)
   );
 endmodule
