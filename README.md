This project is designed as a Shift Register with variable modes of operation. Load signal, clock signal, reset, 3 bit data input, selection line input are the inputs given to the shift register. A 3 bit ouput pin is also associated in the register. A multiplexer is used to control the performance of different operations. If load signal is high the input is parallely transferred to the output. The reset signal sets the output to zero. A 4:1 mux is used to control the shifting operations. The selection line input in this register is having four cases.
1. for case 00 it shifts the output to left.
2. for case 01 it shifts the output to right.
3. for case 10 it rotates the output to left.
4. for case 11 it rotates the output to right.
