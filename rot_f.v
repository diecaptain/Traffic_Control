module rot_f (I1,I2,X); // final shift circuit
  input[3:0] I1;
  input I2;
  output[4:0] X;
  wire[3:0] Z1;
  wire Z2; // importing shift circuit and concatenation buffer
  rot M1 (
   .I1(I1),
   .I2(I2),
   .O(Z1),
   .Cout(Z2)
   );
  buf145 M2 (
   .C(Z2),
   .I(Z1),
   .O(X)
   );
 endmodule
