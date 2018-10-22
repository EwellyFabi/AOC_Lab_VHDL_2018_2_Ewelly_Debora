Library ieee;
use ieee.std_logic_1164.all;

Entity ULA_16 is
	Port(
		A, B : IN STD_LOGIC;
		Result : OUT STD_LOGIC
		);
	End ULA_16;

Architecture behavior of ULA_16 is

COMPONENT And_16 is
	Port(
		A, B : IN STD_LOGIC_VECTOR(15 downto 0);
		Saida : OUT STD_LOGIC_VECTOR(15 downto 0)
		);
End COMPONENT;

COMPONENT Or_16 is
	Port(
		A, B : IN STD_LOGIC_VECTOR(15 downto 0);
		Saida : OUT STD_LOGIC_VECTOR(15 downto 0)
		);
End COMPONENT;

COMPONENT Not_16 is
	Port(
		A: IN STD_LOGIC_VECTOR(15 downto 0);
		Saida : OUT STD_LOGIC_VECTOR(15 downto 0)
		);
End COMPONENT;


SIGNAL signal_result1: STD_LOGIC;
SIGNAL signal_result2: STD_LOGIC;

BEGIN

	G1: And_16 PORT MAP(A, NOT(B), signal_result1);
	G2: And_16 PORT MAP(NOT(A), B, signal_result2);
	G3: MOr PORT MAP(signal_result1, signal_result2, Result);
	
END behavior;