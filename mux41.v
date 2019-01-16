module mux41 (I1,I2,I3,I4,S1,S2,O); // 4:1 multiplexer with 2 select lines made from 2:1 multiplexers
  input[4:0] I1,I2,I3,I4;
  input S1,S2;
  output[4:0] O;
  wire[4:0] X1,X2;
  mux21 M1 (
   .I1(I1),
   .I2(I2),
   .S(S1),
   .O(X1)
   );
  mux21 M2 (
   .I1(I3),
   .I2(I4),
   .S(S1),
   .O(X2)
   );
  mux21 M3 (
   .I1(X1),
   .I2(X2),
   .S(S2),
   .O(O)
   );
 endmodule
