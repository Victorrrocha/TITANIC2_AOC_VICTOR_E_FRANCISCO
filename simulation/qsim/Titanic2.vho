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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "12/04/2018 18:09:55"

-- 
-- Device: Altera EP2AGX45CU17I3 Package UFBGA358
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ARRIAII;
LIBRARY IEEE;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Titanic2 IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	test_proxEnderecoOut : BUFFER std_logic_vector(15 DOWNTO 0);
	test_enderecoMais2 : BUFFER std_logic_vector(15 DOWNTO 0);
	test_instrucao : BUFFER std_logic_vector(15 DOWNTO 0);
	test00 : BUFFER std_logic;
	test01 : BUFFER std_logic;
	test02 : BUFFER std_logic;
	test03 : BUFFER std_logic;
	test04 : BUFFER std_logic;
	test_ula_op : BUFFER std_logic_vector(7 DOWNTO 0);
	test_reg1 : BUFFER std_logic_vector(15 DOWNTO 0);
	test_reg2 : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END Titanic2;

ARCHITECTURE structure OF Titanic2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_test_proxEnderecoOut : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_test_enderecoMais2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_test_instrucao : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_test00 : std_logic;
SIGNAL ww_test01 : std_logic;
SIGNAL ww_test02 : std_logic;
SIGNAL ww_test03 : std_logic;
SIGNAL ww_test04 : std_logic;
SIGNAL ww_test_ula_op : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_test_reg1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_test_reg2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[0]~input_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[1]~input_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[2]~input_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[3]~input_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[4]~input_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[5]~input_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[6]~input_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[7]~input_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[8]~input_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[9]~input_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[10]~input_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[11]~input_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[12]~input_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[13]~input_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[14]~input_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[15]~input_o\ : std_logic;
SIGNAL \test_enderecoMais2[0]~input_o\ : std_logic;
SIGNAL \test_enderecoMais2[1]~input_o\ : std_logic;
SIGNAL \test_enderecoMais2[2]~input_o\ : std_logic;
SIGNAL \test_enderecoMais2[3]~input_o\ : std_logic;
SIGNAL \test_enderecoMais2[4]~input_o\ : std_logic;
SIGNAL \test_enderecoMais2[5]~input_o\ : std_logic;
SIGNAL \test_enderecoMais2[6]~input_o\ : std_logic;
SIGNAL \test_enderecoMais2[7]~input_o\ : std_logic;
SIGNAL \test_enderecoMais2[8]~input_o\ : std_logic;
SIGNAL \test_enderecoMais2[9]~input_o\ : std_logic;
SIGNAL \test_enderecoMais2[10]~input_o\ : std_logic;
SIGNAL \test_enderecoMais2[11]~input_o\ : std_logic;
SIGNAL \test_enderecoMais2[12]~input_o\ : std_logic;
SIGNAL \test_enderecoMais2[13]~input_o\ : std_logic;
SIGNAL \test_enderecoMais2[14]~input_o\ : std_logic;
SIGNAL \test_enderecoMais2[15]~input_o\ : std_logic;
SIGNAL \test_instrucao[0]~input_o\ : std_logic;
SIGNAL \test_instrucao[1]~input_o\ : std_logic;
SIGNAL \test_instrucao[2]~input_o\ : std_logic;
SIGNAL \test_instrucao[3]~input_o\ : std_logic;
SIGNAL \test_instrucao[4]~input_o\ : std_logic;
SIGNAL \test_instrucao[5]~input_o\ : std_logic;
SIGNAL \test_instrucao[6]~input_o\ : std_logic;
SIGNAL \test_instrucao[7]~input_o\ : std_logic;
SIGNAL \test_instrucao[8]~input_o\ : std_logic;
SIGNAL \test_instrucao[9]~input_o\ : std_logic;
SIGNAL \test_instrucao[10]~input_o\ : std_logic;
SIGNAL \test_instrucao[11]~input_o\ : std_logic;
SIGNAL \test_instrucao[12]~input_o\ : std_logic;
SIGNAL \test_instrucao[13]~input_o\ : std_logic;
SIGNAL \test_instrucao[14]~input_o\ : std_logic;
SIGNAL \test_instrucao[15]~input_o\ : std_logic;
SIGNAL \test00~input_o\ : std_logic;
SIGNAL \test01~input_o\ : std_logic;
SIGNAL \test02~input_o\ : std_logic;
SIGNAL \test03~input_o\ : std_logic;
SIGNAL \test04~input_o\ : std_logic;
SIGNAL \test_ula_op[0]~input_o\ : std_logic;
SIGNAL \test_ula_op[1]~input_o\ : std_logic;
SIGNAL \test_ula_op[2]~input_o\ : std_logic;
SIGNAL \test_ula_op[3]~input_o\ : std_logic;
SIGNAL \test_ula_op[4]~input_o\ : std_logic;
SIGNAL \test_ula_op[5]~input_o\ : std_logic;
SIGNAL \test_ula_op[6]~input_o\ : std_logic;
SIGNAL \test_ula_op[7]~input_o\ : std_logic;
SIGNAL \test_reg1[0]~input_o\ : std_logic;
SIGNAL \test_reg1[1]~input_o\ : std_logic;
SIGNAL \test_reg1[2]~input_o\ : std_logic;
SIGNAL \test_reg1[3]~input_o\ : std_logic;
SIGNAL \test_reg1[4]~input_o\ : std_logic;
SIGNAL \test_reg1[5]~input_o\ : std_logic;
SIGNAL \test_reg1[6]~input_o\ : std_logic;
SIGNAL \test_reg1[7]~input_o\ : std_logic;
SIGNAL \test_reg1[8]~input_o\ : std_logic;
SIGNAL \test_reg1[9]~input_o\ : std_logic;
SIGNAL \test_reg1[10]~input_o\ : std_logic;
SIGNAL \test_reg1[11]~input_o\ : std_logic;
SIGNAL \test_reg1[12]~input_o\ : std_logic;
SIGNAL \test_reg1[13]~input_o\ : std_logic;
SIGNAL \test_reg1[14]~input_o\ : std_logic;
SIGNAL \test_reg1[15]~input_o\ : std_logic;
SIGNAL \test_reg2[0]~input_o\ : std_logic;
SIGNAL \test_reg2[1]~input_o\ : std_logic;
SIGNAL \test_reg2[2]~input_o\ : std_logic;
SIGNAL \test_reg2[3]~input_o\ : std_logic;
SIGNAL \test_reg2[4]~input_o\ : std_logic;
SIGNAL \test_reg2[5]~input_o\ : std_logic;
SIGNAL \test_reg2[6]~input_o\ : std_logic;
SIGNAL \test_reg2[7]~input_o\ : std_logic;
SIGNAL \test_reg2[8]~input_o\ : std_logic;
SIGNAL \test_reg2[9]~input_o\ : std_logic;
SIGNAL \test_reg2[10]~input_o\ : std_logic;
SIGNAL \test_reg2[11]~input_o\ : std_logic;
SIGNAL \test_reg2[12]~input_o\ : std_logic;
SIGNAL \test_reg2[13]~input_o\ : std_logic;
SIGNAL \test_reg2[14]~input_o\ : std_logic;
SIGNAL \test_reg2[15]~input_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[0]~output_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[1]~output_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[2]~output_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[3]~output_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[4]~output_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[5]~output_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[6]~output_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[7]~output_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[8]~output_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[9]~output_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[10]~output_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[11]~output_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[12]~output_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[13]~output_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[14]~output_o\ : std_logic;
SIGNAL \test_proxEnderecoOut[15]~output_o\ : std_logic;
SIGNAL \test_enderecoMais2[0]~output_o\ : std_logic;
SIGNAL \test_enderecoMais2[1]~output_o\ : std_logic;
SIGNAL \test_enderecoMais2[2]~output_o\ : std_logic;
SIGNAL \test_enderecoMais2[3]~output_o\ : std_logic;
SIGNAL \test_enderecoMais2[4]~output_o\ : std_logic;
SIGNAL \test_enderecoMais2[5]~output_o\ : std_logic;
SIGNAL \test_enderecoMais2[6]~output_o\ : std_logic;
SIGNAL \test_enderecoMais2[7]~output_o\ : std_logic;
SIGNAL \test_enderecoMais2[8]~output_o\ : std_logic;
SIGNAL \test_enderecoMais2[9]~output_o\ : std_logic;
SIGNAL \test_enderecoMais2[10]~output_o\ : std_logic;
SIGNAL \test_enderecoMais2[11]~output_o\ : std_logic;
SIGNAL \test_enderecoMais2[12]~output_o\ : std_logic;
SIGNAL \test_enderecoMais2[13]~output_o\ : std_logic;
SIGNAL \test_enderecoMais2[14]~output_o\ : std_logic;
SIGNAL \test_enderecoMais2[15]~output_o\ : std_logic;
SIGNAL \test_instrucao[0]~output_o\ : std_logic;
SIGNAL \test_instrucao[1]~output_o\ : std_logic;
SIGNAL \test_instrucao[2]~output_o\ : std_logic;
SIGNAL \test_instrucao[3]~output_o\ : std_logic;
SIGNAL \test_instrucao[4]~output_o\ : std_logic;
SIGNAL \test_instrucao[5]~output_o\ : std_logic;
SIGNAL \test_instrucao[6]~output_o\ : std_logic;
SIGNAL \test_instrucao[7]~output_o\ : std_logic;
SIGNAL \test_instrucao[8]~output_o\ : std_logic;
SIGNAL \test_instrucao[9]~output_o\ : std_logic;
SIGNAL \test_instrucao[10]~output_o\ : std_logic;
SIGNAL \test_instrucao[11]~output_o\ : std_logic;
SIGNAL \test_instrucao[12]~output_o\ : std_logic;
SIGNAL \test_instrucao[13]~output_o\ : std_logic;
SIGNAL \test_instrucao[14]~output_o\ : std_logic;
SIGNAL \test_instrucao[15]~output_o\ : std_logic;
SIGNAL \test00~output_o\ : std_logic;
SIGNAL \test01~output_o\ : std_logic;
SIGNAL \test02~output_o\ : std_logic;
SIGNAL \test03~output_o\ : std_logic;
SIGNAL \test04~output_o\ : std_logic;
SIGNAL \test_ula_op[0]~output_o\ : std_logic;
SIGNAL \test_ula_op[1]~output_o\ : std_logic;
SIGNAL \test_ula_op[2]~output_o\ : std_logic;
SIGNAL \test_ula_op[3]~output_o\ : std_logic;
SIGNAL \test_ula_op[4]~output_o\ : std_logic;
SIGNAL \test_ula_op[5]~output_o\ : std_logic;
SIGNAL \test_ula_op[6]~output_o\ : std_logic;
SIGNAL \test_ula_op[7]~output_o\ : std_logic;
SIGNAL \test_reg1[0]~output_o\ : std_logic;
SIGNAL \test_reg1[1]~output_o\ : std_logic;
SIGNAL \test_reg1[2]~output_o\ : std_logic;
SIGNAL \test_reg1[3]~output_o\ : std_logic;
SIGNAL \test_reg1[4]~output_o\ : std_logic;
SIGNAL \test_reg1[5]~output_o\ : std_logic;
SIGNAL \test_reg1[6]~output_o\ : std_logic;
SIGNAL \test_reg1[7]~output_o\ : std_logic;
SIGNAL \test_reg1[8]~output_o\ : std_logic;
SIGNAL \test_reg1[9]~output_o\ : std_logic;
SIGNAL \test_reg1[10]~output_o\ : std_logic;
SIGNAL \test_reg1[11]~output_o\ : std_logic;
SIGNAL \test_reg1[12]~output_o\ : std_logic;
SIGNAL \test_reg1[13]~output_o\ : std_logic;
SIGNAL \test_reg1[14]~output_o\ : std_logic;
SIGNAL \test_reg1[15]~output_o\ : std_logic;
SIGNAL \test_reg2[0]~output_o\ : std_logic;
SIGNAL \test_reg2[1]~output_o\ : std_logic;
SIGNAL \test_reg2[2]~output_o\ : std_logic;
SIGNAL \test_reg2[3]~output_o\ : std_logic;
SIGNAL \test_reg2[4]~output_o\ : std_logic;
SIGNAL \test_reg2[5]~output_o\ : std_logic;
SIGNAL \test_reg2[6]~output_o\ : std_logic;
SIGNAL \test_reg2[7]~output_o\ : std_logic;
SIGNAL \test_reg2[8]~output_o\ : std_logic;
SIGNAL \test_reg2[9]~output_o\ : std_logic;
SIGNAL \test_reg2[10]~output_o\ : std_logic;
SIGNAL \test_reg2[11]~output_o\ : std_logic;
SIGNAL \test_reg2[12]~output_o\ : std_logic;
SIGNAL \test_reg2[13]~output_o\ : std_logic;
SIGNAL \test_reg2[14]~output_o\ : std_logic;
SIGNAL \test_reg2[15]~output_o\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
test_proxEnderecoOut <= ww_test_proxEnderecoOut;
test_enderecoMais2 <= ww_test_enderecoMais2;
test_instrucao <= ww_test_instrucao;
test00 <= ww_test00;
test01 <= ww_test01;
test02 <= ww_test02;
test03 <= ww_test03;
test04 <= ww_test04;
test_ula_op <= ww_test_ula_op;
test_reg1 <= ww_test_reg1;
test_reg2 <= ww_test_reg2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\test_proxEnderecoOut[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \test_proxEnderecoOut[0]~output_o\);

