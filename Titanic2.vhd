library ieee;
use ieee.std_logic_1164.all;

ENTITY Titanic2 IS
	PORT(
		CLK : IN STD_LOGIC;
		RST :	IN STD_LOGIC;
-- ---------------------- TESTES --------------------------------
		test_proxEnderecoOut: INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		test_enderecoMais2: INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		test_instrucao: INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		test00,test01,test02,test03,test04: INOUT STD_LOGIC;
		test_ula_op: INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		test_reg1,test_reg2: INOUT STD_LOGIC_VECTOR(15 DOWNTO 0)
-- ---------------------- TESTES --------------------------------
	);
END Titanic2;

ARCHITECTURE BEHAVIOUR OF Titanic2 IS

COMPONENT SUM4 is 
port(
	clk	: 	in 	std_logic;
	A		:	in 	std_logic_vector (15 downto 0);
	cin	: 	in 	std_logic;
	cout	: 	out 	std_logic;
	sum	:	out 	std_logic_vector (15 downto 0)
);
END COMPONENT;

COMPONENT ROM16 IS 
PORT(
		PC_address: 	IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		INSTRUCTION: 	OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END COMPONENT;

COMPONENT REGBANK16 is 
port(
	ReadReg1	:	in 	std_logic_vector(3 downto 0);
	ReadReg2	:	in 	std_logic_vector(3 downto 0);
	WriteReg	: 	in 	std_logic_vector(3 downto 0); 
	WriteData:	in 	std_logic_vector(15 downto 0);
	RegWrite	: 	in		std_logic;
	ReadData1: 	out 	std_logic_vector(15 downto 0);
	ReadData2:	out 	std_logic_vector(15 downto 0)
	
);
end COMPONENT;

COMPONENT CONTROL16 is
port(
--	clk			: 	in std_logic;
--	opcode		:	in	std_logic_vector (3 downto 0);
--	regDst		: 	out std_logic;
--	ulaFont		:	out std_logic;
--	memParaReg	:	out std_logic;
--	escReg		:	out std_logic;
--	lerMem		:	out std_logic;
--	escMem		:	out std_logic;
--	desvio		:	out std_logic;
--	ulaOP			: 	out std_logic_vector (7 downto 0)
	
	clk						: 	in std_logic;
	opcode					: 	in std_logic_vector(3 downto 0);
	DesvioCondicional		: 	out std_logic;
	MemParaReg				:	out std_logic;
	ula_opcode				:	out std_logic_vector(7 downto 0);
	EscReg					:	out std_logic;
	read_or_write			:	out std_logic;
	ulaFont					:	out std_logic
);
end COMPONENT;

COMPONENT RAM16 IS
PORT(
	CLOCK	: 	IN 	STD_LOGIC;
	ROW	: 	IN 	STD_LOGIC; 								--READ OR WRITE
	ADDRESS:	IN 	STD_LOGIC_VECTOR (15 DOWNTO 0); 	--ENDEREÇO PARA ROW
	DATAIN:	IN 	STD_LOGIC_VECTOR (15 DOWNTO 0); 	--DADO A SER ESCRITO
	DATAOUT:	OUT	STD_LOGIC_VECTOR (15 DOWNTO 0) 	--DADO A SER LIDO
);
END COMPONENT;

COMPONENT mux1 is
	port (
	
		a, b        : in  std_logic_vector(15 downto 0);
		selector    : in  std_logic;
		x           : out std_logic_vector(15 downto 0)
	);
end COMPONENT;

COMPONENT multiplexer_4op is
	port (
	
		a, b, c     : in  std_logic_vector(15 downto 0);
		selector    : in  std_logic_vector(1 downto 0);
		x           : out std_logic_vector(15 downto 0)
	);
end COMPONENT;


COMPONENT Multiplexer_5pos IS
PORT (

	a, b, c, d, e  : IN  std_logic_vector(15 downto 0);
	seletor        : IN  std_logic_vector( 2 downto 0);
	x              : OUT std_logic_vector(15 downto 0)

);
END COMPONENT;

COMPONENT Qand IS
PORT (

	a, b : IN  std_logic_vector(15 downto 0);
	x    : OUT std_logic_vector(15 downto 0) 
);
END COMPONENT;

COMPONENT Qor IS
PORT (

	a, b : IN  std_logic_vector(15 downto 0);
	x    : OUT std_logic_vector(15 downto 0)

);
END COMPONENT;

COMPONENT Qxor IS
PORT (

	a, b : IN  std_logic_vector(15 downto 0);
	x    : OUT std_logic_vector(15 downto 0)

);
END COMPONENT;

COMPONENT Shift_2bits IS
PORT (

	a    : IN  std_logic_vector(15 downto 0);
	cin  : in  std_logic;
	x    : OUT std_logic_vector(15 downto 0) 
);
END COMPONENT;

COMPONENT SOMA16BITS is 
port(
	A, B	: in 	std_logic_vector(15 downto 0);
	sum	: out std_logic_vector(15 downto 0)
);
end COMPONENT;

COMPONENT extensor is
	port (
	
		a        : in  std_logic_vector(3 downto 0);
		sinal_ex : out std_logic_vector(15 downto 0)
	);
end COMPONENT;

COMPONENT AND_1 is
	port (
		a, b  		: in  std_logic;
		output      : out std_logic
	);
end COMPONENT;

COMPONENT Ula is
	port (
	
		a, b  : in  std_logic_vector(15 downto 0);
		op    : in  std_logic_vector( 7 downto 0);
		cout  : out std_logic;
		s     : out std_logic_vector(15 downto 0)
		
	);
end COMPONENT;

component PC is 
port(
	A	   : in 	std_logic_vector(15 downto 0);
	Aout	: out std_logic_vector(15 downto 0)
);
end component;

---------------- TRILHAS -----------------------------------------
signal clock : std_logic;
-- ENDEREÇO DO PC
signal proxEnderecoIn, proxEnderecoOut, teste_enderecoMais2: std_logic_vector(15 downto 0);
-- SAIDA DA MEMORIA DE INTRUÇÕES
signal instrucao : std_logic_vector(15 downto 0);
-- SAIDA DO BANCO DE REGISTRADORES
signal reg1, reg2 : std_logic_vector(15 downto 0);
-- SAIDA DE SINAL DA UC
signal DesvioCondicional, MemParaReg, EscReg ,read_or_write, ulaFont :std_logic;
signal ula_op : std_logic_vector(7 downto 0);
-- resultado do extensor
signal extendedSignal : std_logic_vector(15 downto 0);
-- resultado do mux antes da ULA
signal resMux_1 : std_logic_vector(15 downto 0);
-- resultado da ula 
signal sinal_zero : std_logic;
signal resUla : std_logic_vector(15 downto 0);
-- resultado da memoria de dados
signal dadoLido : std_logic_vector(15 downto 0);
-- multiplexador depois da memória de dados
signal resMux_2 : std_logic_vector(15 downto 0);
-- saída do AND_desvio
signal faz_desvio : std_logic;

-- -------------------------------- SIGNAL TESTES --------------------------------------------



-- -------------------------------------------------------------------------------------------

BEGIN






	PC0: PC port map("0000000000000001", test_proxEnderecoOut);

	SUM0: SOMA16BITS port map (test_proxEnderecoOut, "0000000000000010", test_enderecoMais2);

	MEMORIA_DE_INSTRUCOES: ROM16 port map(test_enderecoMais2,test_instrucao); 
	
	UNIDADE_DE_CONTROLE: CONTROL16 PORT MAP('1', test_instrucao(15 DOWNTO 12),test00,test01,test_ula_op,test02,test03,test04);
	
	BANCO_DE_REGISTRADORES: REGBANK16 PORT MAP(test_instrucao(7 DOWNTO 4),test_instrucao(3 DOWNTO 0),test_instrucao(11 DOWNTO 8),"1100000000000000",'0' , test_reg1, test_reg2);
	---- codigo do extensor;
	--EXTENSOR_DE_SINAL: extensor PORT MAP(instrucao(15 DOWNTO 12), extendedSignal);
	--
	--MULTIPLIXADOR_1: mux1 PORT MAP(reg2,extendedSignal, ulaFont, resMux_1);
	--
	--UNIDADE_LOGICA_ARITMETICA : Ula PORT MAP(reg1, resMux_1, ula_op, sinal_zero, resUla);
	--
	--MEMORIA_DE_DADOS: RAM16 PORT MAP(clock, read_or_write, resUla, reg2, dadoLido);
	--
	--MULTIPLEXADOR_2: mux1 PORT MAP(dadoLido, resUla, MemParaReg, resMux_2);
	--
	--AND_desvio: AND_1 PORT MAP(DesvioCondicional, sinal_zero, faz_desvio);
	--
	--MULTIPLEXADOR_3: mux1 PORT MAP(enderecoMais2, extendedSignal, faz_desvio, proxEnderecoIn);



END BEHAVIOUR;