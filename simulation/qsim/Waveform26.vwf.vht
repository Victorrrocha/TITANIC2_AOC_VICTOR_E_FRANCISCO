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
-- Generated on "12/04/2018 17:51:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Titanic2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Titanic2_vhd_vec_tst IS
END Titanic2_vhd_vec_tst;
ARCHITECTURE Titanic2_arch OF Titanic2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL test00 : STD_LOGIC;
SIGNAL test01 : STD_LOGIC;
SIGNAL test02 : STD_LOGIC;
SIGNAL test03 : STD_LOGIC;
SIGNAL test04 : STD_LOGIC;
SIGNAL test_enderecoMais2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL test_instrucao : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL test_proxEnderecoOut : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL test_ula_op : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Titanic2
	PORT (
	CLK : IN STD_LOGIC;
	RST : IN STD_LOGIC;
	test00 : INOUT STD_LOGIC;
	test01 : INOUT STD_LOGIC;
	test02 : INOUT STD_LOGIC;
	test03 : INOUT STD_LOGIC;
	test04 : INOUT STD_LOGIC;
	test_enderecoMais2 : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	test_instrucao : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	test_proxEnderecoOut : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	test_ula_op : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Titanic2
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	RST => RST,
	test00 => test00,
	test01 => test01,
	test02 => test02,
	test03 => test03,
	test04 => test04,
	test_enderecoMais2 => test_enderecoMais2,
	test_instrucao => test_instrucao,
	test_proxEnderecoOut => test_proxEnderecoOut,
	test_ula_op => test_ula_op
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
WAIT;
END PROCESS t_prcs_RST;

-- test00
t_prcs_test00: PROCESS
BEGIN
	test00 <= 'Z';
WAIT;
END PROCESS t_prcs_test00;

-- test01
t_prcs_test01: PROCESS
BEGIN
	test01 <= 'Z';
WAIT;
END PROCESS t_prcs_test01;

-- test02
t_prcs_test02: PROCESS
BEGIN
	test02 <= 'Z';
WAIT;
END PROCESS t_prcs_test02;

-- test03
t_prcs_test03: PROCESS
BEGIN
	test03 <= 'Z';
WAIT;
END PROCESS t_prcs_test03;

-- test04
t_prcs_test04: PROCESS
BEGIN
	test04 <= 'Z';
WAIT;
END PROCESS t_prcs_test04;
-- test_enderecoMais2[15]
t_prcs_test_enderecoMais2_15: PROCESS
BEGIN
	test_enderecoMais2(15) <= 'Z';
WAIT;
END PROCESS t_prcs_test_enderecoMais2_15;
-- test_enderecoMais2[14]
t_prcs_test_enderecoMais2_14: PROCESS
BEGIN
	test_enderecoMais2(14) <= 'Z';
WAIT;
END PROCESS t_prcs_test_enderecoMais2_14;
-- test_enderecoMais2[13]
t_prcs_test_enderecoMais2_13: PROCESS
BEGIN
	test_enderecoMais2(13) <= 'Z';
WAIT;
END PROCESS t_prcs_test_enderecoMais2_13;
-- test_enderecoMais2[12]
t_prcs_test_enderecoMais2_12: PROCESS
BEGIN
	test_enderecoMais2(12) <= 'Z';
WAIT;
END PROCESS t_prcs_test_enderecoMais2_12;
-- test_enderecoMais2[11]
t_prcs_test_enderecoMais2_11: PROCESS
BEGIN
	test_enderecoMais2(11) <= 'Z';
WAIT;
END PROCESS t_prcs_test_enderecoMais2_11;
-- test_enderecoMais2[10]
t_prcs_test_enderecoMais2_10: PROCESS
BEGIN
	test_enderecoMais2(10) <= 'Z';
WAIT;
END PROCESS t_prcs_test_enderecoMais2_10;
-- test_enderecoMais2[9]
t_prcs_test_enderecoMais2_9: PROCESS
BEGIN
	test_enderecoMais2(9) <= 'Z';
WAIT;
END PROCESS t_prcs_test_enderecoMais2_9;
-- test_enderecoMais2[8]
t_prcs_test_enderecoMais2_8: PROCESS
BEGIN
	test_enderecoMais2(8) <= 'Z';
WAIT;
END PROCESS t_prcs_test_enderecoMais2_8;
-- test_enderecoMais2[7]
t_prcs_test_enderecoMais2_7: PROCESS
BEGIN
	test_enderecoMais2(7) <= 'Z';
WAIT;
END PROCESS t_prcs_test_enderecoMais2_7;
-- test_enderecoMais2[6]
t_prcs_test_enderecoMais2_6: PROCESS
BEGIN
	test_enderecoMais2(6) <= 'Z';
WAIT;
END PROCESS t_prcs_test_enderecoMais2_6;
-- test_enderecoMais2[5]
t_prcs_test_enderecoMais2_5: PROCESS
BEGIN
	test_enderecoMais2(5) <= 'Z';
WAIT;
END PROCESS t_prcs_test_enderecoMais2_5;
-- test_enderecoMais2[4]
t_prcs_test_enderecoMais2_4: PROCESS
BEGIN
	test_enderecoMais2(4) <= 'Z';
WAIT;
END PROCESS t_prcs_test_enderecoMais2_4;
-- test_enderecoMais2[3]
t_prcs_test_enderecoMais2_3: PROCESS
BEGIN
	test_enderecoMais2(3) <= 'Z';
WAIT;
END PROCESS t_prcs_test_enderecoMais2_3;
-- test_enderecoMais2[2]
t_prcs_test_enderecoMais2_2: PROCESS
BEGIN
	test_enderecoMais2(2) <= 'Z';
WAIT;
END PROCESS t_prcs_test_enderecoMais2_2;
-- test_enderecoMais2[1]
t_prcs_test_enderecoMais2_1: PROCESS
BEGIN
	test_enderecoMais2(1) <= 'Z';
WAIT;
END PROCESS t_prcs_test_enderecoMais2_1;
-- test_enderecoMais2[0]
t_prcs_test_enderecoMais2_0: PROCESS
BEGIN
	test_enderecoMais2(0) <= 'Z';
WAIT;
END PROCESS t_prcs_test_enderecoMais2_0;
-- test_instrucao[15]
t_prcs_test_instrucao_15: PROCESS
BEGIN
	test_instrucao(15) <= 'Z';
WAIT;
END PROCESS t_prcs_test_instrucao_15;
-- test_instrucao[14]
t_prcs_test_instrucao_14: PROCESS
BEGIN
	test_instrucao(14) <= 'Z';
WAIT;
END PROCESS t_prcs_test_instrucao_14;
-- test_instrucao[13]
t_prcs_test_instrucao_13: PROCESS
BEGIN
	test_instrucao(13) <= 'Z';
WAIT;
END PROCESS t_prcs_test_instrucao_13;
-- test_instrucao[12]
t_prcs_test_instrucao_12: PROCESS
BEGIN
	test_instrucao(12) <= 'Z';
WAIT;
END PROCESS t_prcs_test_instrucao_12;
-- test_instrucao[11]
t_prcs_test_instrucao_11: PROCESS
BEGIN
	test_instrucao(11) <= 'Z';
WAIT;
END PROCESS t_prcs_test_instrucao_11;
-- test_instrucao[10]
t_prcs_test_instrucao_10: PROCESS
BEGIN
	test_instrucao(10) <= 'Z';
WAIT;
END PROCESS t_prcs_test_instrucao_10;
-- test_instrucao[9]
t_prcs_test_instrucao_9: PROCESS
BEGIN
	test_instrucao(9) <= 'Z';
WAIT;
END PROCESS t_prcs_test_instrucao_9;
-- test_instrucao[8]
t_prcs_test_instrucao_8: PROCESS
BEGIN
	test_instrucao(8) <= 'Z';
WAIT;
END PROCESS t_prcs_test_instrucao_8;
-- test_instrucao[7]
t_prcs_test_instrucao_7: PROCESS
BEGIN
	test_instrucao(7) <= 'Z';
WAIT;
END PROCESS t_prcs_test_instrucao_7;
-- test_instrucao[6]
t_prcs_test_instrucao_6: PROCESS
BEGIN
	test_instrucao(6) <= 'Z';
WAIT;
END PROCESS t_prcs_test_instrucao_6;
-- test_instrucao[5]
t_prcs_test_instrucao_5: PROCESS
BEGIN
	test_instrucao(5) <= 'Z';
WAIT;
END PROCESS t_prcs_test_instrucao_5;
-- test_instrucao[4]
t_prcs_test_instrucao_4: PROCESS
BEGIN
	test_instrucao(4) <= 'Z';
WAIT;
END PROCESS t_prcs_test_instrucao_4;
-- test_instrucao[3]
t_prcs_test_instrucao_3: PROCESS
BEGIN
	test_instrucao(3) <= 'Z';
WAIT;
END PROCESS t_prcs_test_instrucao_3;
-- test_instrucao[2]
t_prcs_test_instrucao_2: PROCESS
BEGIN
	test_instrucao(2) <= 'Z';
WAIT;
END PROCESS t_prcs_test_instrucao_2;
-- test_instrucao[1]
t_prcs_test_instrucao_1: PROCESS
BEGIN
	test_instrucao(1) <= 'Z';
WAIT;
END PROCESS t_prcs_test_instrucao_1;
-- test_instrucao[0]
t_prcs_test_instrucao_0: PROCESS
BEGIN
	test_instrucao(0) <= 'Z';
WAIT;
END PROCESS t_prcs_test_instrucao_0;
-- test_proxEnderecoOut[15]
t_prcs_test_proxEnderecoOut_15: PROCESS
BEGIN
	test_proxEnderecoOut(15) <= 'Z';
WAIT;
END PROCESS t_prcs_test_proxEnderecoOut_15;
-- test_proxEnderecoOut[14]
t_prcs_test_proxEnderecoOut_14: PROCESS
BEGIN
	test_proxEnderecoOut(14) <= 'Z';
WAIT;
END PROCESS t_prcs_test_proxEnderecoOut_14;
-- test_proxEnderecoOut[13]
t_prcs_test_proxEnderecoOut_13: PROCESS
BEGIN
	test_proxEnderecoOut(13) <= 'Z';
WAIT;
END PROCESS t_prcs_test_proxEnderecoOut_13;
-- test_proxEnderecoOut[12]
t_prcs_test_proxEnderecoOut_12: PROCESS
BEGIN
	test_proxEnderecoOut(12) <= 'Z';
WAIT;
END PROCESS t_prcs_test_proxEnderecoOut_12;
-- test_proxEnderecoOut[11]
t_prcs_test_proxEnderecoOut_11: PROCESS
BEGIN
	test_proxEnderecoOut(11) <= 'Z';
WAIT;
END PROCESS t_prcs_test_proxEnderecoOut_11;
-- test_proxEnderecoOut[10]
t_prcs_test_proxEnderecoOut_10: PROCESS
BEGIN
	test_proxEnderecoOut(10) <= 'Z';
WAIT;
END PROCESS t_prcs_test_proxEnderecoOut_10;
-- test_proxEnderecoOut[9]
t_prcs_test_proxEnderecoOut_9: PROCESS
BEGIN
	test_proxEnderecoOut(9) <= 'Z';
WAIT;
END PROCESS t_prcs_test_proxEnderecoOut_9;
-- test_proxEnderecoOut[8]
t_prcs_test_proxEnderecoOut_8: PROCESS
BEGIN
	test_proxEnderecoOut(8) <= 'Z';
WAIT;
END PROCESS t_prcs_test_proxEnderecoOut_8;
-- test_proxEnderecoOut[7]
t_prcs_test_proxEnderecoOut_7: PROCESS
BEGIN
	test_proxEnderecoOut(7) <= 'Z';
WAIT;
END PROCESS t_prcs_test_proxEnderecoOut_7;
-- test_proxEnderecoOut[6]
t_prcs_test_proxEnderecoOut_6: PROCESS
BEGIN
	test_proxEnderecoOut(6) <= 'Z';
WAIT;
END PROCESS t_prcs_test_proxEnderecoOut_6;
-- test_proxEnderecoOut[5]
t_prcs_test_proxEnderecoOut_5: PROCESS
BEGIN
	test_proxEnderecoOut(5) <= 'Z';
WAIT;
END PROCESS t_prcs_test_proxEnderecoOut_5;
-- test_proxEnderecoOut[4]
t_prcs_test_proxEnderecoOut_4: PROCESS
BEGIN
	test_proxEnderecoOut(4) <= 'Z';
WAIT;
END PROCESS t_prcs_test_proxEnderecoOut_4;
-- test_proxEnderecoOut[3]
t_prcs_test_proxEnderecoOut_3: PROCESS
BEGIN
	test_proxEnderecoOut(3) <= 'Z';
WAIT;
END PROCESS t_prcs_test_proxEnderecoOut_3;
-- test_proxEnderecoOut[2]
t_prcs_test_proxEnderecoOut_2: PROCESS
BEGIN
	test_proxEnderecoOut(2) <= 'Z';
WAIT;
END PROCESS t_prcs_test_proxEnderecoOut_2;
-- test_proxEnderecoOut[1]
t_prcs_test_proxEnderecoOut_1: PROCESS
BEGIN
	test_proxEnderecoOut(1) <= 'Z';
WAIT;
END PROCESS t_prcs_test_proxEnderecoOut_1;
-- test_proxEnderecoOut[0]
t_prcs_test_proxEnderecoOut_0: PROCESS
BEGIN
	test_proxEnderecoOut(0) <= 'Z';
WAIT;
END PROCESS t_prcs_test_proxEnderecoOut_0;
-- test_ula_op[7]
t_prcs_test_ula_op_7: PROCESS
BEGIN
	test_ula_op(7) <= 'Z';
WAIT;
END PROCESS t_prcs_test_ula_op_7;
-- test_ula_op[6]
t_prcs_test_ula_op_6: PROCESS
BEGIN
	test_ula_op(6) <= 'Z';
WAIT;
END PROCESS t_prcs_test_ula_op_6;
-- test_ula_op[5]
t_prcs_test_ula_op_5: PROCESS
BEGIN
	test_ula_op(5) <= 'Z';
WAIT;
END PROCESS t_prcs_test_ula_op_5;
-- test_ula_op[4]
t_prcs_test_ula_op_4: PROCESS
BEGIN
	test_ula_op(4) <= 'Z';
WAIT;
END PROCESS t_prcs_test_ula_op_4;
-- test_ula_op[3]
t_prcs_test_ula_op_3: PROCESS
BEGIN
	test_ula_op(3) <= 'Z';
WAIT;
END PROCESS t_prcs_test_ula_op_3;
-- test_ula_op[2]
t_prcs_test_ula_op_2: PROCESS
BEGIN
	test_ula_op(2) <= 'Z';
WAIT;
END PROCESS t_prcs_test_ula_op_2;
-- test_ula_op[1]
t_prcs_test_ula_op_1: PROCESS
BEGIN
	test_ula_op(1) <= 'Z';
WAIT;
END PROCESS t_prcs_test_ula_op_1;
-- test_ula_op[0]
t_prcs_test_ula_op_0: PROCESS
BEGIN
	test_ula_op(0) <= 'Z';
WAIT;
END PROCESS t_prcs_test_ula_op_0;
END Titanic2_arch;
