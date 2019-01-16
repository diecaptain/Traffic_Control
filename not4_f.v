module not4_f (I,X); // final not gate for the circuit
  input[3:0] I;
  output[4:0] X;
  wire[3:0] Z1;
  assign Z2 = 1'b0; // importing structures of 4-bit not gate and concatenation buffer
  pvs_not M1 (
   .I(I),
   .O(Z1)
   );
  buf145 M2 (
   .C(Z2),
   .I(Z1),
   .O(X)
   );
 endmodule
