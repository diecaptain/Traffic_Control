module mux21b (I1,I2,S,O); // 2:1 single bit multiplexer built from primitive gates
  input I1,I2;
  input S;
  output O;
  and M1 (X1,I1,~S);
  and M2 (X2,I2,S);
  or M3 (O,X1,X2);
endmodule
