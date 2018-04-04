library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;

entity fulladder is
port (
	 a, b, c: in std_logic;
	 sum, carry: out std_logic); 
end fulladder;

architecture adder_struc of fulladder is

begin
	sum <= (a xor b) xor c;
	carry <= (a and b) or (c and (a xor b));
end adder_struc;



library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;

entity mux2to1 is

port (
	inA, inB : in std_logic_vector (9 downto 0);
	S	: in std_logic;
	output : out std_logic_vector (9 downto 0));
end entity;

architecture mux of mux2to1 is

begin

output <= inA when S	= '0' else
			 inB when S = '1';

end mux;



library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;

entity tenbitsadder is
port (
	a, b: in std_logic_vector (9 downto 0);
	Cin: in std_logic;
	sum: out std_logic_vector (9 downto 0);
	Cout: out std_logic);
end tenbitsadder;

architecture tenbits_struc of tenbitsadder is

signal c: std_logic_vector (10 downto 0);

component fulladder 
	port (
		a, b, c: in std_logic;
		sum, carry: out std_logic);
end component;
	
begin
	FA0: fulladder port map (a(0), b(0), Cin, sum(0), c(1));
	REST: for i in 1 to 9 generate
		Add: fulladder port map (a(i), b(i), c(i), sum(i), c(i+1));
	end generate REST;
	Cout <= c(10);
end tenbits_struc;



library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;

entity twentybitsadder is
port (
	a, b: in std_logic_vector (19 downto 0);
	Cin: in std_logic;
	sum: out std_logic_vector (19 downto 0));
end twentybitsadder;

architecture twentybits_struc of twentybitsadder is

component tenbitsadder 
	port (
		a, b: in std_logic_vector (9 downto 0);
		Cin: in std_logic;
		sum: out std_logic_vector (9 downto 0);
		Cout: out std_logic);
end component;

component mux2to1 
	port (
		inA, inB : in std_logic_vector (9 downto 0);
		S : in std_logic;
		output : out std_logic_vector (9 downto 0));
end component;
		

signal carry: std_logic;
signal a_low, a_high, b_low, b_high, sum_low, sum_high, sum_high0, sum_high1: std_logic_vector (9 downto 0);
	
begin
	a_low <= a(9 downto 0);
	a_high <= a(19 downto 10);
	b_low <= b(9 downto 0);
	b_high <= b(19 downto 10);
	LowBits: tenbitsadder port map (a_low, b_low, Cin, sum_low, carry);
	HighBits0: tenbitsadder port map (a => a_high, b => b_high, Cin => '0', sum =>sum_high0);
	HighBits1: tenbitsadder port map (a => a_high, b => b_high, Cin => '1', sum =>sum_high1);
	MUX: mux2to1 port map (sum_high0, sum_high1, carry, sum_high);
	sum <= sum_high & sum_low;
end twentybits_struc;
	
	

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;

entity multiply640 is
port (
	 input: in std_logic_vector (9 downto 0);
	 output: out std_logic_vector (19 downto 0)); 
end multiply640;

architecture mul_struc of multiply640 is

component twentybitsadder 
	port (
		a, b: in std_logic_vector (19 downto 0);
		Cin: in std_logic;
		sum: out std_logic_vector (19 downto 0));
end component;

signal temp1: std_logic_vector (11 downto 0);
signal temp2, temp3, temp4: std_logic_vector (19 downto 0);

begin
	temp1 <= input & "00";
	temp2 <= "00000000" & temp1;
	temp3 <= "0000000000" & input;
	Multiply2: twentybitsadder port map (temp2, temp3, '0', temp4);
	output <= temp4 (12 downto 0) & "0000000";
	
end mul_struc;



library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
--use IEEE.numeric_std.all;
library altera;
use altera.altera_primitives_components.all;

entity myvga is
port (
    clk     : in std_logic;
    rst     : in std_logic;
    red     : out std_logic_vector (7 downto 0);
    green   : out std_logic_vector (7 downto 0);
    blue    : out std_logic_vector (7 downto 0);
    blank   : out std_logic;
    hsync   : out std_logic;
    vsync   : out std_logic);
end myvga;


architecture basic of myvga is

component vmem is
	port (
		address		: in std_logic_vector  (15 downto 0);
		clock		: in std_logic;
		q		    : out std_logic_vector (8 downto 0));
end component;

component tenbitsadder is
	port (
		a, b: in std_logic_vector (9 downto 0);
		Cin: in std_logic;
		sum: out std_logic_vector (9 downto 0);
		Cout: out std_logic);
end component;

component twentybitsadder is
	port (
		a, b: in std_logic_vector (19 downto 0);
		Cin: in std_logic;
		sum: out std_logic_vector (19 downto 0));
end component;	

component multiply640 is
	port (
		input: in std_logic_vector (9 downto 0);
		output: out std_logic_vector (19 downto 0)); 
