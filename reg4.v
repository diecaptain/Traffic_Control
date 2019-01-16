module reg4 (clk,enable,reset,I,O); // 4 bit register constructed from 1 bit registers
  input clk,enable,reset;
  input[3:0] I;
  output[3:0] O;
  // calling the structure of 1 bit register
  reg1 M1 (
   .clk(clk),
   .enable(enable),
   .reset(reset),
   .I(I[0]),
   .O(O[0])
   );
  reg1 M2 (
   .clk(clk),
   .enable(enable),
   .reset(reset),
   .I(I[1]),
   .O(O[1])
   );
  reg1 M3 (
   .clk(clk),
   .enable(enable),
   .reset(reset),
   .I(I[2]),
   .O(O[2])
   );
  reg1 M4 (
   .clk(clk),
   .enable(enable),
   .reset(reset),
   .I(I[3]),
   .O(O[3])
   );
 endmodule