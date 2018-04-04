LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- Control logic for the Duke 550 processor
-- Author: <INSERT YOUR NAME HERE!!!!>

ENTITY control IS
	PORT (	op	: IN STD_LOGIC_VECTOR(4 DOWNTO 0);	-- instruction opcode
			--TODO: Figure out what control signals you need here
				Rwe : OUT STD_LOGIC;
				Rsrc : OUT STD_LOGIC;  -- second source
				Rdst: OUT STD_LOGIC;
				ALUinB : OUT STD_LOGIC;
				ALUop : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
				DMwe : OUT STD_LOGIC;
				Rwd : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
				BR : OUT STD_LOGIC;
				JP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
				Input_ack : OUT STD_LOGIC;
			   LCD_wren : OUT STD_LOGIC	
			);
END control;

ARCHITECTURE Behavior OF control IS
BEGIN
	-- TODO: implement behavior of control unit
	-- NOTE: Behavioral WHEN... ELSE statements may be used
	Rwe <= '1' when (op = "00000") else  -- add
			 '1' when (op = "00001") else  -- sub
			 '1' when (op = "00010") else  -- and
			 '1' when (op = "00011") else	 -- or
			 '1' when (op = "00100") else  -- sll
			 '1' when (op = "00101") else  -- srl
			 '1' when (op = "00110") else  -- addi
			 '1' when (op = "00111") else  -- lw
			 '0' when (op = "01000") else  -- sw
			 '0' when (op = "01001") else  -- beq
			 '0' when (op = "01010") else  -- bgt
			 '0' when (op = "01011") else  -- jr
			 '0' when (op = "01100") else  -- j
			 '1' when (op = "01101") else  -- jal
			 '1' when (op = "01110") else  -- input
			 '0';                          -- output
			 
	Rsrc <= '1' when (op = "00000") else  -- 1 when it's from Rt, 0 when it's from Rd
			  '1' when (op = "00001") else
			  '1' when (op = "00010") else
			  '1' when (op = "00011") else
			  '1' when (op = "00100") else
			  '1' when (op = "00101") else
			  '0' when (op = "00110") else  -- actually doesn't matter 
			  '0' when (op = "00111") else  -- actually doesn't matter
			  '0' when (op = "01000") else  -- actually doesn't matter
			  '0' when (op = "01001") else  -- Second source from Rd
			  '0' when (op = "01010") else  -- Second source from Rd
			  '0' when (op = "01011") else  -- Second source from Rd, since address is in $rd
			  '0' when (op = "01100") else  -- actually doesn't matter
			  '0' when (op = "01101") else  -- actually doesn't matter
			  '0' when (op = "01110") else  -- actually doesn't matter
			  '0';                          -- actually doesn't matter
	
	Rdst <= '0' when (op = "00000") else  -- 0 when destination register is from $rd, 1 when it's from $r31
			  '0' when (op = "00001") else
			  '0' when (op = "00010") else
			  '0' when (op = "00011") else
			  '0' when (op = "00100") else
			  '0' when (op = "00101") else
			  '0' when (op = "00110") else
			  '0' when (op = "00111") else
			  '0' when (op = "01000") else  -- actually doesn't matter
			  '0' when (op = "01001") else  -- actually doesn't matter
			  '0' when (op = "01010") else  -- actually doesn't matter
			  '0' when (op = "01011") else  -- actually doesn't matter
			  '0' when (op = "01100") else  -- actually doesn't matter
			  '1' when (op = "01101") else  -- destination is $r31
			  '0' when (op = "01110") else  
			  '0';                          -- actually doesn't matter
			  
	ALUinB <= '0' when (op = "00000") else -- 0 when the second input from register file, 1 when it's from the sign-extended immediate
				 '0' when (op = "00001") else
				 '0' when (op = "00010") else
				 '0' when (op = "00011") else
				 '0' when (op = "00100") else
				 '0' when (op = "00101") else
				 '1' when (op = "00110") else
				 '1' when (op = "00111") else
				 '1' when (op = "01000") else
				 '0' when (op = "01001") else
				 '0' when (op = "01010") else
				 '0' when (op = "01011") else  -- actually doesn't matter
				 '0' when (op = "01100") else  -- actually doesn't matter
				 '0' when (op = "01101") else  -- actually doesn't matter
				 '0' when (op = "01110") else  -- actually doesn't matter
				 '0';                          -- actually doesn't matter
	
	ALUop <= "000" when (op = "00000") else
				"001" when (op = "00001") else
				"010" when (op = "00010") else
				"011" when (op = "00011") else
				"100" when (op = "00100") else
				"101" when (op = "00101") else
				"000" when (op = "00110") else
				"000" when (op = "00111") else
				"000" when (op = "01000") else
				"000" when (op = "01001") else  -- actually doesn't matter, since what we need is isEqual output
				"001" when (op = "01010") else  -- actually doesn't matter, since what we need is isLessThan output
				"000" when (op = "01011") else  -- actually doesn't matter, since we dont' need output of ALU
				"000" when (op = "01100") else  -- actually doesn't matter, since we dont' need output of ALU
				"000" when (op = "01101") else  -- actually doesn't matter, since we dont' need output of ALU
				"000" when (op = "01110") else  -- actually doesn't matter, since we dont' need output of ALU
			   "000";                          -- actually doesn't matter, since we dont' need output of ALU
				
	DMwe <= '0' when (op = "00000") else
			  '0' when (op = "00001") else
			  '0' when (op = "00010") else
			  '0' when (op = "00011") else
			  '0' when (op = "00100") else
			  '0' when (op = "00101") else
			  '0' when (op = "00110") else
			  '0' when (op = "00111") else
			  '1' when (op = "01000") else
			  '0' when (op = "01001") else
			  '0' when (op = "01010") else
			  '0' when (op = "01011") else
			  '0' when (op = "01100") else
			  '0' when (op = "01101") else
			  '0' when (op = "01110") else  
			  '0';
	
	Rwd <= "00" when (op = "00000") else  -- 00 when we want to write the result of ALU back to RegFile
			 "00" when (op = "00001") else
			 "00" when (op = "00010") else
			 "00" when (op = "00011") else
			 "00" when (op = "00100") else
			 "00" when (op = "00101") else
			 "00" when (op = "00110") else
			 "01" when (op = "00111") else  -- 01 when we want to write the data from DM back to RegFile
			 "00" when (op = "01000") else  -- actually doesn't matter, since Rwe is 0
			 "00" when (op = "01001") else  -- actually doesn't matter, since Rwe is 0
			 "00" when (op = "01010") else  -- actually doesn't matter, since Rwe is 0
			 "00" when (op = "01011") else  -- actually doesn't matter, since Rwe is 0
			 "00" when (op = "01100") else  -- actually doesn't matter, since Rwe is 0
			 "10" when (op = "01101") else  -- 10 when we want to write the PC + 4 back to RegFile
			 "11" when (op = "01110") else  -- 11 when we want to data from keyboard
			 "00";                          -- actually doesn't matter
			 
	BR <= '0' when (op = "00000") else
			'0' when (op = "00001") else
			'0' when (op = "00010") else
			'0' when (op = "00011") else
			'0' when (op = "00100") else
			'0' when (op = "00101") else
			'0' when (op = "00110") else
			'0' when (op = "00111") else
			'0' when (op = "01000") else
			'1' when (op = "01001") else
			'1' when (op = "01010") else
			'0' when (op = "01011") else
			'0' when (op = "01100") else
			'0' when (op = "01101") else
			'0' when (op = "01110") else  
			'0'; 
			
	
	JP <= "00" when (op = "00000") else  -- 00 when we want result from br mux
			"00" when (op = "00001") else
			"00" when (op = "00010") else
			"00" when (op = "00011") else
			"00" when (op = "00100") else
			"00" when (op = "00101") else
			"00" when (op = "00110") else
			"00" when (op = "00111") else
			"00" when (op = "01000") else
			"00" when (op = "01001") else
			"00" when (op = "01010") else
			"01" when (op = "01011") else  -- 01 when we want address from register file
			"10" when (op = "01100") else  -- 10 when we want address from target (26 downto 0)
			"10" when (op = "01101") else  
	      "00" when (op = "01110") else  
			"00"; 
	
	Input_ack <= '1' when (op = "01110") else
					 '0';
					 
	LCD_wren <= '1' when (op = "01111") else
					'0';
		
			
END Behavior;