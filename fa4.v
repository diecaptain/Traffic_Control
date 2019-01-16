module fa4 (I1,I2,C,S,Cout); // 4 bit full order built structurally from 1-bit full adder
  input[3:0] I1,I2;
  input C;
  output[3:0] S;
  output Cout;
  wire X1, X2, X3;
  // 1 bit full adders structural calling
  fa M1 (
   .I1(I1[0]),
   .I2(I2[0]),
   .Cin(C),
   .S(S[0]),
   .Cout(X1)
   );
  fa M2 (
   .I1(I1[1]),
   .I2(I2[1]),
   .Cin(X1),
   .S(S[1]),
   .Cout(X2)
   );
  fa M3 (
   .I1(I1[2]),
   .I2(I2[2]),
   .Cin(X2),
   .S(S[2]),
   .Cout(X3)
   );
  fa M4 (
   .I1(I1[3]),
   .I2(I2[3]),
   .Cin(X3),
   .S(S[3]),
   .Cout(Cout)
   );
endmodule
