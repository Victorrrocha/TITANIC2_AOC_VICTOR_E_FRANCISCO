LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
Use Ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_arith.ALL;

entity SOMA16BITS is 
port(
	A, B	: in 	std_logic_vector(15 downto 0);
	sum	: out std_logic_vector(15 downto 0)
);
end entity SOMA16BITS;

architecture adder_bh of SOMA16BITS is
begin 
	
	sum <= A + B;
	
end adder_bh;