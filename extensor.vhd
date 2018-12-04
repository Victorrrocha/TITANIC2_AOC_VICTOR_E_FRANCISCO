library	ieee;
use ieee.std_logic_1164.all;

entity extensor is
	port (
	
		a        : in  std_logic_vector( 3 downto 0);
		sinal_ex : out std_logic_vector(15 downto 0)
	);
end extensor;

architecture implements of extensor is 
begin 
		sinal_ex <= "000000000000" & a;
	
end implements;