\test_proxEnderecoOut[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_proxEnderecoOut[1]~output_o\);

\test_proxEnderecoOut[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_proxEnderecoOut[2]~output_o\);

\test_proxEnderecoOut[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_proxEnderecoOut[3]~output_o\);

\test_proxEnderecoOut[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_proxEnderecoOut[4]~output_o\);

\test_proxEnderecoOut[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_proxEnderecoOut[5]~output_o\);

\test_proxEnderecoOut[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_proxEnderecoOut[6]~output_o\);

\test_proxEnderecoOut[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_proxEnderecoOut[7]~output_o\);

\test_proxEnderecoOut[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_proxEnderecoOut[8]~output_o\);

\test_proxEnderecoOut[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_proxEnderecoOut[9]~output_o\);

\test_proxEnderecoOut[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_proxEnderecoOut[10]~output_o\);

\test_proxEnderecoOut[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_proxEnderecoOut[11]~output_o\);

\test_proxEnderecoOut[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_proxEnderecoOut[12]~output_o\);

\test_proxEnderecoOut[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_proxEnderecoOut[13]~output_o\);

\test_proxEnderecoOut[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_proxEnderecoOut[14]~output_o\);

\test_proxEnderecoOut[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_proxEnderecoOut[15]~output_o\);

\test_enderecoMais2[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \test_enderecoMais2[0]~output_o\);

