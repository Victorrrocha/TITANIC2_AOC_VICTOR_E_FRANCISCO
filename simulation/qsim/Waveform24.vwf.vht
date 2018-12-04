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
-- Generated on "12/04/2018 17:39:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          REGBANK16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY REGBANK16_vhd_vec_tst IS
END REGBANK16_vhd_vec_tst;
ARCHITECTURE REGBANK16_arch OF REGBANK16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ReadData1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ReadData2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ReadReg1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ReadReg2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RegWrite : STD_LOGIC;
SIGNAL WriteData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL WriteReg : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT REGBANK16
	PORT (
	ReadData1 : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	ReadData2 : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	ReadReg1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ReadReg2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	RegWrite : IN STD_LOGIC;
	WriteData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	WriteReg : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : REGBANK16
	PORT MAP (
-- list connections between master ports and signals
	ReadData1 => ReadData1,
	ReadData2 => ReadData2,
	ReadReg1 => ReadReg1,
	ReadReg2 => ReadReg2,
	RegWrite => RegWrite,
	WriteData => WriteData,
	WriteReg => WriteReg
	);
END REGBANK16_arch;
