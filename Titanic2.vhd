library ieee;
use ieee.std_logic_1164.all;

ENTITY Titanic2 IS
	PORT(
		CLK : IN STD_LOGIC;
		RST :	IN STD_LOGIC
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
	clk			: 	in std_logic;
	opcode		:	in	std_logic_vector (3 downto 0);
	regDst		: 	out std_logic;
	ulaFont		:	out std_logic;
	memParaReg	:	out std_logic;
	escReg		:	out std_logic;
	lerMem		:	out std_logic;
	escMem		:	out std_logic;
	desvio		:	out std_logic;
	ulaOP			: 	out std_logic_vector (7 downto 0)
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
	
		a, b  : in  std_logic_vector(15 downto 0);
		selector    : in  std_logic;
		x           : out std_logic_vector(15 downto 0)
	);
end COMPONENT;

COMPONENT multiplexer_4op is
	port (
	
		a, b, c  : in  std_ulogic_vector(15 downto 0);
		selector    : in  std_ulogic_vector(1 downto 0);
		x           : out std_ulogic_vector(15 downto 0)
	);
end COMPONENT;


COMPONENT Multiplexer_5pos IS
PORT (

	a, b, c, d, e  : IN  std_ulogic_vector(15 downto 0);
	seletor        : IN  std_ulogic_vector( 2 downto 0);
	x              : OUT std_ulogic_vector(15 downto 0)

);
END COMPONENT;

COMPONENT Qand IS
PORT (

	a, b : IN  std_ulogic_vector(15 downto 0);
	x    : OUT std_ulogic_vector(15 downto 0) 
);
END COMPONENT;

COMPONENT Qor IS
PORT (

	a, b : IN  std_ulogic_vector(15 downto 0);
	x    : OUT std_ulogic_vector(15 downto 0)

);
END COMPONENT;

COMPONENT Qxor IS
PORT (

	a, b : IN  std_ulogic_vector(15 downto 0);
	x    : OUT std_ulogic_vector(15 downto 0)

);
END COMPONENT;

COMPONENT Shift_2bits IS
PORT (

	a    : IN  std_ulogic_vector(15 downto 0);
	cin  : in std_logic;
	x    : OUT std_ulogic_vector(15 downto 0) 
);
END COMPONENT;

COMPONENT SOMA16BITS is 
port(
	A, B	: in 	std_ulogic_vector(15 downto 0);
	sum	: out std_ulogic_vector(15 downto 0)
);
end COMPONENT;

COMPONENT extensor is
	port (
	
		a  : in  std_logic_vector(3 downto 0);
		sinal_ex : out std_logic_vector(15 downto 0)
	);
end COMPONENT;

COMPONENT Ula is
	port (
	
		a, b  : in  std_ulogic_vector(15 downto 0);
		op    : in  std_ulogic_vector( 7 downto 0);
		cout  : out std_ulogic;
		s     : out std_ulogic_vector(15 downto 0)
		
	);
end COMPONENT;

component PC is 
port(
	A	   : in 	std_logic_vector(15 downto 0);
	Aout	: out std_logic_vector(15 downto 0)
);
end component;

-- ENDEREÇO DO PC
signal proxEnderecoIn, proxEnderecoOut, enderecoMais2: std_logic_vector(15 downto 0);
-- SAIDA DA MEMORIA DE INTRUÇÕES
signal instrucao : std_logic_vector(15 downto 0);
-- SAIDA DO BANCO DE REGISTRADORES
signal reg1, reg2 : std_logic_vector(15 downto 0);
-- SAIDA DE SINAL DA UC
signal , DesvioCondicional, MemParaReg, read_or_write, ulaFont :std_logic;
signal ula_opcode : std_logic_vector(3 downto 0);
-- resultado do extensor
signal extendedSignal
-- resultado do mux antes da ULA
signal resMux_1 : std_logic_vector(15 downto 0);
-- resultado da ula 
signal sinal_zero : std_logic;
signal resUla : std_logic_vector(15 downto 0);
-- resultado da memoria de dados
signal dadoLido : std_logic_vector(15 downto 0);
-- multiplexador depois da memória de dados
signal resMux_2 : std_logic_vector(15 downto 0);

BEGIN

PC0: PC port map(proxEnderecoIn, proxEnderecoOut);

SUM0: SOMA16BITS port map (proxEnderecoOut, "0000000000000010", enderecoMais2);

MEMORIA_DE_INSTRUCOES: ROM16 port map(proxEnderecoOut,instrucao); 

UNIDADE_DE_CONTROLE: CONTROL16 PORT MAP(clck, instrucao(15 DOWNTO 12),);

BANCO_DE_REGISTRADORES: REGBANK16 PORT MAP(instrucao(7 DOWNTO 4),instrucao(3 DOWNTO 0),instrucao(11 DOWNTO 8), /*Dado de escrita*/resMux_2, EscReg , reg1, reg2);
-- codigo do extensor;
EXTENSOR_DE_SINAL: extensor PORT MAP(instrucao(15 DOWNTO 12), extendedSignal)

MULTIPLIXADOR_1: mux1 PORT MAP(reg2,extendedSignal, ulaFont, resMux_1);

UNIDADE_LOGICA_ARITMETICA : Ula PORT MAP(reg1, resMux_1, ula_opcode, sinal_zero, resUla);

MEMORIA_DE_DADOS: RAM16 PORT MAP(/*CLOCK*/, read_or_write /* 0 = store, 1 = load */, resUla, reg2, dadoLido);

MULTIPLEXADOR_2: mux_2 PORT MAP(dadoLido, resUla, MemParaReg, resMux_2)
	
END BEHAVIOUR;