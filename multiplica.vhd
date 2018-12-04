LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;


ENTITY multiplica IS
PORT (

	a    : IN     std_logic_vector(15 downto 0);
	b    : IN     std_logic_vector(15 downto 0);
	x    : OUT    std_logic_vector(15 downto 0) 
);
END multiplica;

ARCHITECTURE implements OF multiplica IS
BEGIN 

	x <= a(7 downto 0 ) * b(7 downto 0);

END implements;