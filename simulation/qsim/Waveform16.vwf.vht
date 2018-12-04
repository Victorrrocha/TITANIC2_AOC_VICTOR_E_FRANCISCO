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
-- Generated on "12/04/2018 15:38:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Ula
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Ula_vhd_vec_tst IS
END Ula_vhd_vec_tst;
ARCHITECTURE Ula_arch OF Ula_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL op : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL zeroo : STD_LOGIC;
COMPONENT Ula
	PORT (
	a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	op : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	s : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	zeroo : INOUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Ula
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	op => op,
	s => s,
	zeroo => zeroo
	);
-- a[15]
t_prcs_a_15: PROCESS
BEGIN
	a(15) <= '0';
WAIT;
END PROCESS t_prcs_a_15;
-- a[14]
t_prcs_a_14: PROCESS
BEGIN
	a(14) <= '0';
WAIT;
END PROCESS t_prcs_a_14;
-- a[13]
t_prcs_a_13: PROCESS
BEGIN
	a(13) <= '0';
WAIT;
END PROCESS t_prcs_a_13;
-- a[12]
t_prcs_a_12: PROCESS
BEGIN
	a(12) <= '0';
WAIT;
END PROCESS t_prcs_a_12;
-- a[11]
t_prcs_a_11: PROCESS
BEGIN
	a(11) <= '0';
WAIT;
END PROCESS t_prcs_a_11;
-- a[10]
t_prcs_a_10: PROCESS
BEGIN
	a(10) <= '0';
WAIT;
END PROCESS t_prcs_a_10;
-- a[9]
t_prcs_a_9: PROCESS
BEGIN
	a(9) <= '0';
WAIT;
END PROCESS t_prcs_a_9;
-- a[8]
t_prcs_a_8: PROCESS
BEGIN
	a(8) <= '0';
WAIT;
END PROCESS t_prcs_a_8;
-- a[7]
t_prcs_a_7: PROCESS
BEGIN
	a(7) <= '0';
WAIT;
END PROCESS t_prcs_a_7;
-- a[6]
t_prcs_a_6: PROCESS
BEGIN
	a(6) <= '0';
WAIT;
END PROCESS t_prcs_a_6;
-- a[5]
t_prcs_a_5: PROCESS
BEGIN
	a(5) <= '0';
WAIT;
END PROCESS t_prcs_a_5;
-- a[4]
t_prcs_a_4: PROCESS
BEGIN
	a(4) <= '0';
	WAIT FOR 540000 ps;
	a(4) <= '1';
WAIT;
END PROCESS t_prcs_a_4;
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= '0';
	WAIT FOR 60000 ps;
	a(3) <= '1';
	WAIT FOR 480000 ps;
	a(3) <= '0';
WAIT;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	a(2) <= '1';
	WAIT FOR 60000 ps;
	a(2) <= '0';
	WAIT FOR 240000 ps;
	a(2) <= '1';
	WAIT FOR 240000 ps;
	a(2) <= '0';
	WAIT FOR 240000 ps;
	a(2) <= '1';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
	a(1) <= '1';
	WAIT FOR 60000 ps;
	FOR i IN 1 TO 3
	LOOP
		a(1) <= '0';
		WAIT FOR 120000 ps;
		a(1) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	a(1) <= '0';
	WAIT FOR 120000 ps;
	a(1) <= '1';
WAIT;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		a(0) <= '1';
		WAIT FOR 60000 ps;
		a(0) <= '0';
		WAIT FOR 60000 ps;
	END LOOP;
	a(0) <= '1';
WAIT;
END PROCESS t_prcs_a_0;
-- b[15]
t_prcs_b_15: PROCESS
BEGIN
	b(15) <= '0';
WAIT;
END PROCESS t_prcs_b_15;
-- b[14]
t_prcs_b_14: PROCESS
BEGIN
	b(14) <= '0';
WAIT;
END PROCESS t_prcs_b_14;
-- b[13]
t_prcs_b_13: PROCESS
BEGIN
	b(13) <= '0';
