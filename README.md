# VHDL_LogicalEquationSim

Author: Leo Martinez III - [LinkedIn](https://www.linkedin.com/in/leo-martinez-iii/)

Contact: [leo.martinez@students.tamuk.edu](mailto:leo.martinez@students.tamuk.edu)

Created: Fall 2022

A simple program written in VHDL used to simulate/solve the outputs of two separate logical equations both in SOP and POS simultaneously. The program also utilizes a different architectural design type for each function. (DataFlow and Behavorial Arch types)
The following functions were used for the program: F1 = W'X'Z'+W'XZ+WYZ'+WXY' (SOP)  | F2 = (W+Z')(W'+X'+Y)(W'+X+Y'+Z) (POS)
The code was written in VHDL using ModelSim Altera and includes a testbench along with a Macro .do file to run a wave simulation with ease.
