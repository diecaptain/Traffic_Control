module pvs_not (I,O); // 4 bit not gate
  input[3:0] I;
  output[3:0] O;
  not M1 (O[0],I[0]);
  not M2 (O[1],I[1]);
  not M3 (O[2],I[2]);
  not M4 (O[3],I[3]);
endmodule