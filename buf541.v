module buf541 (I,Cout,O); // buffer which reduces 5 bits into 1 and 4 bit values
  input[4:0] I;
  output Cout;
  output[3:0] O;
  assign Cout = I[4];
  assign O = I[3:0];
endmodule