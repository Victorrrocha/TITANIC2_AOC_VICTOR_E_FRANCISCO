library ieee;
use ieee.std_logic_1164.all;

-- FALTA OPERAÇOES (SLT, LW, SW, JUMP)

-- implentação da unidade de controle que recebe 4 bits de OPcode e sem campo funct.

entity CONTROL16 is
port(
	clk						: 	in std_logic;
	opcode					: 	in std_logic_vector(3 downto 0);
	DesvioCondicional		: 	out std_logic;
	MemParaReg				:	out std_logic;
	ula_opcode				:	out std_logic_vector(7 downto 0);
	EscReg					:	out std_logic;
	read_or_write			:	out std_logic;
	ulaFont					:	out std_logic
);

--signal ula_opcode
end entity CONTROL16;

architecture CONTROL16_BH of CONTROL16 is 

begin
	process(clk, opcode)
		begin
			if clk = '1' then	
				if opcode = "0011" then --AND
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "00000000";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
				
				elsif opcode = "0100" then --or
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "00000001";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
					
				elsif opcode = "0010" then --NAND
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "00101001";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
				
				elsif opcode = "0011" then --nor
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "00101000";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
					
				elsif opcode = "0100" then --XOR
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "00000100";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
					
				elsif opcode = "0000" then --soma
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "00000010";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
					
				elsif opcode = "0001" then --sub
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "00010010";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
				
				elsif opcode = "0111" then --not
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "01001000";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';

					
				elsif opcode = "1010" then --load
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "00000000";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
				
				elsif opcode = "1011" then --store
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "00000000";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
					
				elsif opcode = "1000" then --branch equal
					DesvioCondicional <= '1';
					MemParaReg <= '0';		
					ula_opcode <= "00010000";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
					
				elsif opcode = "1001" then --branch not equal
					DesvioCondicional <= '1';
					MemParaReg <= '0';		
					ula_opcode <= "10010000";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
					
				elsif opcode = "0101" then --multiplicação
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "00000101";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
				
				end if;
			
			
			else
					DesvioCondicional <= 'Z';
					MemParaReg <= 'Z';		
					ula_opcode <= "ZZZZZZZZ";
					EscReg <= 'Z';
					read_or_write <= 'Z';
					ulaFont <= 'Z';
			end if;
	end process;
end CONTROL16_BH;