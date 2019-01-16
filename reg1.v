module reg1 (clk,enable,reset,I,O); // 1 bit register
  input clk,enable,reset,I;
  output O;
  and (X1,~reset,clk);
  and (X2,X1,enable);
  and (O,I,X2);
endmodule