end component;

constant HD: integer:= 640;
constant HF: integer:= 16;
constant HS	: integer:= 96;
constant HB: integer:= 48;

constant VD: integer:= 480;
constant VF: integer:= 11;
constant VS: integer:= 2;
constant VB: integer:= 31;


--constant Active_Video: std_logic_vector(1 downto 0):="00";
--constant Front_Porch: std_logic_vector(1 downto 0):="01";
--constant 	ync Pulse : std_logic_vector(1 downto 0):="10";
--constant Back_Porch: std_logic_vector(1 downto 0):="11";

--signal current_state: std_logic_vector(1 downto 0);
--signal next_state: std_logic_vector(1 downto 0);

signal countX_current, countX_temp, countX_next: std_logic_vector (9 downto 0);
signal countY_current, countY_temp, countY_next: std_logic_vector (9 downto 0);
--signal countX_i, countY_i: integer;
signal h_end, v_end, rstn: std_logic;
signal pixelX, pixelY, pixel_temp: std_logic_vector (19 downto 0);
signal pixel_index: std_logic_vector (18 downto 0);
signal address: std_logic_vector (15 downto 0);
signal color: std_logic_vector (8 downto 0);
signal redtemp, greentemp, bluetemp: std_logic_vector (7 downto 0);


begin

--- Replace this with your code ---

--countX_i <= to_integer(unsigned(countX_current));
--countY_i <= to_integer(unsigned(countY_current));
--pixel_index <= std_logic_vector(to_unsigned(countY_i * 640 + countX_i, pixel_index'length));
pixelX <= "0000000000" & countX_current;
pixel_Y: multiply640 port map (countY_current, pixelY);
Pixel: twentybitsadder port map (pixelX, pixelY, '0', pixel_temp);
pixel_index <= pixel_temp (18 downto 0);
address <= pixel_index (18 downto 3);


ColorGet: vmem port map (address, clk, color);
redtemp <= color(8 downto 6) & "00000";
greentemp <= color(5 downto 3) & "00000";
bluetemp <= color(2 downto 0) & "00000";

--red   <= redtemp when (countX_i < HD) and (countY_i < VD) else
--			(others => '0');
--green <= greentemp when (countX_i < HD) and (countY_i < VD) else
--			(others => '0');
--blue  <= bluetemp when (countX_i < HD) and (countY_i < VD) else
--			(others => '0');
red   <= redtemp when (countX_current < "1010000000") and (countY_current < "0111100000") else
			(others => '0');
green <= greentemp when (countX_current < "1010000000") and (countY_current < "0111100000") else
			(others => '0');
blue  <= bluetemp when (countX_current < "1010000000") and (countY_current < "0111100000") else
			(others => '0');

--blank <= '1' when (countX_i < HD) and (countY_i < VD) else
--			'0';
--hsync <= '1' when (countX_i >= (HD + HF)) and (countX_i <= (HD + HF + HS - 1)) else
--			'0';
--vsync <= '1' when (countY_i >= (VD + VF)) and (countY_i <= (VD + VF + VS - 1)) else
--			'0';
blank <= '1' when (countX_current < "1010000000") and (countY_current < "0111100000") else
			'0';
hsync <= '1' when (countX_current >= "1010010000") and (countX_current <= "1011101111") else
			'0';
vsync <= '1' when (countY_current >= "0111101011") and (countY_current <= "0111101100") else
			'0';

--- DFFs
rstn <= not (rst);
--h_end <= '1' when (unsigned(countX_current) = (HD + HF + HB + HS - 1)) else
--			'0';
--v_end <= '1' when (unsigned(countY_current) = (VD + VF + VB + VS - 1)) else
--			'0';
h_end <= '1' when (countX_current = "1100011111") else
			'0';
v_end <= '1' when (countY_current = "1000001011") else
			'0';
			
ChangeCountX: tenbitsadder port map (a => countX_current, b => "0000000001", Cin => '0', sum => countX_temp);
--countX_temp <= std_logic_vector(unsigned(countX_current) + 1);
countX_next <= countX_temp when (h_end = '0') else
					(others => '0');

FMX: for i in 9 downto 0 generate
	FMX_dff: dff port map (
									clk => clk,
									clrn => rstn,
									prn => '1',
									d => countX_next(i),
									q => countX_current(i)
	);
end generate FMX;

ChangeCountY: tenbitsadder port map (a => countY_current, b => "0000000001", Cin => '0', sum => countY_temp);
--countY_temp <= std_logic_vector(unsigned(countY_current) + 1);
countY_next <= countY_temp when (v_end = '0') else
					(others => '0');
		  
FMY: for i in 9 downto 0 generate
	FMY_dff: dff port map (
									clk => h_end,
									clrn => rstn,
									prn => '1',
									d => countY_next(i),
									q => countY_current(i)
	);
end generate FMY;
	
end basic;