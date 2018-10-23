LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Maquina_estados IS 
PORT(
		Clock, X: IN STD_LOGIC; 	
		Saida: OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
);
END Maquina_estados;

ARCHITECTURE behavior OF Maquina_estados IS

	TYPE tipo_estado IS (A, B, C, D);
	signal estado: tipo_estado:= A;

	BEGIN 
		process(Clock, X) begin
		
			if Clock = '1' then
					case estado is
						when A =>
							estado <= B;
							-- Saida <= "01";
						
						when B =>
							estado <= C;
							-- Saida <= "10";
							
						when C =>
							estado <= D;
							-- Saida <= "11";
				
						when D =>
							if X = '1' then
									estado <= B;
									-- Saida <= "01";
							else
									estado <= A;
									-- Saida <= "00"
							end if;
							
					end case;
				
			end if;
				
		end process;
		
		WITH estado SELECT  --DECODIFICA ESTADO
			Saida <= "00" when A, 
						"01" when B,
						"10" when C,
						"11" when D;
		
END behavior;	