WAIT;
END PROCESS t_prcs_b_13;
-- b[12]
t_prcs_b_12: PROCESS
BEGIN
	b(12) <= '0';
WAIT;
END PROCESS t_prcs_b_12;
-- b[11]
t_prcs_b_11: PROCESS
BEGIN
	b(11) <= '0';
WAIT;
END PROCESS t_prcs_b_11;
-- b[10]
t_prcs_b_10: PROCESS
BEGIN
	b(10) <= '0';
WAIT;
END PROCESS t_prcs_b_10;
-- b[9]
t_prcs_b_9: PROCESS
BEGIN
	b(9) <= '0';
WAIT;
END PROCESS t_prcs_b_9;
-- b[8]
t_prcs_b_8: PROCESS
BEGIN
	b(8) <= '0';
WAIT;
END PROCESS t_prcs_b_8;
-- b[7]
t_prcs_b_7: PROCESS
BEGIN
	b(7) <= '0';
WAIT;
END PROCESS t_prcs_b_7;
-- b[6]
t_prcs_b_6: PROCESS
BEGIN
	b(6) <= '0';
WAIT;
END PROCESS t_prcs_b_6;
-- b[5]
t_prcs_b_5: PROCESS
BEGIN
	b(5) <= '0';
WAIT;
END PROCESS t_prcs_b_5;
-- b[4]
t_prcs_b_4: PROCESS
BEGIN
	b(4) <= '0';
	WAIT FOR 520000 ps;
	b(4) <= '1';
WAIT;
END PROCESS t_prcs_b_4;
-- b[3]
t_prcs_b_3: PROCESS
BEGIN
	b(3) <= '0';
	WAIT FOR 200000 ps;
	b(3) <= '1';
	WAIT FOR 320000 ps;
	b(3) <= '0';
	WAIT FOR 320000 ps;
	b(3) <= '1';
WAIT;
END PROCESS t_prcs_b_3;
-- b[2]
t_prcs_b_2: PROCESS
BEGIN
	b(2) <= '0';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 3
	LOOP
		b(2) <= '1';
		WAIT FOR 160000 ps;
		b(2) <= '0';
		WAIT FOR 160000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_b_2;
-- b[1]
t_prcs_b_1: PROCESS
BEGIN
	b(1) <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 6
	LOOP
		b(1) <= '0';
		WAIT FOR 80000 ps;
		b(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_b_1;
-- b[0]
t_prcs_b_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		b(0) <= '1';
		WAIT FOR 40000 ps;
		b(0) <= '0';
		WAIT FOR 40000 ps;
	END LOOP;
	b(0) <= '1';
WAIT;
END PROCESS t_prcs_b_0;
-- op[7]
t_prcs_op_7: PROCESS
BEGIN
	op(7) <= '0';
WAIT;
END PROCESS t_prcs_op_7;
-- op[6]
t_prcs_op_6: PROCESS
BEGIN
	op(6) <= '0';
WAIT;
END PROCESS t_prcs_op_6;
-- op[5]
t_prcs_op_5: PROCESS
BEGIN
	op(5) <= '0';
WAIT;
END PROCESS t_prcs_op_5;
-- op[4]
t_prcs_op_4: PROCESS
BEGIN
	op(4) <= '1';
WAIT;
END PROCESS t_prcs_op_4;
-- op[3]
t_prcs_op_3: PROCESS
BEGIN
	op(3) <= '0';
WAIT;
END PROCESS t_prcs_op_3;
-- op[2]
t_prcs_op_2: PROCESS
BEGIN
	op(2) <= '0';
WAIT;
END PROCESS t_prcs_op_2;
-- op[1]
t_prcs_op_1: PROCESS
BEGIN
	op(1) <= '0';
WAIT;
END PROCESS t_prcs_op_1;
-- op[0]
t_prcs_op_0: PROCESS
BEGIN
	op(0) <= '0';
WAIT;
END PROCESS t_prcs_op_0;

-- zeroo
t_prcs_zeroo: PROCESS
BEGIN
	zeroo <= 'Z';
WAIT;
END PROCESS t_prcs_zeroo;
END Ula_arch;
