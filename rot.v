module rot (I1,I2,O,Cout); // left shift program
  input[3:0] I1;
  input I2;
  output[3:0] O;
  output Cout;
  assign Cout = I1[3];
  assign O = {I1[2:0],I2};
endmodule
