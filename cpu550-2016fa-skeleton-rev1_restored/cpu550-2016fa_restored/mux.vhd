LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- A basic n-bit 2-to-1 mux.
-- Author unknown, for Duke ECE550
-- Updated Fall 2016 by Tyler Bletsch

ENTITY mux IS
	GENERIC(n: integer:=16);
	PORT (	A, B	: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			s	: IN STD_LOGIC;	-- select (NOT A / B)
			F	: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0) );
END mux;

ARCHITECTURE Structure OF mux IS
BEGIN
	mux : FOR i IN 0 TO n-1 GENERATE
		mux_bit: F(i) <= (A(i) AND NOT s) OR (B(i) AND s);
	END GENERATE mux;
END Structure;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux4to1 IS
	GENERIC(n: integer:=16);
	PORT (	A, B, C, D : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			s	: IN STD_LOGIC_VECTOR(1 DOWNTO 0);	-- selector
			F	: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0) );
END mux4to1;

ARCHITECTURE Structure OF mux4to1 IS
BEGIN
	F <= A when (s = "00") else
		  B when (s = "01") else
		  C when (s = "10") else
		  D;
END Structure;
