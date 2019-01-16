module fa (I1,I2,Cin,S,Cout); // 1 bit full adder built structurally from primitive gates
  input I1,I2,Cin;
  output S,Cout;
  xor M1 (S, I1, I2, Cin);
  and M2 (X1, I1, I2);
  and M3 (X2, I2, Cin);
  and M4 (X3, Cin, I1);
  or M5 (Cout, X1, X2, X3);
endmodule