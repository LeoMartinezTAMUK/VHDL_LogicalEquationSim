-- Created by Leo Martinez III in Fall 2022
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LogicalEquationSim is
	port(W,X,Y,Z: in STD_LOGIC;
			F1, F2: out STD_LOGIC);
end LogicalEquationSim;


 --F1 = W'X'Z'+W'XZ+WYZ'+WXY' | F2 = (W+Z')(W'+X'+Y)(W'+X+Y'+Z)
architecture arch_behav_dataflow of LogicalEquationSim is
	signal TEMP1, TEMP2, TEMP3: STD_LOGIC;
	begin
	  
	  --F2 expressed in Behavorial Architecture type
	  F2 <= (TEMP1 AND TEMP2 AND TEMP3);
		TEMP1 <= (W OR NOT(Z));
		TEMP2 <= (NOT(W) OR NOT(X) OR Y);
		TEMP3 <= (NOT(W) OR X OR NOT(Y) OR Z);
	
	process(W,X,Y,Z)
	
	begin
	
	--F1 expressed in DataFlow Architecture type
	if (W = '0' and X = '0' and Y = '0' and Z = '0') then
	F1 <= '1';
	elsif (W = '0' and X = '0' and Y = '1' and Z = '0') then
	F1 <= '1';
	elsif (W = '0' and X = '1' and Y = '0' and Z = '1') then
	F1 <= '1';
	elsif (W = '0' and X = '1' and Y = '1' and Z = '1') then
	F1 <= '1';
	elsif (W = '1' and X = '0' and Y = '1' and Z = '0') then
	F1 <= '1';
	elsif (W = '1' and X = '1' and Y = '0' and Z = '0') then
	F1 <= '1';
	elsif (W = '1' and X = '1' and Y = '0' and Z = '1') then
	F1 <= '1';
	elsif (W = '1' and X = '1' and Y = '1' and Z = '0') then
	F1 <= '1';
	else 
	F1 <= '0';
	
	end if;
	end process;
  end;