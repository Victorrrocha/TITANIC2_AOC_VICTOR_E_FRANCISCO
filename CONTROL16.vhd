library ieee;
use ieee.std_logic_1164.all;

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
	ulaFont					:	out std_logic;
);

--signal ula_opcode
end entity CONTROL16;

architecture CONTROL16_BH of CONTROL16 is 

begin
	process(clk, opcode)
		begin
			if clk = '1' then	
				if opcode = "0000" then --AND
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "00000000";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
				
				elsif opcode = "0001" then --or
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "00000000";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
					
				elsif opcode = "0010" then --NAND
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "00000000";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
				
				elsif opcode = "0011" then --nor
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "00000000";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
					
				elsif opcode = "0100" then --XOR
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "00000000";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
					
				elsif opcode = "0101" then --soma
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "00000000";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
					
				elsif opcode = "0110" then --sub
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "00000000";
					EscReg <= '1';
					read_or_write <= '1';
					ulaFont <= '0';
				
				elsif opcode = "0111" then --not
					DesvioCondicional <= '0';
					MemParaReg <= '0';		
					ula_opcode <= "00000000";
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
					
				elsif opcode = "1100" then --branch equal
					DesvioCondicional <= '1';
					MemParaReg <= '0';		
					ula_opcode <= "00000000";
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