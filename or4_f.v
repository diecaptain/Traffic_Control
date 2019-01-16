module or4_f (I1,I2,X); // or gate for the final circuit
  input[3:0] I1,I2;
  output[4:0] X;
  wire[3:0] Z1;
  assign Z2 = 1'b0; // importing structures of 4-bit or gate and concatenation buffer
  pvs_or M1 (
   .I1(I1),
   .I2(I2),
   .O(Z1)
   );
  buf145 M2 (
   .C(Z2),
   .I(Z1),
   .O(X)
   );
 endmodule
