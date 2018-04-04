LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- The core of the Duke 550 processor
-- Author: <INSERT YOUR NAME HERE!!!!>

ENTITY processor IS
    PORT (	clock, reset	: IN STD_LOGIC;
			keyboard_in	: IN STD_LOGIC_VECTOR(31 downto 0);
			keyboard_ack, lcd_write	: OUT STD_LOGIC;
			lcd_data	: OUT STD_LOGIC_VECTOR(31 downto 0) );
END processor;

ARCHITECTURE Structure OF processor IS
	COMPONENT imem IS
		PORT (	address	: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
				clken	: IN STD_LOGIC ;
				clock	: IN STD_LOGIC ;
				q	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0) );
	END COMPONENT;
	
	COMPONENT dmem IS
		PORT (	address	: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
				clock	: IN STD_LOGIC ;
				data	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				wren	: IN STD_LOGIC ;
				q	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0) );
	END COMPONENT;
	
	COMPONENT regfile IS
		PORT (	clock, wren, clear	: IN STD_LOGIC;
				regD, regA, regB	: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
				valD	: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
				valA, valB	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0) );
	END COMPONENT;
	
	COMPONENT alu IS
		PORT (	A, B	: IN STD_LOGIC_VECTOR(31 DOWNTO 0);	-- 32bit inputs
				op	: IN STD_LOGIC_VECTOR(2 DOWNTO 0);	-- 3bit ALU opcode
				R	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);	-- 32bit output
				isEqual : OUT STD_LOGIC; -- true if A=B
				isLessThan	: OUT STD_LOGIC ); -- true if A<B
	END COMPONENT;
	
	COMPONENT control IS
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
	END COMPONENT;
	
	-- TODO: Likely need other components here (register/adder for PC?, muxes for the data path?, etc.) 
	COMPONENT reg IS
		GENERIC ( n : integer := 32 );
		PORT (	D	: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				clock, clear, enable	: IN STD_LOGIC;
				Q	: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0) );
	END COMPONENT;
	
	COMPONENT adder_cs IS
		GENERIC(n: integer:=8);
		PORT (	
			A, B : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			cin  : IN STD_LOGIC;
			cout : OUT STD_LOGIC;
			sum  : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			signed_overflow : OUT STD_LOGIC	);
	END COMPONENT;
	
	COMPONENT mux IS
	GENERIC(n: integer:=16);
	PORT (	A, B	: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				s	: IN STD_LOGIC;	-- select (NOT A / B)
				F	: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0) );
	END COMPONENT;
	
	COMPONENT mux4to1 IS
	GENERIC(n: integer:=16);
	PORT (	A, B, C, D : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				s	: IN STD_LOGIC_VECTOR(1 DOWNTO 0);	-- selector
				F	: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0) );
	END COMPONENT;
	
	-- TODO: Also likely need a bunch of signals...
	signal PC_next, PC_curr, PC_address : std_logic_vector(11 downto 0);
	signal Instrn : std_logic_vector(31 downto 0);
	signal Opcode, Rd, Rs, Rt : std_logic_vector(4 downto 0);
	signal Immed : std_logic_vector(16 downto 0);
	signal Target : std_logic_vector(26 downto 0);
	
	-- Control Signal
	signal Rwe, Rsrc, Rdst, ALUinB, DMwe, BR : std_logic;
	signal ALUop : std_logic_vector(2 downto 0);
	signal Rwd, JP :std_logic_vector(1 downto 0);
	
	signal RegFile_r1, RegFile_r2, RegFile_wr : std_logic_vector(4 downto 0);  -- regFile read port 1, read port 2 and write port 
	signal ValA_RF, ValB_RF, Val_immedSX, InputA, InputB: std_logic_vector(31 downto 0);
	
	-- ALU Output
	signal ALU_R : std_logic_vector(31 downto 0);
	signal isEqual, isLessThan : std_logic;
	
	signal DM_Q, RegFile_WB : std_logic_vector(31 downto 0);
	signal BR_signal : std_logic;
	signal DM_address, PC_plus1_short, PC_immed_short, PC_BR, PC_jr, PC_target : std_logic_vector(11 downto 0);
	signal PC_plus1, PC_immed, PC_immed_offset : std_logic_vector(31 downto 0);
	signal clkn : std_logic;
	
	constant One : std_logic_vector(11 downto 0):="000000000001";
	
	
