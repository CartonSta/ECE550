-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "10/05/2017 09:58:11"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vgacontroller IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	VGA_R : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA_CLK : BUFFER std_logic;
	VGA_BLANK : BUFFER std_logic;
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	VGA_SYNC : BUFFER std_logic
	);
END vgacontroller;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_CLK	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_BLANK	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_HS	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_SYNC	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF vgacontroller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_BLANK : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_SYNC : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pll0|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll0|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \myvga0|countX_next[0]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \myvga0|FMX:0:FMX_dff~q\ : std_logic;
SIGNAL \myvga0|ChangeCountX|REST:1:Add|sum~combout\ : std_logic;
SIGNAL \myvga0|FMX:1:FMX_dff~q\ : std_logic;
SIGNAL \myvga0|ChangeCountX|REST:2:Add|sum~combout\ : std_logic;
SIGNAL \myvga0|FMX:2:FMX_dff~q\ : std_logic;
SIGNAL \myvga0|ChangeCountX|REST:3:Add|sum~combout\ : std_logic;
SIGNAL \myvga0|FMX:3:FMX_dff~q\ : std_logic;
SIGNAL \myvga0|Equal0~0_combout\ : std_logic;
SIGNAL \myvga0|ChangeCountX|REST:4:Add|sum~combout\ : std_logic;
SIGNAL \myvga0|FMX:4:FMX_dff~q\ : std_logic;
SIGNAL \myvga0|ChangeCountX|REST:5:Add|sum~combout\ : std_logic;
SIGNAL \myvga0|FMX:5:FMX_dff~q\ : std_logic;
SIGNAL \myvga0|ChangeCountX|REST:6:Add|sum~combout\ : std_logic;
SIGNAL \myvga0|FMX:6:FMX_dff~q\ : std_logic;
SIGNAL \myvga0|ChangeCountX|REST:6:Add|carry~0_combout\ : std_logic;
SIGNAL \myvga0|ChangeCountX|REST:7:Add|sum~combout\ : std_logic;
SIGNAL \myvga0|FMX:7:FMX_dff~q\ : std_logic;
SIGNAL \myvga0|ChangeCountX|REST:8:Add|sum~combout\ : std_logic;
SIGNAL \myvga0|FMX:8:FMX_dff~q\ : std_logic;
SIGNAL \myvga0|ChangeCountX|REST:9:Add|sum~combout\ : std_logic;
SIGNAL \myvga0|FMX:9:FMX_dff~q\ : std_logic;
SIGNAL \myvga0|Equal0~1_combout\ : std_logic;
SIGNAL \myvga0|Equal0~2_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \myvga0|FMY:0:FMY_dff~0_combout\ : std_logic;
SIGNAL \myvga0|FMY:0:FMY_dff~q\ : std_logic;
SIGNAL \myvga0|FMY:1:FMY_dff~0_combout\ : std_logic;
SIGNAL \myvga0|FMY:1:FMY_dff~q\ : std_logic;
SIGNAL \myvga0|ChangeCountY|REST:1:Add|carry~0_combout\ : std_logic;
SIGNAL \myvga0|countY_next[3]~3_combout\ : std_logic;
SIGNAL \myvga0|FMY:3:FMY_dff~q\ : std_logic;
SIGNAL \myvga0|FMY:4:FMY_dff~0_combout\ : std_logic;
SIGNAL \myvga0|FMY:4:FMY_dff~q\ : std_logic;
SIGNAL \myvga0|countY_next[9]~2_combout\ : std_logic;
SIGNAL \myvga0|FMY:9:FMY_dff~q\ : std_logic;
SIGNAL \myvga0|Equal1~0_combout\ : std_logic;
SIGNAL \myvga0|Equal1~1_combout\ : std_logic;
SIGNAL \myvga0|Equal1~2_combout\ : std_logic;
SIGNAL \myvga0|countY_next[2]~4_combout\ : std_logic;
SIGNAL \myvga0|FMY:2:FMY_dff~q\ : std_logic;
SIGNAL \myvga0|ChangeCountY|REST:4:Add|carry~0_combout\ : std_logic;
SIGNAL \myvga0|FMY:5:FMY_dff~0_combout\ : std_logic;
SIGNAL \myvga0|FMY:5:FMY_dff~q\ : std_logic;
SIGNAL \myvga0|FMY:6:FMY_dff~0_combout\ : std_logic;
SIGNAL \myvga0|FMY:6:FMY_dff~feeder_combout\ : std_logic;
SIGNAL \myvga0|FMY:6:FMY_dff~q\ : std_logic;
SIGNAL \myvga0|FMY:7:FMY_dff~0_combout\ : std_logic;
SIGNAL \myvga0|FMY:7:FMY_dff~feeder_combout\ : std_logic;
SIGNAL \myvga0|FMY:7:FMY_dff~q\ : std_logic;
SIGNAL \myvga0|ChangeCountY|REST:7:Add|carry~0_combout\ : std_logic;
SIGNAL \myvga0|ChangeCountY|REST:7:Add|carry~1_combout\ : std_logic;
SIGNAL \myvga0|FMY:8:FMY_dff~0_combout\ : std_logic;
SIGNAL \myvga0|FMY:8:FMY_dff~feeder_combout\ : std_logic;
SIGNAL \myvga0|FMY:8:FMY_dff~q\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~1_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs602w[0]~0_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~0_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~2_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a33~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs602w[0]~1_combout\ : std_logic;
SIGNAL \myvga0|vsync~0_combout\ : std_logic;
SIGNAL \myvga0|blank~0_combout\ : std_logic;
SIGNAL \myvga0|blank~1_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode247w[3]~0_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a42~portadataout\ : std_logic;
SIGNAL \myvga0|red[5]~0_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a34~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs650w[0]~0_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs650w[0]~1_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a43~portadataout\ : std_logic;
SIGNAL \myvga0|red[6]~1_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a44~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a35~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs698w[0]~0_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs698w[0]~1_combout\ : std_logic;
SIGNAL \myvga0|red[7]~2_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs458w[0]~0_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs458w[0]~1_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a39~portadataout\ : std_logic;
SIGNAL \myvga0|green[5]~0_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs506w[0]~0_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs506w[0]~1_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a40~portadataout\ : std_logic;
SIGNAL \myvga0|green[6]~1_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a41~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a32~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs554w[0]~0_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs554w[0]~1_combout\ : std_logic;
SIGNAL \myvga0|green[7]~2_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs314w[0]~0_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs314w[0]~1_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a36~portadataout\ : std_logic;
SIGNAL \myvga0|blue[5]~0_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs362w[0]~0_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs362w[0]~1_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a37~portadataout\ : std_logic;
SIGNAL \myvga0|blue[6]~1_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a38~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs410w[0]~0_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs410w[0]~1_combout\ : std_logic;
SIGNAL \myvga0|blue[7]~2_combout\ : std_logic;
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \myvga0|hsync~0_combout\ : std_logic;
SIGNAL \myvga0|hsync~1_combout\ : std_logic;
SIGNAL \myvga0|vsync~1_combout\ : std_logic;
SIGNAL \myvga0|vsync~2_combout\ : std_logic;
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \myvga0|ColorGet|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \myvga0|ALT_INV_vsync~2_combout\ : std_logic;
SIGNAL \myvga0|ALT_INV_hsync~1_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_CLK <= ww_VGA_CLK;
VGA_BLANK <= ww_VGA_BLANK;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_SYNC <= ww_VGA_SYNC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a42~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a24~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a33~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a43~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a16~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a25~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a34~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a44~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a26~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a17~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a35~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a39~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a21~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a30~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a40~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a22~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a31~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a41~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a23~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a32~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a36~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a18~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a27~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a37~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a19~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a28~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a38~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a20~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|FMY:4:FMY_dff~q\ & \myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\ & \myvga0|FMY:0:FMY_dff~q\ & 
\myvga0|FMX:9:FMX_dff~q\ & \myvga0|FMX:8:FMX_dff~q\ & \myvga0|FMX:7:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\ & \myvga0|FMX:5:FMX_dff~q\ & \myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:3:FMX_dff~q\);

\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a29~portadataout\ <= \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\pll0|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\pll0|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll0|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll0|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll0|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll0|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll0|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll0|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll0|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll0|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll0|altpll_component|auto_generated|pll1_CLK_bus\(4);

\pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll0|altpll_component|auto_generated|wire_pll1_clk\(1));

\pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll0|altpll_component|auto_generated|wire_pll1_clk\(0));

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);
\myvga0|ALT_INV_vsync~2_combout\ <= NOT \myvga0|vsync~2_combout\;
\myvga0|ALT_INV_hsync~1_combout\ <= NOT \myvga0|hsync~1_combout\;

