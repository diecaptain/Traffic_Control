module pvs_xor (I1,I2,O); // 4 bit xor gate
  input[3:0] I1,I2;
  output[3:0] O;
  xor M1 (O[0],I1[0],I2[0]);
  xor M2 (O[1],I1[1],I2[1]);
  xor M3 (O[2],I1[2],I2[2]);
  xor M4 (O[3],I1[3],I2[3]);
endmodule