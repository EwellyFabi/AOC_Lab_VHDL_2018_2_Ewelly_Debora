Library ieee;
use ieee.std_logic_1164.all;

Entity Somador_16 is
	Port(
		A, B : IN STD_LOGIC_VECTOR(15 downto 0);
		cin : IN STD_LOGIC;
		cout : OUT STD_LOGIC;
		saida : OUT STD_LOGIC_VECTOR(15 downto 0)
		);
End Somador_16;

	
Architecture somador of Somador_16 is
BEGIN

	process(A,B,cin)
	variable temp : STD_LOGIC_VECTOR(15 downto 0);
	variable C : STD_LOGIC;
	
	BEGIN 
	C := cin;
	
	temp(0) := A(0) XOR B(0) XOR C;
	C := (A(0) AND B(0)) OR ((A(0) XOR B(0)) AND C);
	
	temp(1) := A(1) XOR B(1) XOR C;
	C := (A(1) AND B(1)) OR ((A(1) XOR B(1)) AND C);
	
	temp(2) := A(2) XOR B(2) XOR C;
	C := (A(2) AND B(2)) OR ((A(2) XOR B(2)) AND C);
	
	temp(3) := A(3) XOR B(3) XOR C;
	C := (A(3) AND B(3)) OR ((A(3) XOR B(3)) AND C);
	
	temp(4) := A(4) XOR B(4) XOR C;
	C := (A(4) AND B(4)) OR ((A(4) XOR B(4)) AND C);
	
	temp(5) := A(5) XOR B(5) XOR C;
	C := (A(5) AND B(5)) OR ((A(5) XOR B(5)) AND C);
	
	temp(6) := A(6) XOR B(6) XOR C;
	C := (A(6) AND B(6)) OR ((A(6) XOR B(6)) AND C);
	
	temp(7) := A(7) XOR B(7) XOR C;
	C := (A(7) AND B(7)) OR ((A(7) XOR B(7)) AND C);
	
	temp(8) := A(8) XOR B(8) XOR C;
	C := (A(8) AND B(8)) OR ((A(8) XOR B(8)) AND C);
	
	temp(9) := A(9) XOR B(9) XOR C;
	C := (A(9) AND B(9)) OR ((A(9) XOR B(9)) AND C);
	
	temp(10) := A(10) XOR B(10) XOR C;
	C := (A(10) AND B(10)) OR ((A(10) XOR B(10)) AND C);
	
	temp(11) := A(11) XOR B(11) XOR C;
	C := (A(11) AND B(11)) OR ((A(11) XOR B(11)) AND C);
	
	temp(12) := A(12) XOR B(12) XOR C;
	C := (A(12) AND B(12)) OR ((A(12) XOR B(12)) AND C);
	
	temp(13) := A(13) XOR B(13) XOR C;
	C := (A(13) AND B(13)) OR ((A(13) XOR B(13)) AND C);
	
	temp(14) := A(14) XOR B(14) XOR C;
	C := (A(14) AND B(14)) OR ((A(14) XOR B(14)) AND C);
	
	temp(15) := A(15) XOR B(15) XOR C;
	C := (A(15) AND B(15)) OR ((A(15) XOR B(15)) AND C);
	
	cout <= C;
	saida <= temp;
	
	END process;
	
END somador;