BEGIN
	-- TODO: Connect stuff up to make a processor
	clkn <= (not clock);
	
	----------------- FETCH Stage -----------------
   PC_Update : reg GENERIC MAP (n=>12) port map (PC_next, clock, reset, '1', PC_curr);
	PCAddress : mux GENERIC MAP (n=>12) port map (PC_next, "000000000000", reset, PC_address);
	Instrn_Fetch: imem port map (PC_address, '1', clock, Instrn);
	
	
	----------------- DECODE Stage -----------------
	---- Decode Instruction
	Opcode <= Instrn(31 downto 27);
	Rd <= Instrn(26 downto 22);
	Rs <= Instrn(21 downto 17);
	Rt <= Instrn(16 downto 12);
	Immed <= Instrn(16 downto 0);
	Target <= Instrn(26 downto 0);
	
	ControlSignal: control port map (op => Opcode, Rwe => Rwe, Rsrc => Rsrc, Rdst => Rdst, ALUinB => ALUinB, ALUop => ALUop, DMwe => DMwe, Rwd => Rwd, BR => BR, JP => JP, Input_ack => keyboard_ack, LCD_wren => lcd_write);
	
	---- Determine which registers for read1, read2 and write
	RegFile_r1 <= Rs;
	RegFileR2: mux GENERIC MAP (n=>5) port map (Rd, Rt, Rsrc, RegFile_r2);
	RegFileWr: mux GENERIC MAP (n=>5) port map (Rd, "11111", Rdst, RegFile_wr);
	
	---- Determine two inputs to ALU
	RegFile_READ_Write: regfile port map (clock => clock, wren => Rwe, clear => reset, regD => RegFile_wr, regA => RegFile_r1, regB => RegFile_r2, valA => ValA_RF, valB => ValB_RF, valD => RegFile_WB);
	InputA <= ValA_RF;
	Val_immedSX <= "000000000000000" & Immed when (Immed(16) = '0') else  -- Sign Extension
						"111111111111111" & Immed;
	ALUInputB: mux GENERIC MAP (n=>32) port map (ValB_RF, Val_immedSX, ALUinB, InputB);
	
	
	----------------- EXECUTE Stage -----------------
	ALU_operation: alu port map (A => InputA, B => InputB, op => ALUop, R => ALU_R, isEqual => isEqual, isLessThan => isLessThan); 
	
	
	----------------- MEMORY WRITE Stage -----------------
	DM_address <= ALU_R(11 downto 0);
	DM_WRITE : dmem port map (address => DM_address, clock => clkn, data => ValB_RF, wren => DMwe, q => DM_Q);
	
	
	----------------- WRITEBACK Stage -----------------
	---- Write PC
	ComputeReturnAddress1 : adder_cs GENERIC MAP (n => 12) port map (A => PC_curr, B => One, cin => '0', sum => PC_plus1_short);
	PC_plus1 <= "00000000000000000000" & PC_plus1_short;	
	PCImmed: adder_cs GENERIC MAP (n => 32) port map (A => PC_plus1, B => Val_immedSX, cin => '0', sum => PC_immed);
	PC_immed_short <= PC_immed(11 downto 0);
	BR_signal <= (BR and isEqual and Opcode(0)) or (BR and isLessThan and (not Opcode(0)));
	BR_test : mux GENERIC MAP (n=>12) port map (PC_plus1_short, PC_immed_short, BR_signal, PC_BR);
	PC_jr <= ValB_RF(11 downto 0);
	PC_target <= Target(11 downto 0);
	JP_test: mux4to1 GENERIC MAP (n=>12) port map (PC_BR, PC_jr, PC_target, One, JP, PC_next);  -- One doesn't actually matter
	
	---- Write Back to Register File
	Val_WB: mux4to1 GENERIC MAP (n=>32) port map (ALU_R, DM_Q, PC_plus1, keyboard_in, Rwd, RegFile_WB);
	lcd_data <= ValB_RF;
	
		
END Structure;