library	ieee;
use ieee.std_logic_1164.all;

entity mux1 is
	port (
	
		a, b  		: in  std_logic_vector(15 downto 0);
		selector    : in  std_logic;
		x           : out std_logic_vector(15 downto 0)
	);
end mux1;

architecture implements of mux1 is 
begin 

	with selector select
		x <=  a when '0',
				b when '1';		
	
end implements;