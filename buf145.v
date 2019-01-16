module buf145 (C,I,O); // buffer which concatenates 1,4 bits into 5 bits
  input C;
  input[3:0] I;
  output[4:0] O;
  assign O = {C,I[3:0]};
endmodule
