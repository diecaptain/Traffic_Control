module pvs_and (I1,I2,O); // 4 bit and gate
  input[3:0] I1,I2;
  output[3:0] O;
  and M1 (O[0],I1[0],I2[0]);
  and M2 (O[1],I1[1],I2[1]);
  and M3 (O[2],I1[2],I2[2]);
  and M4 (O[3],I1[3],I2[3]);
endmodule

