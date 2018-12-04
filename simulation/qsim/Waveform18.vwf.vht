-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/04/2018 16:31:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CONTROL16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CONTROL16_vhd_vec_tst IS
END CONTROL16_vhd_vec_tst;
ARCHITECTURE CONTROL16_arch OF CONTROL16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL DesvioCondicional : STD_LOGIC;
SIGNAL EscReg : STD_LOGIC;
SIGNAL MemParaReg : STD_LOGIC;
SIGNAL opcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL read_or_write : STD_LOGIC;
SIGNAL ula_opcode : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ulaFont : STD_LOGIC;
COMPONENT CONTROL16
	PORT (
	clk : IN STD_LOGIC;
	DesvioCondicional : OUT STD_LOGIC;
	EscReg : OUT STD_LOGIC;
	MemParaReg : OUT STD_LOGIC;
	opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	read_or_write : OUT STD_LOGIC;
	ula_opcode : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ulaFont : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CONTROL16
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	DesvioCondicional => DesvioCondicional,
	EscReg => EscReg,
	MemParaReg => MemParaReg,
	opcode => opcode,
	read_or_write => read_or_write,
	ula_opcode => ula_opcode,
	ulaFont => ulaFont
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;
-- opcode[3]
t_prcs_opcode_3: PROCESS
BEGIN
	opcode(3) <= '0';
	WAIT FOR 800000 ps;
	opcode(3) <= '1';
WAIT;
END PROCESS t_prcs_opcode_3;
-- opcode[2]
t_prcs_opcode_2: PROCESS
BEGIN
	opcode(2) <= '0';
	WAIT FOR 400000 ps;
	opcode(2) <= '1';
	WAIT FOR 400000 ps;
	opcode(2) <= '0';
WAIT;
END PROCESS t_prcs_opcode_2;
-- opcode[1]
t_prcs_opcode_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		opcode(1) <= '0';
		WAIT FOR 200000 ps;
		opcode(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	opcode(1) <= '0';
WAIT;
END PROCESS t_prcs_opcode_1;
-- opcode[0]
t_prcs_opcode_0: PROCESS
BEGIN
LOOP
	opcode(0) <= '0';
	WAIT FOR 100000 ps;
	opcode(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_opcode_0;
END CONTROL16_arch;
