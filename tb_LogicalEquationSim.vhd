library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_LogicalEquationSim is
end tb_LogicalEquationSim;

architecture testbench of tb_LogicalEquationSim is

component LogicalEquationSim is
	port(W,X,Y,Z: in STD_LOGIC;
			F1, F2: out STD_LOGIC);
end component;

signal W,X,Y,Z,F1,F2: STD_LOGIC;

begin
	UUT: LogicalEquationSim
			port map(W,X,Y,Z,F1,F2);
inputs : process
begin
		W <='0'; X <='0'; Y <='0'; Z <='0'; wait for 100 ns;
		W <='0'; X <='0'; Y <='0'; Z <='1'; wait for 100 ns;
		W <='0'; X <='0'; Y <='1'; Z <='0'; wait for 100 ns;
		W <='0'; X <='0'; Y <='1'; Z <='1'; wait for 100 ns;
		W <='0'; X <='1'; Y <='0'; Z <='0'; wait for 100 ns;
		W <='0'; X <='1'; Y <='0'; Z <='1'; wait for 100 ns;
		W <='0'; X <='1'; Y <='1'; Z <='0'; wait for 100 ns;
		W <='0'; X <='1'; Y <='1'; Z <='1'; wait for 100 ns;
		W <='1'; X <='0'; Y <='0'; Z <='0'; wait for 100 ns;
		W <='1'; X <='0'; Y <='0'; Z <='1'; wait for 100 ns;
		W <='1'; X <='0'; Y <='1'; Z <='0'; wait for 100 ns;
		W <='1'; X <='0'; Y <='1'; Z <='1'; wait for 100 ns;
		W <='1'; X <='1'; Y <='0'; Z <='0'; wait for 100 ns;
		W <='1'; X <='1'; Y <='0'; Z <='1'; wait for 100 ns;
		W <='1'; X <='1'; Y <='1'; Z <='0'; wait for 100 ns;
		W <='1'; X <='1'; Y <='1'; Z <='1'; wait for 100 ns;
		wait;
		
end process;

end;