\test_enderecoMais2[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \test_enderecoMais2[1]~output_o\);

\test_enderecoMais2[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_enderecoMais2[2]~output_o\);

\test_enderecoMais2[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_enderecoMais2[3]~output_o\);

\test_enderecoMais2[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_enderecoMais2[4]~output_o\);

\test_enderecoMais2[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_enderecoMais2[5]~output_o\);

\test_enderecoMais2[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_enderecoMais2[6]~output_o\);

\test_enderecoMais2[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_enderecoMais2[7]~output_o\);

\test_enderecoMais2[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_enderecoMais2[8]~output_o\);

\test_enderecoMais2[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_enderecoMais2[9]~output_o\);

\test_enderecoMais2[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_enderecoMais2[10]~output_o\);

\test_enderecoMais2[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_enderecoMais2[11]~output_o\);

\test_enderecoMais2[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_enderecoMais2[12]~output_o\);

\test_enderecoMais2[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_enderecoMais2[13]~output_o\);

\test_enderecoMais2[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_enderecoMais2[14]~output_o\);

\test_enderecoMais2[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_enderecoMais2[15]~output_o\);

\test_instrucao[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \test_instrucao[0]~output_o\);

\test_instrucao[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_instrucao[1]~output_o\);

\test_instrucao[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_instrucao[2]~output_o\);

