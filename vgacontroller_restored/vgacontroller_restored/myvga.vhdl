library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.numeric_std.all;
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

constant HD: integer:= 640;
constant HF: integer:= 16;
constant HS: integer:= 96;
constant HB: integer:= 48;

constant VD: integer:= 480;
constant VF: integer:= 11;
constant VS: integer:= 2;
constant VB: integer:= 31;


--constant Active_Video: std_logic_vector(1 downto 0):="00";
--constant Front_Porch: std_logic_vector(1 downto 0):="01";
--constant Sync Pulse : std_logic_vector(1 downto 0):="10";
--constant Back_Porch: std_logic_vector(1 downto 0):="11";

--signal current_state: std_logic_vector(1 downto 0);
--signal next_state: std_logic_vector(1 downto 0);

signal countX_current, countX_temp, countX_next: std_logic_vector (9 downto 0);
signal countY_current, countY_temp, countY_next: std_logic_vector (9 downto 0);
signal countX_i, countY_i: integer;
signal h_end, v_end, rstn: std_logic;
signal pixel_index: std_logic_vector (18 downto 0);
signal address: std_logic_vector (15 downto 0);
signal color: std_logic_vector (8 downto 0);
signal redtemp, greentemp, bluetemp: std_logic_vector (7 downto 0);
--signal: clkY: std_logic;

begin

--- Replace this with your code ---

countX_i <= to_integer(unsigned(countX_current));
countY_i <= to_integer(unsigned(countY_current));
pixel_index <= std_logic_vector(to_unsigned(countY_i * 640 + countX_i, pixel_index'length));
address <= pixel_index (18 downto 3);


ColorGet: vmem port map (address, clk, color);
redtemp <= color(8 downto 6) & "00000";
greentemp <= color(5 downto 3) & "00000";
bluetemp <= color(2 downto 0) & "00000";

red   <= redtemp when (countX_i < HD) and (countY_i < VD) else
			(others => '0');
green <= greentemp when (countX_i < HD) and (countY_i < VD) else
			(others => '0');
blue  <= bluetemp when (countX_i < HD) and (countY_i < VD) else
			(others => '0');

blank <= '1' when (countX_i < HD) and (countY_i < VD) else
			'0';
hsync <= '1' when (countX_i >= (HD + HF)) and (countX_i <= (HD + HF + HS - 1)) else
			'0';
vsync <= '1' when (countY_i >= (VD + VF)) and (countY_i <= (VD + VF + VS - 1)) else
			'0';

--- DFFs
rstn <= not (rst);
h_end <= '1' when (unsigned(countX_current) = (HD + HF + HB + HS - 1)) else
			'0';
v_end <= '1' when (unsigned(countY_current) = (VD + VF + VB + VS - 1)) else
			'0';
			
--ChangeCountX: tenbitsadder port map (countX_current, "0000000001", countX_temp);
countX_temp <= std_logic_vector(unsigned(countX_current) + 1);
countX_next <= countX_temp when (h_end = '0') else
					(others => '0');

FSMX: for i in 9 downto 0 generate
	FSMX_dff: dff port map (
									clk => clk,
									clrn => rstn,
									prn => '1',
									d => countX_next(i),
									q => countX_current(i)
	);
end generate FSMX;

--ChangeCountY: tenbitsadder port map (countY_current, "0000000001", countY_next);
--clkY <= '1' when (countX_current = "1100100000") else
--		  '0';
countY_temp <= std_logic_vector(unsigned(countY_current) + 1);
countY_next <= countY_temp when (v_end = '0') else
					(others => '0');
		  
FSMY: for i in 9 downto 0 generate
	FSMY_dff: dff port map (
									clk => h_end,
									clrn => rstn,
									prn => '1',
									d => countY_next(i),
									q => countY_current(i)
	);
end generate FSMY;
	
end basic;