-- Location: IOOBUF_X33_Y73_N2
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X31_Y73_N2
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X35_Y73_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X33_Y73_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X20_Y73_N9
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X40_Y73_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myvga0|red[5]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X11_Y73_N23
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myvga0|red[6]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X20_Y73_N16
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myvga0|red[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X11_Y73_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X25_Y73_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X11_Y73_N9
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X25_Y73_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X16_Y73_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X16_Y73_N2
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myvga0|green[5]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X20_Y73_N2
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myvga0|green[6]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X23_Y73_N16
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myvga0|green[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X38_Y73_N9
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X38_Y73_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X23_Y73_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X42_Y73_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X42_Y73_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X52_Y73_N16
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myvga0|blue[5]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X23_Y73_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myvga0|blue[6]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X52_Y73_N23
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myvga0|blue[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOOBUF_X47_Y73_N2
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOOBUF_X31_Y73_N9
\VGA_BLANK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myvga0|blank~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_BLANK);

-- Location: IOOBUF_X38_Y73_N16
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myvga0|ALT_INV_hsync~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X54_Y73_N2
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \myvga0|ALT_INV_vsync~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X35_Y73_N16
\VGA_SYNC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_SYNC);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_1
\pll0|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 11,
	c0_initial => 1,
	c0_low => 10,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 11,
	c1_initial => 11,
	c1_low => 10,
	c1_mode => "odd",
	c1_ph => 4,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 147,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 74,
	clk0_phase_shift => "0",
	clk1_counter => "c1",
	clk1_divide_by => 147,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 74,
	clk1_phase_shift => "19865",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 16,
	m => 74,
	m_initial => 1,
	m_ph => 0,
	n => 7,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 236,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \pll0|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \pll0|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \pll0|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \pll0|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X57_Y23_N2
\myvga0|countX_next[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|countX_next[0]~0_combout\ = (!\rtl~0_combout\ & !\myvga0|FMX:0:FMX_dff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0_combout\,
	datac => \myvga0|FMX:0:FMX_dff~q\,
	combout => \myvga0|countX_next[0]~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X57_Y23_N3
\myvga0|FMX:0:FMX_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \myvga0|countX_next[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMX:0:FMX_dff~q\);

-- Location: LCCOMB_X57_Y23_N22
\myvga0|ChangeCountX|REST:1:Add|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ChangeCountX|REST:1:Add|sum~combout\ = \myvga0|FMX:0:FMX_dff~q\ $ (\myvga0|FMX:1:FMX_dff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myvga0|FMX:0:FMX_dff~q\,
	datac => \myvga0|FMX:1:FMX_dff~q\,
	combout => \myvga0|ChangeCountX|REST:1:Add|sum~combout\);

-- Location: FF_X57_Y23_N23
\myvga0|FMX:1:FMX_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \myvga0|ChangeCountX|REST:1:Add|sum~combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMX:1:FMX_dff~q\);

-- Location: LCCOMB_X57_Y23_N16
\myvga0|ChangeCountX|REST:2:Add|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ChangeCountX|REST:2:Add|sum~combout\ = \myvga0|FMX:2:FMX_dff~q\ $ (((\myvga0|FMX:1:FMX_dff~q\ & \myvga0|FMX:0:FMX_dff~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMX:1:FMX_dff~q\,
	datab => \myvga0|FMX:0:FMX_dff~q\,
	datac => \myvga0|FMX:2:FMX_dff~q\,
	combout => \myvga0|ChangeCountX|REST:2:Add|sum~combout\);

-- Location: FF_X57_Y23_N17
\myvga0|FMX:2:FMX_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \myvga0|ChangeCountX|REST:2:Add|sum~combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMX:2:FMX_dff~q\);

-- Location: LCCOMB_X57_Y23_N10
\myvga0|ChangeCountX|REST:3:Add|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ChangeCountX|REST:3:Add|sum~combout\ = \myvga0|FMX:3:FMX_dff~q\ $ (((\myvga0|FMX:0:FMX_dff~q\ & (\myvga0|FMX:2:FMX_dff~q\ & \myvga0|FMX:1:FMX_dff~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMX:0:FMX_dff~q\,
	datab => \myvga0|FMX:2:FMX_dff~q\,
	datac => \myvga0|FMX:3:FMX_dff~q\,
	datad => \myvga0|FMX:1:FMX_dff~q\,
	combout => \myvga0|ChangeCountX|REST:3:Add|sum~combout\);

-- Location: FF_X57_Y23_N11
\myvga0|FMX:3:FMX_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \myvga0|ChangeCountX|REST:3:Add|sum~combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMX:3:FMX_dff~q\);

-- Location: LCCOMB_X57_Y23_N18
\myvga0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|Equal0~0_combout\ = (\myvga0|FMX:1:FMX_dff~q\ & (\myvga0|FMX:2:FMX_dff~q\ & (\myvga0|FMX:3:FMX_dff~q\ & \myvga0|FMX:0:FMX_dff~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMX:1:FMX_dff~q\,
	datab => \myvga0|FMX:2:FMX_dff~q\,
	datac => \myvga0|FMX:3:FMX_dff~q\,
	datad => \myvga0|FMX:0:FMX_dff~q\,
	combout => \myvga0|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y23_N28
\myvga0|ChangeCountX|REST:4:Add|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ChangeCountX|REST:4:Add|sum~combout\ = \myvga0|Equal0~0_combout\ $ (\myvga0|FMX:4:FMX_dff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myvga0|Equal0~0_combout\,
	datac => \myvga0|FMX:4:FMX_dff~q\,
	combout => \myvga0|ChangeCountX|REST:4:Add|sum~combout\);

-- Location: FF_X57_Y23_N29
\myvga0|FMX:4:FMX_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \myvga0|ChangeCountX|REST:4:Add|sum~combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMX:4:FMX_dff~q\);

-- Location: LCCOMB_X57_Y23_N6
\myvga0|ChangeCountX|REST:5:Add|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ChangeCountX|REST:5:Add|sum~combout\ = \myvga0|FMX:5:FMX_dff~q\ $ (((\myvga0|Equal0~0_combout\ & \myvga0|FMX:4:FMX_dff~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myvga0|Equal0~0_combout\,
	datac => \myvga0|FMX:5:FMX_dff~q\,
	datad => \myvga0|FMX:4:FMX_dff~q\,
	combout => \myvga0|ChangeCountX|REST:5:Add|sum~combout\);

-- Location: FF_X57_Y23_N7
\myvga0|FMX:5:FMX_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \myvga0|ChangeCountX|REST:5:Add|sum~combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMX:5:FMX_dff~q\);

-- Location: LCCOMB_X57_Y23_N20
\myvga0|ChangeCountX|REST:6:Add|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ChangeCountX|REST:6:Add|sum~combout\ = \myvga0|FMX:6:FMX_dff~q\ $ (((\myvga0|FMX:5:FMX_dff~q\ & (\myvga0|Equal0~0_combout\ & \myvga0|FMX:4:FMX_dff~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMX:5:FMX_dff~q\,
	datab => \myvga0|Equal0~0_combout\,
	datac => \myvga0|FMX:6:FMX_dff~q\,
	datad => \myvga0|FMX:4:FMX_dff~q\,
	combout => \myvga0|ChangeCountX|REST:6:Add|sum~combout\);

-- Location: FF_X57_Y23_N21
\myvga0|FMX:6:FMX_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \myvga0|ChangeCountX|REST:6:Add|sum~combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMX:6:FMX_dff~q\);

-- Location: LCCOMB_X57_Y23_N0
\myvga0|ChangeCountX|REST:6:Add|carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ChangeCountX|REST:6:Add|carry~0_combout\ = (\myvga0|FMX:6:FMX_dff~q\ & (\myvga0|FMX:4:FMX_dff~q\ & (\myvga0|FMX:5:FMX_dff~q\ & \myvga0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMX:6:FMX_dff~q\,
	datab => \myvga0|FMX:4:FMX_dff~q\,
	datac => \myvga0|FMX:5:FMX_dff~q\,
	datad => \myvga0|Equal0~0_combout\,
	combout => \myvga0|ChangeCountX|REST:6:Add|carry~0_combout\);

-- Location: LCCOMB_X57_Y23_N30
\myvga0|ChangeCountX|REST:7:Add|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ChangeCountX|REST:7:Add|sum~combout\ = \myvga0|FMX:7:FMX_dff~q\ $ (\myvga0|ChangeCountX|REST:6:Add|carry~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myvga0|FMX:7:FMX_dff~q\,
	datad => \myvga0|ChangeCountX|REST:6:Add|carry~0_combout\,
	combout => \myvga0|ChangeCountX|REST:7:Add|sum~combout\);

-- Location: FF_X57_Y23_N31
\myvga0|FMX:7:FMX_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \myvga0|ChangeCountX|REST:7:Add|sum~combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMX:7:FMX_dff~q\);

-- Location: LCCOMB_X57_Y23_N14
\myvga0|ChangeCountX|REST:8:Add|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ChangeCountX|REST:8:Add|sum~combout\ = \myvga0|FMX:8:FMX_dff~q\ $ (((\myvga0|FMX:7:FMX_dff~q\ & \myvga0|ChangeCountX|REST:6:Add|carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMX:7:FMX_dff~q\,
	datac => \myvga0|FMX:8:FMX_dff~q\,
	datad => \myvga0|ChangeCountX|REST:6:Add|carry~0_combout\,
	combout => \myvga0|ChangeCountX|REST:8:Add|sum~combout\);

-- Location: FF_X57_Y23_N15
\myvga0|FMX:8:FMX_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \myvga0|ChangeCountX|REST:8:Add|sum~combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMX:8:FMX_dff~q\);

-- Location: LCCOMB_X57_Y23_N26
\myvga0|ChangeCountX|REST:9:Add|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ChangeCountX|REST:9:Add|sum~combout\ = \myvga0|FMX:9:FMX_dff~q\ $ (((\myvga0|FMX:7:FMX_dff~q\ & (\myvga0|FMX:8:FMX_dff~q\ & \myvga0|ChangeCountX|REST:6:Add|carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMX:7:FMX_dff~q\,
	datab => \myvga0|FMX:8:FMX_dff~q\,
	datac => \myvga0|FMX:9:FMX_dff~q\,
	datad => \myvga0|ChangeCountX|REST:6:Add|carry~0_combout\,
	combout => \myvga0|ChangeCountX|REST:9:Add|sum~combout\);

-- Location: FF_X57_Y23_N27
\myvga0|FMX:9:FMX_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \myvga0|ChangeCountX|REST:9:Add|sum~combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMX:9:FMX_dff~q\);

-- Location: LCCOMB_X57_Y23_N4
\myvga0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|Equal0~1_combout\ = (\myvga0|FMX:9:FMX_dff~q\ & (!\myvga0|FMX:6:FMX_dff~q\ & (\myvga0|FMX:8:FMX_dff~q\ & !\myvga0|FMX:5:FMX_dff~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMX:9:FMX_dff~q\,
	datab => \myvga0|FMX:6:FMX_dff~q\,
	datac => \myvga0|FMX:8:FMX_dff~q\,
	datad => \myvga0|FMX:5:FMX_dff~q\,
	combout => \myvga0|Equal0~1_combout\);

-- Location: LCCOMB_X57_Y23_N8
\myvga0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|Equal0~2_combout\ = (\myvga0|FMX:3:FMX_dff~q\ & (\myvga0|Equal0~1_combout\ & (\myvga0|FMX:1:FMX_dff~q\ & \myvga0|FMX:2:FMX_dff~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMX:3:FMX_dff~q\,
	datab => \myvga0|Equal0~1_combout\,
	datac => \myvga0|FMX:1:FMX_dff~q\,
	datad => \myvga0|FMX:2:FMX_dff~q\,
	combout => \myvga0|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y23_N24
\rtl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((!\myvga0|FMX:7:FMX_dff~q\ & (\myvga0|FMX:4:FMX_dff~q\ & (\myvga0|Equal0~2_combout\ & \myvga0|FMX:0:FMX_dff~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMX:7:FMX_dff~q\,
	datab => \myvga0|FMX:4:FMX_dff~q\,
	datac => \myvga0|Equal0~2_combout\,
	datad => \myvga0|FMX:0:FMX_dff~q\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G18
\rtl~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X53_Y34_N8
\myvga0|FMY:0:FMY_dff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|FMY:0:FMY_dff~0_combout\ = !\myvga0|FMY:0:FMY_dff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myvga0|FMY:0:FMY_dff~q\,
	combout => \myvga0|FMY:0:FMY_dff~0_combout\);

-- Location: FF_X53_Y34_N9
\myvga0|FMY:0:FMY_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \myvga0|FMY:0:FMY_dff~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMY:0:FMY_dff~q\);

-- Location: LCCOMB_X53_Y34_N10
\myvga0|FMY:1:FMY_dff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|FMY:1:FMY_dff~0_combout\ = \myvga0|FMY:1:FMY_dff~q\ $ (\myvga0|FMY:0:FMY_dff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myvga0|FMY:1:FMY_dff~q\,
	datad => \myvga0|FMY:0:FMY_dff~q\,
	combout => \myvga0|FMY:1:FMY_dff~0_combout\);

-- Location: FF_X53_Y34_N11
\myvga0|FMY:1:FMY_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \myvga0|FMY:1:FMY_dff~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMY:1:FMY_dff~q\);

-- Location: LCCOMB_X53_Y34_N0
\myvga0|ChangeCountY|REST:1:Add|carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ChangeCountY|REST:1:Add|carry~0_combout\ = (\myvga0|FMY:0:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myvga0|FMY:0:FMY_dff~q\,
	datad => \myvga0|FMY:1:FMY_dff~q\,
	combout => \myvga0|ChangeCountY|REST:1:Add|carry~0_combout\);

-- Location: LCCOMB_X53_Y34_N4
\myvga0|countY_next[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|countY_next[3]~3_combout\ = (!\myvga0|Equal1~2_combout\ & (\myvga0|FMY:3:FMY_dff~q\ $ (((\myvga0|FMY:2:FMY_dff~q\ & \myvga0|ChangeCountY|REST:1:Add|carry~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMY:2:FMY_dff~q\,
	datab => \myvga0|ChangeCountY|REST:1:Add|carry~0_combout\,
	datac => \myvga0|FMY:3:FMY_dff~q\,
	datad => \myvga0|Equal1~2_combout\,
	combout => \myvga0|countY_next[3]~3_combout\);

-- Location: FF_X53_Y34_N5
\myvga0|FMY:3:FMY_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \myvga0|countY_next[3]~3_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMY:3:FMY_dff~q\);

-- Location: LCCOMB_X53_Y34_N22
\myvga0|FMY:4:FMY_dff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|FMY:4:FMY_dff~0_combout\ = \myvga0|FMY:4:FMY_dff~q\ $ (((\myvga0|FMY:2:FMY_dff~q\ & (\myvga0|FMY:3:FMY_dff~q\ & \myvga0|ChangeCountY|REST:1:Add|carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMY:2:FMY_dff~q\,
	datab => \myvga0|FMY:3:FMY_dff~q\,
	datac => \myvga0|FMY:4:FMY_dff~q\,
	datad => \myvga0|ChangeCountY|REST:1:Add|carry~0_combout\,
	combout => \myvga0|FMY:4:FMY_dff~0_combout\);

-- Location: FF_X53_Y34_N23
\myvga0|FMY:4:FMY_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \myvga0|FMY:4:FMY_dff~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMY:4:FMY_dff~q\);

-- Location: LCCOMB_X53_Y34_N20
\myvga0|countY_next[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|countY_next[9]~2_combout\ = (!\myvga0|Equal1~2_combout\ & (\myvga0|FMY:9:FMY_dff~q\ $ (((\myvga0|FMY:8:FMY_dff~q\ & \myvga0|ChangeCountY|REST:7:Add|carry~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMY:8:FMY_dff~q\,
	datab => \myvga0|ChangeCountY|REST:7:Add|carry~1_combout\,
	datac => \myvga0|FMY:9:FMY_dff~q\,
	datad => \myvga0|Equal1~2_combout\,
	combout => \myvga0|countY_next[9]~2_combout\);

-- Location: FF_X53_Y34_N21
\myvga0|FMY:9:FMY_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \myvga0|countY_next[9]~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMY:9:FMY_dff~q\);

-- Location: LCCOMB_X52_Y34_N16
\myvga0|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|Equal1~0_combout\ = (!\myvga0|FMY:7:FMY_dff~q\ & (!\myvga0|FMY:8:FMY_dff~q\ & !\myvga0|FMY:6:FMY_dff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myvga0|FMY:7:FMY_dff~q\,
	datac => \myvga0|FMY:8:FMY_dff~q\,
	datad => \myvga0|FMY:6:FMY_dff~q\,
	combout => \myvga0|Equal1~0_combout\);

-- Location: LCCOMB_X52_Y34_N22
\myvga0|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|Equal1~1_combout\ = (\myvga0|FMY:9:FMY_dff~q\ & (!\myvga0|FMY:5:FMY_dff~q\ & (!\myvga0|FMY:2:FMY_dff~q\ & \myvga0|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMY:9:FMY_dff~q\,
	datab => \myvga0|FMY:5:FMY_dff~q\,
	datac => \myvga0|FMY:2:FMY_dff~q\,
	datad => \myvga0|Equal1~0_combout\,
	combout => \myvga0|Equal1~1_combout\);

-- Location: LCCOMB_X53_Y34_N6
\myvga0|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|Equal1~2_combout\ = (!\myvga0|FMY:4:FMY_dff~q\ & (\myvga0|ChangeCountY|REST:1:Add|carry~0_combout\ & (\myvga0|FMY:3:FMY_dff~q\ & \myvga0|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMY:4:FMY_dff~q\,
	datab => \myvga0|ChangeCountY|REST:1:Add|carry~0_combout\,
	datac => \myvga0|FMY:3:FMY_dff~q\,
	datad => \myvga0|Equal1~1_combout\,
	combout => \myvga0|Equal1~2_combout\);

-- Location: LCCOMB_X53_Y34_N12
\myvga0|countY_next[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|countY_next[2]~4_combout\ = (!\myvga0|Equal1~2_combout\ & (\myvga0|FMY:2:FMY_dff~q\ $ (((\myvga0|FMY:0:FMY_dff~q\ & \myvga0|FMY:1:FMY_dff~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMY:0:FMY_dff~q\,
	datab => \myvga0|FMY:1:FMY_dff~q\,
	datac => \myvga0|FMY:2:FMY_dff~q\,
	datad => \myvga0|Equal1~2_combout\,
	combout => \myvga0|countY_next[2]~4_combout\);

-- Location: FF_X53_Y34_N13
\myvga0|FMY:2:FMY_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \myvga0|countY_next[2]~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMY:2:FMY_dff~q\);

-- Location: LCCOMB_X53_Y34_N28
\myvga0|ChangeCountY|REST:4:Add|carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ChangeCountY|REST:4:Add|carry~0_combout\ = (\myvga0|FMY:2:FMY_dff~q\ & (\myvga0|FMY:3:FMY_dff~q\ & (\myvga0|FMY:4:FMY_dff~q\ & \myvga0|ChangeCountY|REST:1:Add|carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMY:2:FMY_dff~q\,
	datab => \myvga0|FMY:3:FMY_dff~q\,
	datac => \myvga0|FMY:4:FMY_dff~q\,
	datad => \myvga0|ChangeCountY|REST:1:Add|carry~0_combout\,
	combout => \myvga0|ChangeCountY|REST:4:Add|carry~0_combout\);

-- Location: LCCOMB_X53_Y34_N14
\myvga0|FMY:5:FMY_dff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|FMY:5:FMY_dff~0_combout\ = \myvga0|FMY:5:FMY_dff~q\ $ (\myvga0|ChangeCountY|REST:4:Add|carry~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myvga0|FMY:5:FMY_dff~q\,
	datad => \myvga0|ChangeCountY|REST:4:Add|carry~0_combout\,
	combout => \myvga0|FMY:5:FMY_dff~0_combout\);

-- Location: FF_X53_Y34_N15
\myvga0|FMY:5:FMY_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \myvga0|FMY:5:FMY_dff~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMY:5:FMY_dff~q\);

-- Location: LCCOMB_X52_Y34_N28
\myvga0|FMY:6:FMY_dff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|FMY:6:FMY_dff~0_combout\ = \myvga0|FMY:6:FMY_dff~q\ $ (((\myvga0|FMY:5:FMY_dff~q\ & \myvga0|ChangeCountY|REST:4:Add|carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMY:6:FMY_dff~q\,
	datab => \myvga0|FMY:5:FMY_dff~q\,
	datad => \myvga0|ChangeCountY|REST:4:Add|carry~0_combout\,
	combout => \myvga0|FMY:6:FMY_dff~0_combout\);

-- Location: LCCOMB_X52_Y34_N18
\myvga0|FMY:6:FMY_dff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|FMY:6:FMY_dff~feeder_combout\ = \myvga0|FMY:6:FMY_dff~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myvga0|FMY:6:FMY_dff~0_combout\,
	combout => \myvga0|FMY:6:FMY_dff~feeder_combout\);

-- Location: FF_X52_Y34_N19
\myvga0|FMY:6:FMY_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \myvga0|FMY:6:FMY_dff~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMY:6:FMY_dff~q\);

-- Location: LCCOMB_X52_Y34_N10
\myvga0|FMY:7:FMY_dff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|FMY:7:FMY_dff~0_combout\ = \myvga0|FMY:7:FMY_dff~q\ $ (((\myvga0|FMY:6:FMY_dff~q\ & (\myvga0|FMY:5:FMY_dff~q\ & \myvga0|ChangeCountY|REST:4:Add|carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMY:6:FMY_dff~q\,
	datab => \myvga0|FMY:7:FMY_dff~q\,
	datac => \myvga0|FMY:5:FMY_dff~q\,
	datad => \myvga0|ChangeCountY|REST:4:Add|carry~0_combout\,
	combout => \myvga0|FMY:7:FMY_dff~0_combout\);

-- Location: LCCOMB_X52_Y34_N8
\myvga0|FMY:7:FMY_dff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|FMY:7:FMY_dff~feeder_combout\ = \myvga0|FMY:7:FMY_dff~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myvga0|FMY:7:FMY_dff~0_combout\,
	combout => \myvga0|FMY:7:FMY_dff~feeder_combout\);

-- Location: FF_X52_Y34_N9
\myvga0|FMY:7:FMY_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \myvga0|FMY:7:FMY_dff~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMY:7:FMY_dff~q\);

-- Location: LCCOMB_X53_Y34_N26
\myvga0|ChangeCountY|REST:7:Add|carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ChangeCountY|REST:7:Add|carry~0_combout\ = (\myvga0|FMY:4:FMY_dff~q\ & (\myvga0|FMY:5:FMY_dff~q\ & (\myvga0|FMY:3:FMY_dff~q\ & \myvga0|FMY:2:FMY_dff~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMY:4:FMY_dff~q\,
	datab => \myvga0|FMY:5:FMY_dff~q\,
	datac => \myvga0|FMY:3:FMY_dff~q\,
	datad => \myvga0|FMY:2:FMY_dff~q\,
	combout => \myvga0|ChangeCountY|REST:7:Add|carry~0_combout\);

-- Location: LCCOMB_X53_Y34_N24
\myvga0|ChangeCountY|REST:7:Add|carry~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ChangeCountY|REST:7:Add|carry~1_combout\ = (\myvga0|FMY:7:FMY_dff~q\ & (\myvga0|FMY:6:FMY_dff~q\ & (\myvga0|ChangeCountY|REST:7:Add|carry~0_combout\ & \myvga0|ChangeCountY|REST:1:Add|carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMY:7:FMY_dff~q\,
	datab => \myvga0|FMY:6:FMY_dff~q\,
	datac => \myvga0|ChangeCountY|REST:7:Add|carry~0_combout\,
	datad => \myvga0|ChangeCountY|REST:1:Add|carry~0_combout\,
	combout => \myvga0|ChangeCountY|REST:7:Add|carry~1_combout\);

-- Location: LCCOMB_X52_Y34_N24
\myvga0|FMY:8:FMY_dff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|FMY:8:FMY_dff~0_combout\ = \myvga0|FMY:8:FMY_dff~q\ $ (\myvga0|ChangeCountY|REST:7:Add|carry~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMY:8:FMY_dff~q\,
	datad => \myvga0|ChangeCountY|REST:7:Add|carry~1_combout\,
	combout => \myvga0|FMY:8:FMY_dff~0_combout\);

-- Location: LCCOMB_X52_Y34_N30
\myvga0|FMY:8:FMY_dff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|FMY:8:FMY_dff~feeder_combout\ = \myvga0|FMY:8:FMY_dff~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myvga0|FMY:8:FMY_dff~0_combout\,
	combout => \myvga0|FMY:8:FMY_dff~feeder_combout\);

-- Location: FF_X52_Y34_N31
\myvga0|FMY:8:FMY_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \myvga0|FMY:8:FMY_dff~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|FMY:8:FMY_dff~q\);

-- Location: LCCOMB_X52_Y34_N6
\myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~1_combout\ = (!\myvga0|FMY:8:FMY_dff~q\ & (!\myvga0|FMY:7:FMY_dff~q\ & \myvga0|FMY:6:FMY_dff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMY:8:FMY_dff~q\,
	datac => \myvga0|FMY:7:FMY_dff~q\,
	datad => \myvga0|FMY:6:FMY_dff~q\,
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~1_combout\);

-- Location: M9K_X37_Y37_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000",
	mem_init0 => X"FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~1_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: FF_X52_Y34_N25
\myvga0|ColorGet|altsyncram_component|auto_generated|address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \myvga0|FMY:7:FMY_dff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|ColorGet|altsyncram_component|auto_generated|address_reg_a\(1));

-- Location: FF_X52_Y35_N7
\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \myvga0|ColorGet|altsyncram_component|auto_generated|address_reg_a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1));

-- Location: M9K_X37_Y34_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000FFE007FC00FF803FF000001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001F",
	mem_init2 => X"F803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF0",
	mem_init1 => X"07FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FF001FF803FF003FF007FFFFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC",
	mem_init0 => X"00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|Equal1~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y34_N4
\myvga0|ColorGet|altsyncram_component|auto_generated|address_reg_a[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ = \myvga0|FMY:6:FMY_dff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myvga0|FMY:6:FMY_dff~q\,
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\);

-- Location: FF_X52_Y34_N5
\myvga0|ColorGet|altsyncram_component|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \myvga0|ColorGet|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|ColorGet|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: FF_X52_Y35_N13
\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \myvga0|ColorGet|altsyncram_component|auto_generated|address_reg_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0));

-- Location: LCCOMB_X45_Y35_N12
\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs602w[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs602w[0]~0_combout\ = (\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a15~portadataout\)) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a6~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a15~portadataout\,
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs602w[0]~0_combout\);

-- Location: LCCOMB_X52_Y34_N12
\myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~0_combout\ = (!\myvga0|FMY:8:FMY_dff~q\ & (\myvga0|FMY:7:FMY_dff~q\ & !\myvga0|FMY:6:FMY_dff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMY:8:FMY_dff~q\,
	datac => \myvga0|FMY:7:FMY_dff~q\,
	datad => \myvga0|FMY:6:FMY_dff~q\,
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~0_combout\);

-- Location: M9K_X51_Y22_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FF",
	mem_init2 => X"FFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFC",
	mem_init1 => X"F80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFC001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE00",
	mem_init0 => X"7FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y34_N2
\myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~2_combout\ = (!\myvga0|FMY:8:FMY_dff~q\ & (\myvga0|FMY:7:FMY_dff~q\ & \myvga0|FMY:6:FMY_dff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMY:8:FMY_dff~q\,
	datac => \myvga0|FMY:7:FMY_dff~q\,
	datad => \myvga0|FMY:6:FMY_dff~q\,
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~2_combout\);

-- Location: M9K_X37_Y38_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a33\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000FFFF8000E38E3C000000FFFF8000E38E1C000000FFFF8000E38F1C000000FFFF8000E3871C000000FFFF8000E3871C000000FFFF8000E3871C000000FFFF8000E3C71C000000FFFF807FE1C71C000000FFFFFFFFF1C71C000000FFFFFFFFF1C71C000000FFFFFFFFF1C71C000000FFFFFFFFF1C71C000000FFFFFFFFF1C71C000000FFFFFFFFF1C71C000000FFFFFFFFF1C71C000000FFFFFFFFF1C71C000000FFFFFFFFF1C71C000000FFFFFFFFF1C71C000000FFFFFFFFF1C71C000000FFFFFFFFF1C71C000000FFFFFFFFF1C71C000000FFFFFFFFF1C71C000000FFFFFFFFF1C71E000000FFFFFFFFF1C70E0000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800",
	mem_init0 => X"01FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~2_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y35_N22
\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs602w[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs602w[0]~1_combout\ = (\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs602w[0]~0_combout\ & 
-- (((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a33~portadataout\) # (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs602w[0]~0_combout\ & (\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a24~portadataout\ & 
-- (\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs602w[0]~0_combout\,
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a24~portadataout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a33~portadataout\,
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs602w[0]~1_combout\);

-- Location: LCCOMB_X53_Y34_N16
\myvga0|vsync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|vsync~0_combout\ = (\myvga0|FMY:8:FMY_dff~q\ & (\myvga0|FMY:5:FMY_dff~q\ & (\myvga0|FMY:7:FMY_dff~q\ & \myvga0|FMY:6:FMY_dff~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMY:8:FMY_dff~q\,
	datab => \myvga0|FMY:5:FMY_dff~q\,
	datac => \myvga0|FMY:7:FMY_dff~q\,
	datad => \myvga0|FMY:6:FMY_dff~q\,
	combout => \myvga0|vsync~0_combout\);

-- Location: LCCOMB_X52_Y34_N0
\myvga0|blank~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|blank~0_combout\ = (!\myvga0|FMY:9:FMY_dff~q\ & (((!\myvga0|FMX:8:FMX_dff~q\ & !\myvga0|FMX:7:FMX_dff~q\)) # (!\myvga0|FMX:9:FMX_dff~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMX:8:FMX_dff~q\,
	datab => \myvga0|FMX:9:FMX_dff~q\,
	datac => \myvga0|FMX:7:FMX_dff~q\,
	datad => \myvga0|FMY:9:FMY_dff~q\,
	combout => \myvga0|blank~0_combout\);

-- Location: LCCOMB_X52_Y35_N0
\myvga0|blank~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|blank~1_combout\ = (!\myvga0|vsync~0_combout\ & \myvga0|blank~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myvga0|vsync~0_combout\,
	datad => \myvga0|blank~0_combout\,
	combout => \myvga0|blank~1_combout\);

-- Location: FF_X52_Y34_N29
\myvga0|ColorGet|altsyncram_component|auto_generated|address_reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \myvga0|FMY:8:FMY_dff~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|ColorGet|altsyncram_component|auto_generated|address_reg_a\(2));

-- Location: FF_X52_Y35_N11
\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \myvga0|ColorGet|altsyncram_component|auto_generated|address_reg_a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2));

-- Location: LCCOMB_X52_Y34_N14
\myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode247w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode247w[3]~0_combout\ = (\myvga0|FMY:8:FMY_dff~q\ & (!\myvga0|FMY:7:FMY_dff~q\ & !\myvga0|FMY:6:FMY_dff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMY:8:FMY_dff~q\,
	datac => \myvga0|FMY:7:FMY_dff~q\,
	datad => \myvga0|FMY:6:FMY_dff~q\,
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode247w[3]~0_combout\);

-- Location: M9K_X37_Y31_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a42\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001C71C0000000FFFF80001C71C0000000FFFF80001C71C0000000FFFF80001C71C0000000FFFF80001C71C0000000FFFF80001C71C0000000FFFF80001C71E0000000FFFF80001C70E0000000FFFF80001C78E0000000FFFF80001C38E0000000FFFF80001C38E0000000FFFF80001C38E0000000FFFF80001E38E0000000FFFF80000E38E0000000FFFF80008E38E0000000FFFF80008E38E0000000FFFF80008E38E0000000FFFF80008E38E0000000FFFF80008E38E0000000FFFF80008E38",
	mem_init1 => X"E0000000FFFF80078E38E0000000FFFF8FFF8E38E0000000FFFFFFFF8E38E0000000FFFFFFFF8E38E0000000FFFFFFFF8E38E0000000FFFFFFFF8E38E0000000FFFFFFFF8E38E0000000FFFFFFFF8E38F0000000FFFFFFFF8E3870000000FFFFFFFF8E3C70000000FFFFFF808E1C70000000FFFF80008E1C70000000FFFF80008E1C70000000FFFF80008F1C70000000FFFF8000871C70000000FFFF8000C71C70000000FFFF8000C71C70000000FFFF8000C71C70000000FFFF8000C71C70000000FFFF8003C71C70000000FFFF8FFFC71C70000000FFFFFFFFC71C70000000FFFFFFFFC71C70000000FFFFFFFFC71C70000000FFFFFFFFC71C70000000FFFF",
	mem_init0 => X"FFFFC71C70000000FFFFFFFFC71C70000000FFFFFFFFC71C70000000FFFFFFFFC71C70000000FFFFFF80C71C78000000FFFF8000C71C38000000FFFF8000C71E38000000FFFF8000C70E38000000FFFF8000C70E38000000FFFF8000C70E38000000FFFF8000C78E38000000FFFF8000C38E38000000FFFF8000E38E38000000FFFF8000E38E38000000FFFF80FFE38E38000000FFFFFFFFE38E38000000FFFFFFFFE38E38000000FFFFFFFFE38E38000000FFFFFFFFE38E38000000FFFFFFFFE38E38000000FFFFFFFFE38E38000000FFFFFFFFE38E38000000FFFFFFFFE38E38000000FFFFFFF8E38E38000000FFFFF000E38E38000000FFFF8000E38E3800",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode247w[3]~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y35_N24
\myvga0|red[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|red[5]~0_combout\ = (\myvga0|blank~1_combout\ & ((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a42~portadataout\))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs602w[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs602w[0]~1_combout\,
	datab => \myvga0|blank~1_combout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a42~portadataout\,
	combout => \myvga0|red[5]~0_combout\);

-- Location: M9K_X51_Y37_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a34\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000FFFFFFFFFC0FC0000000FFFFFFFFFC0FE0000000FFFFFFFFFC0FE0000000FFFFFFFFFC07E0000000FFFFFFFFFC07E0000000FFFFFFFFFC07E0000000FFFFFFFFFC07E0000000FFFFFFFFFE07E0000000FFFFFFFFFE07E0000000FFFFFFFFFE07E0000000FFFFFFFFFE07E0000000FFFFFFFFFE07E0000000FFFFFFFFFE07E0000000FFFFFFFFFE07E0000000FFFFFFFFFE07E0000000FFFFFFFFFE07E0000000FFFFFFFFFE07E0000000FFFFFFFFFE07E0000000FFFFFFFFFE07E0000000FFFFFFFFFE07E0000000FFFFFFFFFE07E0000000FFFFFFFFFE07E0000000FFFFFFFFFE07E0000000FFFFFFFFFE07F00000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800",
	mem_init0 => X"01FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~2_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y35_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"07FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000",
	mem_init0 => X"FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~1_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y31_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000FFFFF80000FFFFC00000000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF0000",
	mem_init2 => X"07FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000F",
	mem_init1 => X"FFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFF000007FFFF00000FFFFFFFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF000",
	mem_init0 => X"00FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|Equal1~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y30_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FF",
	mem_init2 => X"FFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFC",
	mem_init1 => X"F80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFCF80001FFFFFC0000FFFC000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00",
	mem_init0 => X"003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF0000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y35_N28
\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs650w[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs650w[0]~0_combout\ = (\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a25~portadataout\))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a7~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a25~portadataout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs650w[0]~0_combout\);

-- Location: LCCOMB_X52_Y35_N30
\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs650w[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs650w[0]~1_combout\ = (\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs650w[0]~0_combout\ & (\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a34~portadataout\)) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs650w[0]~0_combout\ & ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a16~portadataout\))))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs650w[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a34~portadataout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a16~portadataout\,
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs650w[0]~0_combout\,
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs650w[0]~1_combout\);

-- Location: M9K_X51_Y27_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a43\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E07E00000000FFFF8000E07E00000000FFFF8000E07E00000000FFFF8000E07E00000000FFFF8000E07E00000000FFFF8000E07E00000000FFFF8000E07E00000000FFFF8000E07F00000000FFFF8000E07F00000000FFFF8000E03F00000000FFFF8000E03F00000000FFFF8000E03F00000000FFFF8000E03F00000000FFFF8000F03F00000000FFFF8000F03F00000000FFFF8000F03F00000000FFFF8000F03F00000000FFFF8000F03F00000000FFFF8000F03F00000000FFFF8000F03F",
	mem_init1 => X"00000000FFFF8000F03F00000000FFFF8000F03F00000000FFFF8000F03F00000000FFFF8000F03F00000000FFFF8000F03F00000000FFFF8000F03F00000000FFFF8000F03F00000000FFFF8000F03F00000000FFFF8000F03F80000000FFFF8000F03F80000000FFFF807FF01F80000000FFFFFFFFF01F80000000FFFFFFFFF01F80000000FFFFFFFFF01F80000000FFFFFFFFF81F80000000FFFFFFFFF81F80000000FFFFFFFFF81F80000000FFFFFFFFF81F80000000FFFFFFFFF81F80000000FFFFFFFFF81F80000000FFFFFFFFF81F80000000FFFFFFFFF81F80000000FFFFFFFFF81F80000000FFFFFFFFF81F80000000FFFFFFFFF81F80000000FFFF",
	mem_init0 => X"FFFFF81F80000000FFFFFFFFF81F80000000FFFFFFFFF81F80000000FFFFFFFFF81F80000000FFFFFF80F81F80000000FFFF8000F81FC0000000FFFF8000F81FC0000000FFFF8000F80FC0000000FFFF8000F80FC0000000FFFF8000F80FC0000000FFFF8000F80FC0000000FFFF8000FC0FC0000000FFFF8000FC0FC0000000FFFF8000FC0FC0000000FFFF8000FC0FC0000000FFFF8000FC0FC0000000FFFF8000FC0FC0000000FFFF8000FC0FC0000000FFFF8000FC0FC0000000FFFF8000FC0FC0000000FFFF8000FC0FC0000000FFFF8000FC0FC0000000FFFF8000FC0FC0000000FFFF8007FC0FC0000000FFFF8FFFFC0FC0000000FFFFFFFFFC0FC000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode247w[3]~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y35_N24
\myvga0|red[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|red[6]~1_combout\ = (\myvga0|blank~1_combout\ & ((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a43~portadataout\))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs650w[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs650w[0]~1_combout\,
	datab => \myvga0|blank~1_combout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a43~portadataout\,
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2),
	combout => \myvga0|red[6]~1_combout\);

-- Location: M9K_X51_Y24_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a44\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FF8000000000FFFF8000FF8000000000FFFF8000FF8000000000FFFF8000FF8000000000FFFF8000FF8000000000FFFF8000FF8000000000FFFF8000FF8000000000FFFF8000FF8000000000FFFF8000FF8000000000FFFF8000FFC000000000FFFF8000FFC000000000FFFF8000FFC000000000FFFF8000FFC000000000FFFF8000FFC000000000FFFF8000FFC000000000FFFF8000FFC000000000FFFF8000FFC000000000FFFF8000FFC000000000FFFF8000FFC000000000FFFF8000FFC0",
	mem_init1 => X"00000000FFFF8000FFC000000000FFFF8000FFC000000000FFFF8000FFC000000000FFFF8000FFC000000000FFFF8000FFC000000000FFFF8000FFC000000000FFFF8000FFC000000000FFFF8000FFC000000000FFFF8000FFC000000000FFFF8000FFC000000000FFFF8000FFE000000000FFFF8000FFE000000000FFFF8000FFE000000000FFFF8000FFE000000000FFFF8000FFE000000000FFFF8000FFE000000000FFFF8000FFE000000000FFFF8000FFE000000000FFFF8000FFE000000000FFFF8000FFE000000000FFFF8000FFE000000000FFFF8000FFE000000000FFFF8000FFE000000000FFFF8000FFE000000000FFFF8000FFE000000000FFFF",
	mem_init0 => X"8000FFE000000000FFFF8000FFE000000000FFFF8000FFE000000000FFFF8000FFE000000000FFFF807FFFE000000000FFFFFFFFFFE000000000FFFFFFFFFFE000000000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF00000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode247w[3]~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y39_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a35\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF000000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF800000000FFFFFFFFFFF8000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000",
	mem_init0 => X"001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE00000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~2_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y26_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001F",
	mem_init2 => X"FFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFC",
	mem_init1 => X"C000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFCC000001FFFE000000FFC0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FF",
	mem_init0 => X"FFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y31_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF00000000000000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000",
	mem_init2 => X"000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFF",
	mem_init1 => X"FFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFFFFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFF",
	mem_init0 => X"FF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|Equal1~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y35_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000",
	mem_init0 => X"FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF00",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~1_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y35_N18
\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs698w[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs698w[0]~0_combout\ = (\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a17~portadataout\))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a8~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a17~portadataout\,
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs698w[0]~0_combout\);

-- Location: LCCOMB_X52_Y35_N16
\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs698w[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs698w[0]~1_combout\ = (\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs698w[0]~0_combout\ & (\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a35~portadataout\)) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs698w[0]~0_combout\ & ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a26~portadataout\))))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs698w[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a35~portadataout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a26~portadataout\,
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs698w[0]~0_combout\,
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs698w[0]~1_combout\);

-- Location: LCCOMB_X52_Y35_N14
\myvga0|red[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|red[7]~2_combout\ = (\myvga0|blank~1_combout\ & ((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a44~portadataout\)) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs698w[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datab => \myvga0|blank~1_combout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a44~portadataout\,
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs698w[0]~1_combout\,
	combout => \myvga0|red[7]~2_combout\);

-- Location: M9K_X64_Y29_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"3FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC",
	mem_init0 => X"00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|Equal1~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y32_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFF",
	mem_init2 => X"C7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE0",
	mem_init1 => X"00FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE0001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE00",
	mem_init0 => X"7FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y35_N20
\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs458w[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs458w[0]~0_combout\ = (\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a21~portadataout\))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a3~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a21~portadataout\,
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs458w[0]~0_combout\);

-- Location: M9K_X51_Y40_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F83FE3188000E38E3CE0F83FE3188000E38E1CE0F83FF39C8000E38F1CE0F83FF39C8000E3871CE0F83FF39C8000E3871CE0F83FF39C8000E3871CE0F83FF39C8000E3C71CE0F83FF39C8000E1C71CE0F83FF18C0000F1C71CE0F83FF18C0000F1C71CE0F87FF18C0000F1C71CE0F87FF18C0000F1C71CE0F07FF18C0000F1C71CE0F07FF18C0000F1C71CE0F07FF98E0000F1C71CC1F07FF9CE0000F1C71CC1F07FF9CE0000F1C71CC1F07FF9CE0000F1C71CC1F07FF9CE0000F1C71CC1F07FF9CE0000F1C71CC1F07FF9C60000F1C71CC1F07FF8C60000F1C71CC1F07FF8C60000F1C71EC1F07FF8C60000F1C70E0000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF",
	mem_init0 => X"FFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~2_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y38_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFFFFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801F",
	mem_init2 => X"F000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC",
	mem_init1 => X"00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000FFE007FC00FF801FF000000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF",
	mem_init0 => X"000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF003FE00FFF000FF801FF00",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~1_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y35_N26
\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs458w[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs458w[0]~1_combout\ = (\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs458w[0]~0_combout\ & (\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a30~portadataout\)) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs458w[0]~0_combout\ & ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a12~portadataout\))))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs458w[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs458w[0]~0_combout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a30~portadataout\,
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a12~portadataout\,
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs458w[0]~1_combout\);

-- Location: M9K_X51_Y26_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a39\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001C71C03E0F83E73800001C71C03E0F83E73800001C71C03E0F83E73800001C71C03E0F83E31800001C71C03E0F83631800001C71C03E0F83631800001C71E03E0F87631800001C70E03E0F87631800001C78E03E0F87631800001C38E03E0F07639800001C38E03E0F07739C00001C38E03E0F07739C00001E38E03C1F07739C00000E38E03C1F07739C00008E38E03C1F07739C00008E38E07C1F07719C00008E38E07C1F07318C00008E38E07C1F07318C00008E38E07C1F07318C00008E38",
	mem_init1 => X"E07C1F07318C00008E38E07C1F07318C00008E38E07C1F07318C00008E38E07C1F0739CE00008E38E07C1F0739CE00008E38E07C1F0739CE00008E38E07C1F0F39CE00008E38E07C1F0F39CE00008E38F07C1E0F39CE00008E38707C1E0F18C600008E3C707C1E0F18C600008E1C70783E0F18C600008E1C70783E0F18C600008E1C70783E0F18C600008F1C70F83E0F18C60000871C70F83E0F98E60000C71C70F83E0F9CE70000C71C70F83E0F9CE70000C71C70F83E0F9CE70000C71C70F83E0F9CE70000C71C70F83E0F9CE70000C71C70F83E0F9C670000C71C70F83E0F8C630000C71C70F83E0F8C630000C71C70F83E1F8C630000C71C70F83E1F8C63",
	mem_init0 => X"0000C71C70F83E1F8C630000C71C70F83C1F8C630000C71C70F83C1FCE738000C71C70F83C1FCE738000C71C78F07C1FCE738000C71C38F07C1FCE738000C71E38F07C1FCE738000C70E38F07C1FCE738000C70E38F07C1FC6318000C70E38F07C1FC6318000C78E38F07C1FC6318000C38E38F07C1FC6318000E38E38F07C1FC6318000E38E38F07C1FC6318000E38E38F07C1FE6398000E38E38F07C1FE7398000E38E38F07C3FE7398000E38E38F07C3FE7398000E38E38F07C3FE7398000E38E38F0783FE7398000E38E38F0783FE7198000E38E38F0783FE3188000E38E38E0F83FE3188000E38E38E0F83FE3188000E38E38E0F83FE3188000E38E38E0",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode247w[3]~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y35_N30
\myvga0|green[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|green[5]~0_combout\ = (\myvga0|blank~1_combout\ & ((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a39~portadataout\))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs458w[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs458w[0]~1_combout\,
	datab => \myvga0|blank~1_combout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a39~portadataout\,
	combout => \myvga0|green[5]~0_combout\);

-- Location: M9K_X51_Y28_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFF",
	mem_init2 => X"C7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE0",
	mem_init1 => X"00FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE0000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00",
	mem_init0 => X"003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF0000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y38_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"07FFFC1F0000FC0FC0E007FFFC1F0000FC0FE0E007FFFC1F0000FC0FE0E007FFFC1F0000FC07E0E007FFFC1F0000FC07E0E007FFFC1F0000FC07E0E007FFFC1F0000FC07E0E007FFFC1F0000FE07E0E007FFFE0F8000FE07E0E007FFFE0F8000FE07E0E007FFFE0F8000FE07E0E007FFFE0F8000FE07E0E00FFFFE0F8000FE07E0E00FFFFE0F8000FE07E0E00FFFFE0F8000FE07E0C00FFFFE0F8000FE07E0C00FFFFE0F8000FE07E0C00FFFFE0F8000FE07E0C00FFFFE0F8000FE07E0C00FFFFE0F8000FE07E0C00FFFFE078000FE07E0C00FFFFF078000FE07E0C00FFFFF078000FE07E0C00FFFFF078000FE07F00000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF",
	mem_init0 => X"FFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFFFFE000FFFFFFC7007FFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~2_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y34_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"07FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFFFFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE0",
	mem_init2 => X"0000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF800",
	mem_init1 => X"00FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000FFFFF80000FFFFE00000000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF",
	mem_init0 => X"000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~1_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y29_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF000",
	mem_init0 => X"00FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|Equal1~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y35_N8
\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs506w[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs506w[0]~0_combout\ = (\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a13~portadataout\) # 
-- ((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a4~portadataout\ & 
-- !\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a13~portadataout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs506w[0]~0_combout\);

-- Location: LCCOMB_X52_Y35_N22
\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs506w[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs506w[0]~1_combout\ = (\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs506w[0]~0_combout\ & 
-- (((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a31~portadataout\) # (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs506w[0]~0_combout\ & (\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a22~portadataout\ & 
-- ((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a22~portadataout\,
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a31~portadataout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs506w[0]~0_combout\,
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs506w[0]~1_combout\);

-- Location: M9K_X51_Y33_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a40\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E07E00FE007F07C00000E07E00FE007F07C00000E07E00FE007F07C00000E07E00FE007F03E00000E07E00FE007F83E00000E07E00FE007F83E00000E07E00FE007F83E00000E07F00FE007F83E00000E07F00FE007F83E00000E03F00FE00FF83E00000E03F00FE00FF83E00000E03F00FE00FF83E00000E03F00FC00FF83E00000F03F00FC00FF83E00000F03F00FC00FF83E00000F03F00FC00FF81E00000F03F00FC00FFC1F00000F03F00FC00FFC1F00000F03F00FC00FFC1F00000F03F",
	mem_init1 => X"00FC00FFC1F00000F03F00FC00FFC1F00000F03F00FC00FFC1F00000F03F00FC00FFC1F00000F03F00FC00FFC1F00000F03F00FC00FFC1F00000F03F00FC00FFC1F00000F03F00FC00FFC1F00000F03F00FC01FFC1F00000F03F80FC01FFE0F80000F03F80FC01FFE0F80000F01F80F801FFE0F80000F01F80F801FFE0F80000F01F80F801FFE0F80000F01F80F801FFE0F80000F81F80F801FFE0F80000F81F80F801FFE0F80000F81F80F801FFE0F80000F81F80F801FFE0F80000F81F80F801FFE0F80000F81F80F801FFE0F80000F81F80F801FFE0780000F81F80F801FFF07C0000F81F80F801FFF07C0000F81F80F801FFF07C0000F81F80F801FFF07C",
	mem_init0 => X"0000F81F80F801FFF07C0000F81F80F803FFF07C0000F81F80F803FFF07C0000F81F80F803FFF07C0000F81F80F003FFF07C0000F81FC0F003FFF07C0000F81FC0F003FFF07C0000F80FC0F003FFF07C0000F80FC0F003FFF83E0000F80FC0F003FFF83E0000F80FC0F003FFF83E0000FC0FC0F003FFF83E0000FC0FC0F003FFF83E0000FC0FC0F003FFF83E0000FC0FC0F003FFF83E0000FC0FC0F003FFF83E0000FC0FC0F003FFF83E0000FC0FC0F003FFF83E0000FC0FC0F003FFF83E0000FC0FC0F007FFF83E0000FC0FC0F007FFF81E0000FC0FC0F007FFFC1F0000FC0FC0E007FFFC1F0000FC0FC0E007FFFC1F0000FC0FC0E007FFFC1F0000FC0FC0E0",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode247w[3]~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y35_N4
\myvga0|green[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|green[6]~1_combout\ = (\myvga0|blank~1_combout\ & ((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a40~portadataout\))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs506w[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs506w[0]~1_combout\,
	datab => \myvga0|blank~1_combout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a40~portadataout\,
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2),
	combout => \myvga0|green[6]~1_combout\);

-- Location: M9K_X37_Y30_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a41\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FF800001FFFFF8000000FF800001FFFFF8000000FF800001FFFFF8000000FF800001FFFFFC000000FF800001FFFFFC000000FF800001FFFFFC000000FF800001FFFFFC000000FF800001FFFFFC000000FF800001FFFFFC000000FFC00001FFFFFC000000FFC00001FFFFFC000000FFC00001FFFFFC000000FFC00003FFFFFC000000FFC00003FFFFFC000000FFC00003FFFFFC000000FFC00003FFFFFE000000FFC00003FFFFFE000000FFC00003FFFFFE000000FFC00003FFFFFE000000FFC0",
	mem_init1 => X"0003FFFFFE000000FFC00003FFFFFE000000FFC00003FFFFFE000000FFC00003FFFFFE000000FFC00003FFFFFE000000FFC00003FFFFFE000000FFC00003FFFFFE000000FFC00003FFFFFE000000FFC00003FFFFFE000000FFC00003FFFFFF000000FFC00003FFFFFF000000FFE00007FFFFFF000000FFE00007FFFFFF000000FFE00007FFFFFF000000FFE00007FFFFFF000000FFE00007FFFFFF000000FFE00007FFFFFF000000FFE00007FFFFFF000000FFE00007FFFFFF000000FFE00007FFFFFF000000FFE00007FFFFFF000000FFE00007FFFFFF800000FFE00007FFFFFF800000FFE00007FFFFFF800000FFE00007FFFFFF800000FFE00007FFFFFF80",
	mem_init0 => X"0000FFE00007FFFFFF800000FFE00007FFFFFF800000FFE00007FFFFFF800000FFE00007FFFFFF800000FFE0000FFFFFFF800000FFE0000FFFFFFF800000FFE0000FFFFFFF800000FFF0000FFFFFFF800000FFF0000FFFFFFFC00000FFF0000FFFFFFFC00000FFF0000FFFFFFFC00000FFF0000FFFFFFFC00000FFF0000FFFFFFFC00000FFF0000FFFFFFFC00000FFF0000FFFFFFFC00000FFF0000FFFFFFFC00000FFF0000FFFFFFFC00000FFF0000FFFFFFFC00000FFF0000FFFFFFFC00000FFF0000FFFFFFFC00000FFF0000FFFFFFFE00000FFF0000FFFFFFFE00000FFF0001FFFFFFFE00000FFF0001FFFFFFFE00000FFF0001FFFFFFFE00000FFF0001F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode247w[3]~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y39_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a32\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFE00000FFF0001FFFFFFFE00000FFF0001FFFFFFFE00000FFF0001FFFFFFFE00000FFF8001FFFFFFFE00000FFF8001FFFFFFFE00000FFF8001FFFFFFFE00000FFF8001FFFFFFFE00000FFF8001FFFFFFFF00000FFF8001FFFFFFFF00000FFF8001FFFFFFFF00000FFF8001FFFFFFFF00000FFF8001FFFFFFFF00000FFF8001FFFFFFFF00000FFF8001FFFFFFFF00000FFF8003FFFFFFFF00000FFF8003FFFFFFFF00000FFF8003FFFFFFFF00000FFF8003FFFFFFFF00000FFF8003FFFFFFFF00000FFF8003FFFFFFFF80000FFF8003FFFFFFFF80000FFF8003FFFFFFFF80000FFF8003FFFFFFFF80000FFF8000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF001F",
	mem_init0 => X"FFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~2_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y32_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFF",
	mem_init0 => X"FF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|Equal1~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y28_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE",
	mem_init2 => X"07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00",
	mem_init1 => X"001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF00001FFFFE07000FFFFF000000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FF",
	mem_init0 => X"FFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y35_N4
\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs554w[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs554w[0]~0_combout\ = (\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a23~portadataout\) 
-- # (\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a5~portadataout\ & 
-- ((!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a23~portadataout\,
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs554w[0]~0_combout\);

-- Location: M9K_X37_Y35_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFFFFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF000000",
	mem_init2 => X"0000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFF",
	mem_init1 => X"FF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF00000000000000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF",
	mem_init0 => X"0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~1_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y35_N18
\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs554w[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs554w[0]~1_combout\ = (\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs554w[0]~0_combout\ & 
-- ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a32~portadataout\) # ((!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs554w[0]~0_combout\ & (((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a14~portadataout\ & 
-- \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a32~portadataout\,
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs554w[0]~0_combout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a14~portadataout\,
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs554w[0]~1_combout\);

-- Location: LCCOMB_X45_Y35_N28
\myvga0|green[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|green[7]~2_combout\ = (\myvga0|blank~1_combout\ & ((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a41~portadataout\)) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs554w[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a41~portadataout\,
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs554w[0]~1_combout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \myvga0|blank~1_combout\,
	combout => \myvga0|green[7]~2_combout\);

-- Location: M9K_X51_Y36_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"38F000007FFFE38E3C8E38E000007FFFE38E1C8E38E000007FFFE38F1C8E38E000007FFFE3871C8E38E000007FFFE3871C8E38E000007FFFE3871C8E38E000007FFFE3C71C8E38E000007FFFE1C71C8E38E000007FFFF1C71C8E38E000007FFFF1C71C8E38E000007FFFF1C71C8E38E000007FFFF1C71C8E38E000007FFFF1C71C1E38E000007FFFF1C71C1C38E000007FFFF1C71C1C38E000007FFFF1C71C1C38E000007FFFF1C71C1C70E000007FFFF1C71C1C71E000007FFFF1C71C1C71C000007FFFF1C71C1C71C000007FFFF1C71C1C71C000007FFFF1C71C1C71C000007FFFF1C71E1C71C000007FFFF1C70E0000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"E00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF0",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~2_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y34_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE000",
	mem_init2 => X"07FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000",
	mem_init1 => X"FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE00",
	mem_init0 => X"7FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y36_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF001FF803FE007FC01FFF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE0",
	mem_init2 => X"07FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801",
	mem_init1 => X"FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF000FF801FF003FE007FF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~1_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y33_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC0",
	mem_init2 => X"0FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801F",
	mem_init1 => X"F800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC",
	mem_init0 => X"00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800FFC00FFC00FF801FF800",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|Equal1~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y35_N6
\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs314w[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs314w[0]~0_combout\ = (\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a9~portadataout\) # 
-- ((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a9~portadataout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs314w[0]~0_combout\);

-- Location: LCCOMB_X50_Y35_N28
\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs314w[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs314w[0]~1_combout\ = (\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs314w[0]~0_combout\ & 
-- ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a27~portadataout\) # ((!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs314w[0]~0_combout\ & (((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a18~portadataout\ & 
-- \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a27~portadataout\,
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a18~portadataout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs314w[0]~0_combout\,
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs314w[0]~1_combout\);

-- Location: M9K_X37_Y33_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a36\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001C71C0F8E38E00007FFF1C71C0F8E38E00007FFF1C71C0F8E38E00007FFF1C71C0F8E38E00007FFF1C71C0F8E38E00007FFF1C71C0F8E38E00007FFF1C71E0F8E38E00007FFF1C70E0F8E38E00007FFF1C78E0F8E38E00007FFF1C38E0F0E38E00007FFF1C38E0F1E38E00007FFF1C38E0F1C38E00007FFF1E38E0F1C38E00007FFF0E38E0F1C78E00007FFF8E38E0F1C70E00007FFF8E38E0F1C71C00007FFF8E38E0F1C71C00007FFF8E38E0F1C71C00007FFF8E38E0F1C71C00007FFF8E38",
	mem_init1 => X"E0F1C71C00007FFF8E38E0F1C71C00007FFF8E38E0F1C71C00007FFF8E38E0F1C71C00007FFF8E38E0F1C71C00007FFF8E38E0F1C71C00007FFF8E38E0F1C71C00007FFF8E38E0F1C71C00007FFF8E38F0E1C71C00007FFF8E3870E3C71C00007FFF8E3C70E3871C00007FFF8E1C70E3871C00007FFF8E1C70E3871C00007FFF8E1C70E38E1C00007FFF8F1C70E38E3C00007FFF871C70E38E3800007FFFC71C70E38E3800007FFFC71C70E38E3800007FFFC71C70E38E3800007FFFC71C70E38E3800007FFFC71C70E38E3800007FFFC71C70E38E3800007FFFC71C70E38E3800007FFFC71C70E38E3800007FFFC71C70E38E3800007FFFC71C70E38E380000",
	mem_init0 => X"7FFFC71C70E38E3800007FFFC71C70C38E3800007FFFC71C70C70E3800007FFFC71C70C70E3800007FFFC71C78C70E3800007FFFC71C38C71E3800007FFFC71E38C71C7800007FFFC70E38C71C7000007FFFC70E38C71C7000007FFFC70E38C71C7000007FFFC78E38C71C7000007FFFC38E38C71C7000007FFFE38E38C71C7000007FFFE38E38C71C7000007FFFE38E38C71C7000007FFFE38E38C71C7000007FFFE38E38C71C7000007FFFE38E38C71C7000007FFFE38E38C71C7000007FFFE38E38871C7000007FFFE38E388F1C7000007FFFE38E388E1C7000007FFFE38E388E1C7000007FFFE38E388E3C7000007FFFE38E388E387000007FFFE38E388E",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode247w[3]~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y35_N10
\myvga0|blue[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|blue[5]~0_combout\ = (\myvga0|blank~1_combout\ & ((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a36~portadataout\))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs314w[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs314w[0]~1_combout\,
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a36~portadataout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \myvga0|blank~1_combout\,
	combout => \myvga0|blue[5]~0_combout\);

-- Location: M9K_X37_Y36_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"3F0000007FFFFC0FC0F03F0000007FFFFC0FE0F03F0000007FFFFC0FE0F03F0000007FFFFC07E0F03F0000007FFFFC07E0F03F0000007FFFFC07E0F03F0000007FFFFC07E0F03F0000007FFFFE07E0F03F0000007FFFFE07E0F03F0000007FFFFE07E0F03F0000007FFFFE07E0F03F0000007FFFFE07E0F03F0000007FFFFE07E0E03F0000007FFFFE07E0E03F0000007FFFFE07E0E03F0000007FFFFE07E0E03F0000007FFFFE07E0E07F0000007FFFFE07E0E07E0000007FFFFE07E0E07E0000007FFFFE07E0E07E0000007FFFFE07E0E07E0000007FFFFE07E0E07E0000007FFFFE07E0E07E0000007FFFFE07F00000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"E00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF0",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~2_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y23_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE000",
	mem_init2 => X"07FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000",
	mem_init1 => X"FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000FFFFE00007FFFFF00000000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00",
	mem_init0 => X"003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF0000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: M9K_X37_Y29_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFF",
	mem_init2 => X"F00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE0",
	mem_init1 => X"0000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF000",
	mem_init0 => X"00FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000FFFFF00000FFFFE00000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|Equal1~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y35_N20
\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs362w[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs362w[0]~0_combout\ = (\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a19~portadataout\) # 
-- ((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a1~portadataout\ & 
-- !\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a19~portadataout\,
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs362w[0]~0_combout\);

-- Location: M9K_X64_Y39_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"07FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFE00003FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001F",
	mem_init2 => X"FFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FF",
	mem_init1 => X"FF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF000007FFFF00001FFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~1_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y35_N26
\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs362w[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs362w[0]~1_combout\ = (\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs362w[0]~0_combout\ & 
-- ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a28~portadataout\) # ((!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs362w[0]~0_combout\ & (((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a10~portadataout\ & 
-- \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a28~portadataout\,
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs362w[0]~0_combout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a10~portadataout\,
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs362w[0]~1_combout\);

-- Location: M9K_X37_Y28_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a37\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E07E00FF03F000007FFFE07E00FF03F000007FFFE07E00FF03F000007FFFE07E00FF03F000007FFFE07E00FF03F000007FFFE07E00FF03F000007FFFE07E00FF03F000007FFFE07F00FF03F000007FFFE07F00FF03F000007FFFE03F00FF03F000007FFFE03F00FE03F000007FFFE03F00FE03F000007FFFE03F00FE03F000007FFFF03F00FE07F000007FFFF03F00FE07F000007FFFF03F00FE07E000007FFFF03F00FE07E000007FFFF03F00FE07E000007FFFF03F00FE07E000007FFFF03F",
	mem_init1 => X"00FE07E000007FFFF03F00FE07E000007FFFF03F00FE07E000007FFFF03F00FE07E000007FFFF03F00FE07E000007FFFF03F00FE07E000007FFFF03F00FE07E000007FFFF03F00FE07E000007FFFF03F00FE07E000007FFFF03F80FC07E000007FFFF03F80FC07E000007FFFF01F80FC07E000007FFFF01F80FC07E000007FFFF01F80FC0FE000007FFFF01F80FC0FC000007FFFF81F80FC0FC000007FFFF81F80FC0FC000007FFFF81F80FC0FC000007FFFF81F80FC0FC000007FFFF81F80FC0FC000007FFFF81F80FC0FC000007FFFF81F80FC0FC000007FFFF81F80FC0FC000007FFFF81F80FC0FC000007FFFF81F80FC0FC000007FFFF81F80FC0FC00000",
	mem_init0 => X"7FFFF81F80FC0FC000007FFFF81F80FC0FC000007FFFF81F80F80FC000007FFFF81F80F80FC000007FFFF81F80F80FC000007FFFF81FC0F81FC000007FFFF81FC0F81F8000007FFFF80FC0F81F8000007FFFF80FC0F81F8000007FFFF80FC0F81F8000007FFFF80FC0F81F8000007FFFFC0FC0F81F8000007FFFFC0FC0F81F8000007FFFFC0FC0F81F8000007FFFFC0FC0F81F8000007FFFFC0FC0F81F8000007FFFFC0FC0F81F8000007FFFFC0FC0F81F8000007FFFFC0FC0F81F8000007FFFFC0FC0F81F8000007FFFFC0FC0F01F8000007FFFFC0FC0F01F8000007FFFFC0FC0F01F8000007FFFFC0FC0F03F8000007FFFFC0FC0F03F8000007FFFFC0FC0F0",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode247w[3]~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y35_N8
\myvga0|blue[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|blue[6]~1_combout\ = (\myvga0|blank~1_combout\ & ((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a37~portadataout\))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs362w[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs362w[0]~1_combout\,
	datab => \myvga0|blank~1_combout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a37~portadataout\,
	combout => \myvga0|blue[6]~1_combout\);

-- Location: M9K_X51_Y25_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a38\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FF8000FFFC0000007FFFFF8000FFFC0000007FFFFF8000FFFC0000007FFFFF8000FFFC0000007FFFFF8000FFFC0000007FFFFF8000FFFC0000007FFFFF8000FFFC0000007FFFFF8000FFFC0000007FFFFF8000FFFC0000007FFFFFC000FFFC0000007FFFFFC000FFFC0000007FFFFFC000FFFC0000007FFFFFC000FFFC0000007FFFFFC000FFF80000007FFFFFC000FFF80000007FFFFFC000FFF80000007FFFFFC000FFF80000007FFFFFC000FFF80000007FFFFFC000FFF80000007FFFFFC0",
	mem_init1 => X"00FFF80000007FFFFFC000FFF80000007FFFFFC000FFF80000007FFFFFC000FFF80000007FFFFFC000FFF80000007FFFFFC000FFF80000007FFFFFC000FFF80000007FFFFFC000FFF80000007FFFFFC000FFF80000007FFFFFC000FFF80000007FFFFFC000FFF80000007FFFFFE000FFF80000007FFFFFE000FFF80000007FFFFFE000FFF00000007FFFFFE000FFF00000007FFFFFE000FFF00000007FFFFFE000FFF00000007FFFFFE000FFF00000007FFFFFE000FFF00000007FFFFFE000FFF00000007FFFFFE000FFF00000007FFFFFE000FFF00000007FFFFFE000FFF00000007FFFFFE000FFF00000007FFFFFE000FFF00000007FFFFFE000FFF0000000",
	mem_init0 => X"7FFFFFE000FFF00000007FFFFFE000FFF00000007FFFFFE000FFF00000007FFFFFE000FFF00000007FFFFFE000FFF00000007FFFFFE000FFE00000007FFFFFE000FFE00000007FFFFFF000FFE00000007FFFFFF000FFE00000007FFFFFF000FFE00000007FFFFFF000FFE00000007FFFFFF000FFE00000007FFFFFF000FFE00000007FFFFFF000FFE00000007FFFFFF000FFE00000007FFFFFF000FFE00000007FFFFFF000FFE00000007FFFFFF000FFE00000007FFFFFF000FFE00000007FFFFFF000FFE00000007FFFFFF000FFE00000007FFFFFF000FFE00000007FFFFFF000FFE00000007FFFFFF000FFC00000007FFFFFF000FFC00000007FFFFFF000FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode247w[3]~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y41_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"C00000007FFFFFF000FFC00000007FFFFFF000FFC00000007FFFFFF000FFC00000007FFFFFF800FFC00000007FFFFFF800FFC00000007FFFFFF800FFC00000007FFFFFF800FFC00000007FFFFFF800FFC00000007FFFFFF800FFC00000007FFFFFF800FFC00000007FFFFFF800FFC00000007FFFFFF800FFC00000007FFFFFF800FFC00000007FFFFFF800FFC00000007FFFFFF800FFC00000007FFFFFF800FFC00000007FFFFFF800FF800000007FFFFFF800FF800000007FFFFFF800FF800000007FFFFFF800FF800000007FFFFFF800FF800000007FFFFFF800FF800000007FFFFFF800FF800000007FFFFFF8000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
	mem_init0 => X"000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF00",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~2_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y32_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE0000",
	mem_init2 => X"07FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000",
	mem_init1 => X"FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF000000FFFE000007FFFF0000000000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FF",
	mem_init0 => X"FFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: M9K_X51_Y30_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFF",
	mem_init2 => X"FFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF000000",
	mem_init1 => X"0000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFF",
	mem_init0 => X"FF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|Equal1~0_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y37_N0
\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000001FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFF",
	mem_init2 => X"FFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF00000000",
	mem_init1 => X"00FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF0000000000FFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "vmem_new.hex",
	init_file_layout => "port_a",
	logical_ram_name => "myvga:myvga0|vmem:ColorGet|altsyncram:altsyncram_component|altsyncram_kip3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 38400,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \myvga0|ColorGet|altsyncram_component|auto_generated|rden_decode|w_anode214w[2]~1_combout\,
	portaaddr => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y35_N12
\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs410w[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs410w[0]~0_combout\ = (\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a11~portadataout\) 
-- # (\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a2~portadataout\ & 
-- ((!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a11~portadataout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs410w[0]~0_combout\);

-- Location: LCCOMB_X52_Y35_N2
\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs410w[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs410w[0]~1_combout\ = (\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs410w[0]~0_combout\ & (\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a29~portadataout\)) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs410w[0]~0_combout\ & ((\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a20~portadataout\))))) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs410w[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a29~portadataout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a20~portadataout\,
	datad => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs410w[0]~0_combout\,
	combout => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs410w[0]~1_combout\);

-- Location: LCCOMB_X52_Y35_N10
\myvga0|blue[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|blue[7]~2_combout\ = (\myvga0|blank~1_combout\ & ((\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a38~portadataout\)) # 
-- (!\myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs410w[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|ColorGet|altsyncram_component|auto_generated|ram_block1a38~portadataout\,
	datab => \myvga0|ColorGet|altsyncram_component|auto_generated|mux2|w_mux_outputs410w[0]~1_combout\,
	datac => \myvga0|ColorGet|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \myvga0|blank~1_combout\,
	combout => \myvga0|blue[7]~2_combout\);

-- Location: CLKCTRL_G4
\pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y40_N28
\myvga0|hsync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|hsync~0_combout\ = (\myvga0|FMX:7:FMX_dff~q\ & (\myvga0|FMX:9:FMX_dff~q\ & !\myvga0|FMX:8:FMX_dff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMX:7:FMX_dff~q\,
	datab => \myvga0|FMX:9:FMX_dff~q\,
	datad => \myvga0|FMX:8:FMX_dff~q\,
	combout => \myvga0|hsync~0_combout\);

-- Location: LCCOMB_X38_Y40_N6
\myvga0|hsync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|hsync~1_combout\ = ((\myvga0|FMX:5:FMX_dff~q\ & (\myvga0|FMX:4:FMX_dff~q\ & \myvga0|FMX:6:FMX_dff~q\)) # (!\myvga0|FMX:5:FMX_dff~q\ & (!\myvga0|FMX:4:FMX_dff~q\ & !\myvga0|FMX:6:FMX_dff~q\))) # (!\myvga0|hsync~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMX:5:FMX_dff~q\,
	datab => \myvga0|FMX:4:FMX_dff~q\,
	datac => \myvga0|FMX:6:FMX_dff~q\,
	datad => \myvga0|hsync~0_combout\,
	combout => \myvga0|hsync~1_combout\);

-- Location: LCCOMB_X53_Y34_N30
\myvga0|vsync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|vsync~1_combout\ = (\myvga0|FMY:9:FMY_dff~q\) # ((\myvga0|FMY:2:FMY_dff~q\ & ((\myvga0|FMY:1:FMY_dff~q\) # (\myvga0|FMY:0:FMY_dff~q\))) # (!\myvga0|FMY:2:FMY_dff~q\ & ((!\myvga0|FMY:0:FMY_dff~q\) # (!\myvga0|FMY:1:FMY_dff~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|FMY:2:FMY_dff~q\,
	datab => \myvga0|FMY:1:FMY_dff~q\,
	datac => \myvga0|FMY:9:FMY_dff~q\,
	datad => \myvga0|FMY:0:FMY_dff~q\,
	combout => \myvga0|vsync~1_combout\);

-- Location: LCCOMB_X53_Y34_N2
\myvga0|vsync~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \myvga0|vsync~2_combout\ = (\myvga0|vsync~1_combout\) # (((\myvga0|FMY:4:FMY_dff~q\) # (!\myvga0|vsync~0_combout\)) # (!\myvga0|FMY:3:FMY_dff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myvga0|vsync~1_combout\,
	datab => \myvga0|FMY:3:FMY_dff~q\,
	datac => \myvga0|FMY:4:FMY_dff~q\,
	datad => \myvga0|vsync~0_combout\,
	combout => \myvga0|vsync~2_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);
END structure;


