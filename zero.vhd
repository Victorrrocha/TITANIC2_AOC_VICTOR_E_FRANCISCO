LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY zero IS
PORT (

	a  : IN  std_logic_vector(15 downto 0);
	cin: IN std_logic;
	x  : INOUT std_logic 
);
END zero;

ARCHITECTURE implements OF zero IS
BEGIN 

	process(a, cin) begin
		if (cin = '0') then
			if (a = "0000000000000000") then
				x <= '1';
			else 
				x <= '0';
			end if;
		else
			if (a = "0000000000000000") then
				x <= '0';
			else 
				x <= '1';
			end if;
		end if;
	end process;
		
END implements;