\test_instrucao[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_instrucao[3]~output_o\);

\test_instrucao[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_instrucao[4]~output_o\);

\test_instrucao[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_instrucao[5]~output_o\);

\test_instrucao[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_instrucao[6]~output_o\);

\test_instrucao[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_instrucao[7]~output_o\);

\test_instrucao[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_instrucao[8]~output_o\);

\test_instrucao[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \test_instrucao[9]~output_o\);

\test_instrucao[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_instrucao[10]~output_o\);

\test_instrucao[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_instrucao[11]~output_o\);

\test_instrucao[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \test_instrucao[12]~output_o\);

\test_instrucao[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_instrucao[13]~output_o\);

\test_instrucao[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_instrucao[14]~output_o\);

\test_instrucao[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \test_instrucao[15]~output_o\);

\test00~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \test00~output_o\);

\test01~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test01~output_o\);

\test02~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \test02~output_o\);

\test03~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \test03~output_o\);

\test04~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test04~output_o\);

\test_ula_op[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_ula_op[0]~output_o\);

\test_ula_op[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_ula_op[1]~output_o\);

\test_ula_op[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_ula_op[2]~output_o\);

\test_ula_op[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_ula_op[3]~output_o\);

\test_ula_op[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \test_ula_op[4]~output_o\);

\test_ula_op[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_ula_op[5]~output_o\);

\test_ula_op[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_ula_op[6]~output_o\);

