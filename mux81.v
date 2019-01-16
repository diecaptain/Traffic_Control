module mux81 (X1,X2,X3,X4,X5,X6,X7,X8,S1,S2,S3,Y); // 8:1 mux with 3 select lines constructed from 4:1 and 2:1 mux
  input[4:0] X1,X2,X3,X4,X5,X6,X7,X8;
  input S1,S2,S3;
  output[4:0] Y;
  wire[4:0]Z1,Z2; // importing structures of 4:1 and 2:1 mux
  mux41 M1 (
   .I1(X1),
   .I2(X2),
   .I3(X3),
   .I4(X4),
   .S1(S1),
   .S2(S2),
   .O(Z1)
   );
  mux41 M2 (
   .I1(X5),
   .I2(X6),
   .I3(X7),
   .I4(X8),
   .S1(S1),
   .S2(S2),
   .O(Z2)
   );
   mux21 M3 (
    .I1(Z1),
    .I2(Z2),
    .S(S3),
    .O(Y)
    );
  endmodule