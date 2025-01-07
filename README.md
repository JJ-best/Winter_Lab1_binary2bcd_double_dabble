In this lab, we need to run the HLS simulation for C++ code, and then implement the same funtion with verilog code.

binary2bcd_double_dabble will get 8-bits binary input, then gives 8-bits packed BCD outputs(00\~99) and 16-bits unpacked BCD outputs(0000\~0909). 

The testbench should be time independent, which means that the testing input should be independent with timne, it should be event trigger(in this lab, it's clock trigger).