\test_ula_op[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \test_ula_op[7]~output_o\);

\test_reg1[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg1[0]~output_o\);

\test_reg1[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg1[1]~output_o\);

\test_reg1[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg1[2]~output_o\);

\test_reg1[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg1[3]~output_o\);

\test_reg1[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg1[4]~output_o\);

\test_reg1[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg1[5]~output_o\);

\test_reg1[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg1[6]~output_o\);

\test_reg1[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg1[7]~output_o\);

\test_reg1[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg1[8]~output_o\);

\test_reg1[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg1[9]~output_o\);

\test_reg1[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg1[10]~output_o\);

\test_reg1[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg1[11]~output_o\);

\test_reg1[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg1[12]~output_o\);

\test_reg1[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg1[13]~output_o\);

\test_reg1[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg1[14]~output_o\);

\test_reg1[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg1[15]~output_o\);

\test_reg2[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg2[0]~output_o\);

\test_reg2[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg2[1]~output_o\);

\test_reg2[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg2[2]~output_o\);

\test_reg2[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg2[3]~output_o\);

\test_reg2[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg2[4]~output_o\);

\test_reg2[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg2[5]~output_o\);

\test_reg2[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg2[6]~output_o\);

\test_reg2[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg2[7]~output_o\);

\test_reg2[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg2[8]~output_o\);

\test_reg2[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg2[9]~output_o\);

\test_reg2[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg2[10]~output_o\);

\test_reg2[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg2[11]~output_o\);

\test_reg2[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg2[12]~output_o\);

\test_reg2[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg2[13]~output_o\);

\test_reg2[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg2[14]~output_o\);

\test_reg2[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_reg2[15]~output_o\);

\CLK~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

\RST~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

\test_proxEnderecoOut[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_proxEnderecoOut(0),
	o => \test_proxEnderecoOut[0]~input_o\);

\test_proxEnderecoOut[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_proxEnderecoOut(1),
	o => \test_proxEnderecoOut[1]~input_o\);

\test_proxEnderecoOut[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_proxEnderecoOut(2),
	o => \test_proxEnderecoOut[2]~input_o\);

\test_proxEnderecoOut[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_proxEnderecoOut(3),
	o => \test_proxEnderecoOut[3]~input_o\);

\test_proxEnderecoOut[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_proxEnderecoOut(4),
	o => \test_proxEnderecoOut[4]~input_o\);

\test_proxEnderecoOut[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_proxEnderecoOut(5),
	o => \test_proxEnderecoOut[5]~input_o\);

\test_proxEnderecoOut[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_proxEnderecoOut(6),
	o => \test_proxEnderecoOut[6]~input_o\);

\test_proxEnderecoOut[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_proxEnderecoOut(7),
	o => \test_proxEnderecoOut[7]~input_o\);

\test_proxEnderecoOut[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_proxEnderecoOut(8),
	o => \test_proxEnderecoOut[8]~input_o\);

\test_proxEnderecoOut[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_proxEnderecoOut(9),
	o => \test_proxEnderecoOut[9]~input_o\);

\test_proxEnderecoOut[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_proxEnderecoOut(10),
	o => \test_proxEnderecoOut[10]~input_o\);

\test_proxEnderecoOut[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_proxEnderecoOut(11),
	o => \test_proxEnderecoOut[11]~input_o\);

\test_proxEnderecoOut[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_proxEnderecoOut(12),
	o => \test_proxEnderecoOut[12]~input_o\);

\test_proxEnderecoOut[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_proxEnderecoOut(13),
	o => \test_proxEnderecoOut[13]~input_o\);

\test_proxEnderecoOut[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_proxEnderecoOut(14),
	o => \test_proxEnderecoOut[14]~input_o\);

\test_proxEnderecoOut[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_proxEnderecoOut(15),
	o => \test_proxEnderecoOut[15]~input_o\);

\test_enderecoMais2[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_enderecoMais2(0),
	o => \test_enderecoMais2[0]~input_o\);

\test_enderecoMais2[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_enderecoMais2(1),
	o => \test_enderecoMais2[1]~input_o\);

\test_enderecoMais2[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_enderecoMais2(2),
	o => \test_enderecoMais2[2]~input_o\);

\test_enderecoMais2[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_enderecoMais2(3),
	o => \test_enderecoMais2[3]~input_o\);

\test_enderecoMais2[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_enderecoMais2(4),
	o => \test_enderecoMais2[4]~input_o\);

