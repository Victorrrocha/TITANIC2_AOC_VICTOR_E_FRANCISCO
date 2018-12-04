LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Multiplexer_5pos IS
PORT (

	a, b, c, d, e, f  : IN  std_logic_vector(15 downto 0);
	seletor           : IN  std_logic_vector( 2 downto 0);
	x                 : OUT std_logic_vector(15 downto 0)

);
END Multiplexer_5pos;

ARCHITECTURE implements OF Multiplexer_5pos IS
signal k : std_logic_vector(15 downto 0);
BEGIN

	with seletor select
		x <=  a when "000",
				b when "001",
				c when "010",
				d when "011",
				e when "100",
				f when "101",
				k when others;

END implements;