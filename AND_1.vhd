library	ieee;
use ieee.std_logic_1164.all;

entity AND_1 is
	port (
	
		a, b  		: in  std_logic;
		output      : out std_logic
	);
end AND_1;

architecture implements of AND_1 is 
begin 

	output <= a AND b;	
	
end implements;