\test_enderecoMais2[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_enderecoMais2(5),
	o => \test_enderecoMais2[5]~input_o\);

\test_enderecoMais2[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_enderecoMais2(6),
	o => \test_enderecoMais2[6]~input_o\);

\test_enderecoMais2[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_enderecoMais2(7),
	o => \test_enderecoMais2[7]~input_o\);

\test_enderecoMais2[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_enderecoMais2(8),
	o => \test_enderecoMais2[8]~input_o\);

\test_enderecoMais2[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_enderecoMais2(9),
	o => \test_enderecoMais2[9]~input_o\);

\test_enderecoMais2[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_enderecoMais2(10),
	o => \test_enderecoMais2[10]~input_o\);

\test_enderecoMais2[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_enderecoMais2(11),
	o => \test_enderecoMais2[11]~input_o\);

\test_enderecoMais2[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_enderecoMais2(12),
	o => \test_enderecoMais2[12]~input_o\);

\test_enderecoMais2[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_enderecoMais2(13),
	o => \test_enderecoMais2[13]~input_o\);

\test_enderecoMais2[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_enderecoMais2(14),
	o => \test_enderecoMais2[14]~input_o\);

\test_enderecoMais2[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_enderecoMais2(15),
	o => \test_enderecoMais2[15]~input_o\);

\test_instrucao[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_instrucao(0),
	o => \test_instrucao[0]~input_o\);

\test_instrucao[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_instrucao(1),
	o => \test_instrucao[1]~input_o\);

\test_instrucao[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_instrucao(2),
	o => \test_instrucao[2]~input_o\);

\test_instrucao[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_instrucao(3),
	o => \test_instrucao[3]~input_o\);

\test_instrucao[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_instrucao(4),
	o => \test_instrucao[4]~input_o\);

\test_instrucao[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_instrucao(5),
	o => \test_instrucao[5]~input_o\);

\test_instrucao[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_instrucao(6),
	o => \test_instrucao[6]~input_o\);

\test_instrucao[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_instrucao(7),
	o => \test_instrucao[7]~input_o\);

\test_instrucao[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_instrucao(8),
	o => \test_instrucao[8]~input_o\);

\test_instrucao[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_instrucao(9),
	o => \test_instrucao[9]~input_o\);

\test_instrucao[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_instrucao(10),
	o => \test_instrucao[10]~input_o\);

\test_instrucao[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_instrucao(11),
	o => \test_instrucao[11]~input_o\);

\test_instrucao[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_instrucao(12),
	o => \test_instrucao[12]~input_o\);

\test_instrucao[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_instrucao(13),
	o => \test_instrucao[13]~input_o\);

\test_instrucao[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_instrucao(14),
	o => \test_instrucao[14]~input_o\);

\test_instrucao[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_instrucao(15),
	o => \test_instrucao[15]~input_o\);

\test00~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_test00,
	o => \test00~input_o\);

\test01~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_test01,
	o => \test01~input_o\);

\test02~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_test02,
	o => \test02~input_o\);

\test03~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_test03,
	o => \test03~input_o\);

\test04~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_test04,
	o => \test04~input_o\);

\test_ula_op[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_ula_op(0),
	o => \test_ula_op[0]~input_o\);

\test_ula_op[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_ula_op(1),
	o => \test_ula_op[1]~input_o\);

\test_ula_op[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_ula_op(2),
	o => \test_ula_op[2]~input_o\);

\test_ula_op[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_ula_op(3),
	o => \test_ula_op[3]~input_o\);

\test_ula_op[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_ula_op(4),
	o => \test_ula_op[4]~input_o\);

\test_ula_op[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_ula_op(5),
	o => \test_ula_op[5]~input_o\);

\test_ula_op[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_ula_op(6),
	o => \test_ula_op[6]~input_o\);

\test_ula_op[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_ula_op(7),
	o => \test_ula_op[7]~input_o\);

\test_reg1[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg1(0),
	o => \test_reg1[0]~input_o\);

\test_reg1[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg1(1),
	o => \test_reg1[1]~input_o\);

\test_reg1[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg1(2),
	o => \test_reg1[2]~input_o\);

\test_reg1[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg1(3),
	o => \test_reg1[3]~input_o\);

\test_reg1[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg1(4),
	o => \test_reg1[4]~input_o\);

\test_reg1[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg1(5),
	o => \test_reg1[5]~input_o\);

\test_reg1[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg1(6),
	o => \test_reg1[6]~input_o\);

\test_reg1[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg1(7),
	o => \test_reg1[7]~input_o\);

