module mux21 (I1,I2,S,O); // 2:1 5 bit multiplexer built from 1 bit 2:1 multiplexers
  input[4:0] I1,I2;
  input S;
  output[4:0] O; // importing the structures of 2:1 1 bit multiplexers
  mux21b M1 (
    .I1(I1[0]),
    .I2(I2[0]),
    .S(S),
    .O(O[0])
    );
  mux21b M2 (
    .I1(I1[1]),
    .I2(I2[1]),
    .S(S),
    .O(O[1])
    );
  mux21b M3 (
    .I1(I1[2]),
    .I2(I2[2]),
    .S(S),
    .O(O[2])
    );
  mux21b M4 (
    .I1(I1[3]),
    .I2(I2[3]),
    .S(S),
    .O(O[3])
    );
    mux21b M5 (
    .I1(I1[4]),
    .I2(I2[4]),
    .S(S),
    .O(O[4])
    );
  endmodule