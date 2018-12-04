LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity BranchEq is 
port (
	A  	: in   	std_ulogic_vector(15 downto 0);
	B     : in 		std_ulogic_vector(15 downto 0);
	zero 	: out 	std_ulogic
);
end BranchEq;




architecture adder_bh of BranchEq is
begin 
		process(A,B)
		begin
			if (A = B) then
				zero <= '1';
			else
				zero <= '0';
			end if;
		end process;
	
end adder_bh;