\test_reg1[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg1(8),
	o => \test_reg1[8]~input_o\);

\test_reg1[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg1(9),
	o => \test_reg1[9]~input_o\);

\test_reg1[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg1(10),
	o => \test_reg1[10]~input_o\);

\test_reg1[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg1(11),
	o => \test_reg1[11]~input_o\);

\test_reg1[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg1(12),
	o => \test_reg1[12]~input_o\);

\test_reg1[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg1(13),
	o => \test_reg1[13]~input_o\);

\test_reg1[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg1(14),
	o => \test_reg1[14]~input_o\);

\test_reg1[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg1(15),
	o => \test_reg1[15]~input_o\);

\test_reg2[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg2(0),
	o => \test_reg2[0]~input_o\);

\test_reg2[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg2(1),
	o => \test_reg2[1]~input_o\);

\test_reg2[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg2(2),
	o => \test_reg2[2]~input_o\);

\test_reg2[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg2(3),
	o => \test_reg2[3]~input_o\);

\test_reg2[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg2(4),
	o => \test_reg2[4]~input_o\);

\test_reg2[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg2(5),
	o => \test_reg2[5]~input_o\);

\test_reg2[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg2(6),
	o => \test_reg2[6]~input_o\);

\test_reg2[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg2(7),
	o => \test_reg2[7]~input_o\);

\test_reg2[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg2(8),
	o => \test_reg2[8]~input_o\);

\test_reg2[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg2(9),
	o => \test_reg2[9]~input_o\);

\test_reg2[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg2(10),
	o => \test_reg2[10]~input_o\);

\test_reg2[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg2(11),
	o => \test_reg2[11]~input_o\);

\test_reg2[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg2(12),
	o => \test_reg2[12]~input_o\);

\test_reg2[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg2(13),
	o => \test_reg2[13]~input_o\);

\test_reg2[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg2(14),
	o => \test_reg2[14]~input_o\);

\test_reg2[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => test_reg2(15),
	o => \test_reg2[15]~input_o\);

test_proxEnderecoOut(0) <= \test_proxEnderecoOut[0]~output_o\;

test_proxEnderecoOut(1) <= \test_proxEnderecoOut[1]~output_o\;

test_proxEnderecoOut(2) <= \test_proxEnderecoOut[2]~output_o\;

test_proxEnderecoOut(3) <= \test_proxEnderecoOut[3]~output_o\;

test_proxEnderecoOut(4) <= \test_proxEnderecoOut[4]~output_o\;

test_proxEnderecoOut(5) <= \test_proxEnderecoOut[5]~output_o\;

test_proxEnderecoOut(6) <= \test_proxEnderecoOut[6]~output_o\;

test_proxEnderecoOut(7) <= \test_proxEnderecoOut[7]~output_o\;

test_proxEnderecoOut(8) <= \test_proxEnderecoOut[8]~output_o\;

test_proxEnderecoOut(9) <= \test_proxEnderecoOut[9]~output_o\;

test_proxEnderecoOut(10) <= \test_proxEnderecoOut[10]~output_o\;

test_proxEnderecoOut(11) <= \test_proxEnderecoOut[11]~output_o\;

test_proxEnderecoOut(12) <= \test_proxEnderecoOut[12]~output_o\;

test_proxEnderecoOut(13) <= \test_proxEnderecoOut[13]~output_o\;

test_proxEnderecoOut(14) <= \test_proxEnderecoOut[14]~output_o\;

test_proxEnderecoOut(15) <= \test_proxEnderecoOut[15]~output_o\;

test_enderecoMais2(0) <= \test_enderecoMais2[0]~output_o\;

test_enderecoMais2(1) <= \test_enderecoMais2[1]~output_o\;

test_enderecoMais2(2) <= \test_enderecoMais2[2]~output_o\;

test_enderecoMais2(3) <= \test_enderecoMais2[3]~output_o\;

test_enderecoMais2(4) <= \test_enderecoMais2[4]~output_o\;

test_enderecoMais2(5) <= \test_enderecoMais2[5]~output_o\;

test_enderecoMais2(6) <= \test_enderecoMais2[6]~output_o\;

test_enderecoMais2(7) <= \test_enderecoMais2[7]~output_o\;

test_enderecoMais2(8) <= \test_enderecoMais2[8]~output_o\;

test_enderecoMais2(9) <= \test_enderecoMais2[9]~output_o\;

test_enderecoMais2(10) <= \test_enderecoMais2[10]~output_o\;

