LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY D_FLIPFLOP IS 
	PORT (
	
	clock: in STD_LOGIC;
	input: in STD_LOGIC_VECTOR(15 DOWNTO 0);
	output: out STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
	
END D_FLIPFLOP;
	
ARCHITECTURE d OF D_FLIPFLOP IS 	
BEGIN
	PROCESS (clock, input)
		BEGIN
			
			IF (clock = '1' AND clock'EVENT) THEN
				output <= input;
			END IF;
	END PROCESS;
END d;