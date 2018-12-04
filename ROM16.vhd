LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ROM16 IS 
PORT(
		PC_address: 	IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		INSTRUCTION: 	OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END ROM16;

ARCHITECTURE ROM_BH OF ROM16 IS

	CONSTANT instruc0:  STD_LOGIC_VECTOR (15 DOWNTO 0) := "0000000000000001";
	CONSTANT instruc1:  STD_LOGIC_VECTOR (15 DOWNTO 0) := "0000000000000011";
	CONSTANT instruc2:  STD_LOGIC_VECTOR (15 DOWNTO 0) := "0000000000000101";
	CONSTANT instruc3:  STD_LOGIC_VECTOR (15 DOWNTO 0) := "0000000000001001";
	CONSTANT instruc4:  STD_LOGIC_VECTOR (15 DOWNTO 0) := "0000000000100001";
	CONSTANT instruc5:  STD_LOGIC_VECTOR (15 DOWNTO 0) := "0000000001000001";
	CONSTANT instruc6:  STD_LOGIC_VECTOR (15 DOWNTO 0) := "0000000010000001";
	CONSTANT instruc7:  STD_LOGIC_VECTOR (15 DOWNTO 0) := "0000000100000001";
	CONSTANT instruc8:  STD_LOGIC_VECTOR (15 DOWNTO 0) := "0000001000000001";
	CONSTANT instruc9:  STD_LOGIC_VECTOR (15 DOWNTO 0) := "0000010000000001";
	CONSTANT instruc10: STD_LOGIC_VECTOR (15 DOWNTO 0) := "0000100000000001";
	CONSTANT instruc11: STD_LOGIC_VECTOR (15 DOWNTO 0) := "0001000000000001";
	CONSTANT instruc12: STD_LOGIC_VECTOR (15 DOWNTO 0) := "0010000000000001";
	CONSTANT instruc13: STD_LOGIC_VECTOR (15 DOWNTO 0) := "0100000000000001";
	CONSTANT instruc14: STD_LOGIC_VECTOR (15 DOWNTO 0) := "0110000000000001";
	CONSTANT instruc15: STD_LOGIC_VECTOR (15 DOWNTO 0) := "0111000000000001";
	
TYPE ROM_ARRAY IS ARRAY (NATURAL RANGE <>) OF STD_LOGIC_VECTOR (15 DOWNTO 0);
CONSTANT ROM: ROM_ARRAY := (
	instruc0, instruc1, instruc2, instruc3,
	instruc4, instruc5, instruc6, instruc7,
	instruc8, instruc9, instruc10, instruc11,
	instruc12, instruc13, instruc14,instruc15
);

BEGIN 
	PROCESS(PC_address)
	VARIABLE j: integer;
	BEGIN
		j := conv_integer(PC_address);
		INSTRUCTION <= ROM(j);
	END PROCESS;
END ROM_BH;