test_enderecoMais2(11) <= \test_enderecoMais2[11]~output_o\;

test_enderecoMais2(12) <= \test_enderecoMais2[12]~output_o\;

test_enderecoMais2(13) <= \test_enderecoMais2[13]~output_o\;

test_enderecoMais2(14) <= \test_enderecoMais2[14]~output_o\;

test_enderecoMais2(15) <= \test_enderecoMais2[15]~output_o\;

test_instrucao(0) <= \test_instrucao[0]~output_o\;

test_instrucao(1) <= \test_instrucao[1]~output_o\;

test_instrucao(2) <= \test_instrucao[2]~output_o\;

test_instrucao(3) <= \test_instrucao[3]~output_o\;

test_instrucao(4) <= \test_instrucao[4]~output_o\;

test_instrucao(5) <= \test_instrucao[5]~output_o\;

test_instrucao(6) <= \test_instrucao[6]~output_o\;

test_instrucao(7) <= \test_instrucao[7]~output_o\;

test_instrucao(8) <= \test_instrucao[8]~output_o\;

test_instrucao(9) <= \test_instrucao[9]~output_o\;

test_instrucao(10) <= \test_instrucao[10]~output_o\;

test_instrucao(11) <= \test_instrucao[11]~output_o\;

test_instrucao(12) <= \test_instrucao[12]~output_o\;

test_instrucao(13) <= \test_instrucao[13]~output_o\;

test_instrucao(14) <= \test_instrucao[14]~output_o\;

test_instrucao(15) <= \test_instrucao[15]~output_o\;

ww_test00 <= \test00~output_o\;

ww_test01 <= \test01~output_o\;

ww_test02 <= \test02~output_o\;

ww_test03 <= \test03~output_o\;

ww_test04 <= \test04~output_o\;

test_ula_op(0) <= \test_ula_op[0]~output_o\;

test_ula_op(1) <= \test_ula_op[1]~output_o\;

test_ula_op(2) <= \test_ula_op[2]~output_o\;

test_ula_op(3) <= \test_ula_op[3]~output_o\;

test_ula_op(4) <= \test_ula_op[4]~output_o\;

test_ula_op(5) <= \test_ula_op[5]~output_o\;

test_ula_op(6) <= \test_ula_op[6]~output_o\;

test_ula_op(7) <= \test_ula_op[7]~output_o\;

test_reg1(0) <= \test_reg1[0]~output_o\;

test_reg1(1) <= \test_reg1[1]~output_o\;

test_reg1(2) <= \test_reg1[2]~output_o\;

test_reg1(3) <= \test_reg1[3]~output_o\;

test_reg1(4) <= \test_reg1[4]~output_o\;

test_reg1(5) <= \test_reg1[5]~output_o\;

test_reg1(6) <= \test_reg1[6]~output_o\;

test_reg1(7) <= \test_reg1[7]~output_o\;

test_reg1(8) <= \test_reg1[8]~output_o\;

test_reg1(9) <= \test_reg1[9]~output_o\;

test_reg1(10) <= \test_reg1[10]~output_o\;

test_reg1(11) <= \test_reg1[11]~output_o\;

test_reg1(12) <= \test_reg1[12]~output_o\;

test_reg1(13) <= \test_reg1[13]~output_o\;

test_reg1(14) <= \test_reg1[14]~output_o\;

test_reg1(15) <= \test_reg1[15]~output_o\;

test_reg2(0) <= \test_reg2[0]~output_o\;

test_reg2(1) <= \test_reg2[1]~output_o\;

test_reg2(2) <= \test_reg2[2]~output_o\;

test_reg2(3) <= \test_reg2[3]~output_o\;

test_reg2(4) <= \test_reg2[4]~output_o\;

test_reg2(5) <= \test_reg2[5]~output_o\;

test_reg2(6) <= \test_reg2[6]~output_o\;

test_reg2(7) <= \test_reg2[7]~output_o\;

test_reg2(8) <= \test_reg2[8]~output_o\;

test_reg2(9) <= \test_reg2[9]~output_o\;

test_reg2(10) <= \test_reg2[10]~output_o\;

test_reg2(11) <= \test_reg2[11]~output_o\;

test_reg2(12) <= \test_reg2[12]~output_o\;

test_reg2(13) <= \test_reg2[13]~output_o\;

test_reg2(14) <= \test_reg2[14]~output_o\;

test_reg2(15) <= \test_reg2[15]~output_o\;
END structure;


