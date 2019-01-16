module alu (A,B,C,S,Cout,O); // ALU of the system. 
  input[3:0] A,B;
  input C;
  input[2:0] S;
  output Cout;
  output[3:0] O;
  wire[4:0] X1,X2,X3,X4,X5,X6,X7,X8,X9;
  assign X7 = 5'b00000; // control 6
  assign X8 = 5'b11111; // control 7
  not4_f M1 ( // not function, conrol 0
   .I(A),
   .X(X1)
   );
  fa4_f M2 ( // full adder, control 1
   .I1(A),
   .I2(B),
   .C(C),
   .X(X2)
   );
  and4_f M3 ( // and function, control 2
   .I1(A),
   .I2(B),
   .X(X3)
   );
  or4_f M4 ( // or function, control 3
   .I1(A),
   .I2(B),
   .X(X4)
   );
  xor4_f M5 ( // xor function, control 4
   .I1(A),
   .I2(B),
   .X(X5)
   );
  rot_f M6 ( // shift function, control 5
   .I1(A),
   .I2(C),
   .X(X6)
   );
  mux81 M7 ( // 8:1 mux for calling the needed data
   .X1(X1),
   .X2(X2),
   .X3(X3),
   .X4(X4),
   .X5(X5),
   .X6(X6),
   .X7(X7),
   .X8(X8),
   .S1(S[0]),
   .S2(S[1]),
   .S3(S[2]),
   .Y(X9)
   );
  buf541 M8 ( // reduction buffer
   .I(X9),
   .Cout(Cout),
   .O(O)
   );
 endmodule
