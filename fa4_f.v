module fa4_f (I1,I2,C,X); // full adder structure for the final circuit
  input[3:0] I1,I2;
  input C;
  output[4:0] X;
  wire[3:0] Z1;
  wire Z2; // calling structures of 4-bit full adder and concatenation buffer
  fa4 M1 (
   .I1(I1),
   .I2(I2),
   .C(C),
   .S(Z1),
   .Cout(Z2)
   );
  buf145 M2 (
   .C(Z2),
   .I(Z1),
   .O(X)
   );
 endmodule
