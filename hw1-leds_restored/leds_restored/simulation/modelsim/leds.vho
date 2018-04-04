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

-- DATE "09/23/2017 08:47:17"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ledcontroller IS
    PORT (
	switches : IN std_logic_vector(17 DOWNTO 0);
	segments : OUT std_logic_vector(55 DOWNTO 0)
	);
END ledcontroller;

-- Design Ports Information
-- segments[0]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[1]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[2]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[3]	=>  Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[4]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[5]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[6]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[7]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[8]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[9]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[10]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[11]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[12]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[13]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[14]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[15]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[16]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[17]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[18]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[19]	=>  Location: PIN_W27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[20]	=>  Location: PIN_W28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[21]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[22]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[23]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[24]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[25]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[26]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[27]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[28]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[29]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[30]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[31]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[32]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[33]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[34]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[35]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[36]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[37]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[38]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[39]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[40]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[41]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[42]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[43]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[44]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[45]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[46]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[47]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[48]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[49]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[50]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[51]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[52]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[53]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[54]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segments[55]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- switches[0]	=>  Location: PIN_AB28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[3]	=>  Location: PIN_AD27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[2]	=>  Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[1]	=>  Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[4]	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[7]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[6]	=>  Location: PIN_AD26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[5]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[8]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[11]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[10]	=>  Location: PIN_AC24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[9]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[12]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[15]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[14]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[13]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[16]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[17]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ledcontroller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_switches : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_segments : std_logic_vector(55 DOWNTO 0);
SIGNAL \segments[0]~output_o\ : std_logic;
SIGNAL \segments[1]~output_o\ : std_logic;
SIGNAL \segments[2]~output_o\ : std_logic;
SIGNAL \segments[3]~output_o\ : std_logic;
SIGNAL \segments[4]~output_o\ : std_logic;
SIGNAL \segments[5]~output_o\ : std_logic;
SIGNAL \segments[6]~output_o\ : std_logic;
SIGNAL \segments[7]~output_o\ : std_logic;
SIGNAL \segments[8]~output_o\ : std_logic;
SIGNAL \segments[9]~output_o\ : std_logic;
SIGNAL \segments[10]~output_o\ : std_logic;
SIGNAL \segments[11]~output_o\ : std_logic;
SIGNAL \segments[12]~output_o\ : std_logic;
SIGNAL \segments[13]~output_o\ : std_logic;
SIGNAL \segments[14]~output_o\ : std_logic;
SIGNAL \segments[15]~output_o\ : std_logic;
SIGNAL \segments[16]~output_o\ : std_logic;
SIGNAL \segments[17]~output_o\ : std_logic;
SIGNAL \segments[18]~output_o\ : std_logic;
SIGNAL \segments[19]~output_o\ : std_logic;
SIGNAL \segments[20]~output_o\ : std_logic;
SIGNAL \segments[21]~output_o\ : std_logic;
SIGNAL \segments[22]~output_o\ : std_logic;
SIGNAL \segments[23]~output_o\ : std_logic;
SIGNAL \segments[24]~output_o\ : std_logic;
SIGNAL \segments[25]~output_o\ : std_logic;
SIGNAL \segments[26]~output_o\ : std_logic;
SIGNAL \segments[27]~output_o\ : std_logic;
SIGNAL \segments[28]~output_o\ : std_logic;
SIGNAL \segments[29]~output_o\ : std_logic;
SIGNAL \segments[30]~output_o\ : std_logic;
SIGNAL \segments[31]~output_o\ : std_logic;
SIGNAL \segments[32]~output_o\ : std_logic;
SIGNAL \segments[33]~output_o\ : std_logic;
SIGNAL \segments[34]~output_o\ : std_logic;
SIGNAL \segments[35]~output_o\ : std_logic;
SIGNAL \segments[36]~output_o\ : std_logic;
SIGNAL \segments[37]~output_o\ : std_logic;
SIGNAL \segments[38]~output_o\ : std_logic;
SIGNAL \segments[39]~output_o\ : std_logic;
SIGNAL \segments[40]~output_o\ : std_logic;
SIGNAL \segments[41]~output_o\ : std_logic;
SIGNAL \segments[42]~output_o\ : std_logic;
SIGNAL \segments[43]~output_o\ : std_logic;
SIGNAL \segments[44]~output_o\ : std_logic;
SIGNAL \segments[45]~output_o\ : std_logic;
SIGNAL \segments[46]~output_o\ : std_logic;
SIGNAL \segments[47]~output_o\ : std_logic;
SIGNAL \segments[48]~output_o\ : std_logic;
SIGNAL \segments[49]~output_o\ : std_logic;
SIGNAL \segments[50]~output_o\ : std_logic;
SIGNAL \segments[51]~output_o\ : std_logic;
SIGNAL \segments[52]~output_o\ : std_logic;
SIGNAL \segments[53]~output_o\ : std_logic;
SIGNAL \segments[54]~output_o\ : std_logic;
SIGNAL \segments[55]~output_o\ : std_logic;
SIGNAL \switches[3]~input_o\ : std_logic;
SIGNAL \switches[1]~input_o\ : std_logic;
SIGNAL \switches[2]~input_o\ : std_logic;
SIGNAL \switches[0]~input_o\ : std_logic;
SIGNAL \HEX0|out0~0_combout\ : std_logic;
SIGNAL \HEX0|out1~0_combout\ : std_logic;
SIGNAL \HEX0|out2~0_combout\ : std_logic;
SIGNAL \HEX0|out3~0_combout\ : std_logic;
SIGNAL \HEX0|out4~0_combout\ : std_logic;
SIGNAL \HEX0|out5~0_combout\ : std_logic;
SIGNAL \HEX0|out6~0_combout\ : std_logic;
SIGNAL \switches[7]~input_o\ : std_logic;
SIGNAL \switches[5]~input_o\ : std_logic;
SIGNAL \switches[6]~input_o\ : std_logic;
SIGNAL \switches[4]~input_o\ : std_logic;
SIGNAL \HEX1|out0~0_combout\ : std_logic;
SIGNAL \HEX1|out1~0_combout\ : std_logic;
SIGNAL \HEX1|out2~0_combout\ : std_logic;
SIGNAL \HEX1|out3~0_combout\ : std_logic;
SIGNAL \HEX1|out4~0_combout\ : std_logic;
SIGNAL \HEX1|out5~0_combout\ : std_logic;
SIGNAL \HEX1|out6~0_combout\ : std_logic;
SIGNAL \switches[8]~input_o\ : std_logic;
SIGNAL \switches[10]~input_o\ : std_logic;
SIGNAL \switches[11]~input_o\ : std_logic;
SIGNAL \switches[9]~input_o\ : std_logic;
SIGNAL \HEX2|out0~0_combout\ : std_logic;
SIGNAL \HEX2|out1~0_combout\ : std_logic;
SIGNAL \HEX2|out2~0_combout\ : std_logic;
SIGNAL \HEX2|out3~0_combout\ : std_logic;
SIGNAL \HEX2|out4~0_combout\ : std_logic;
SIGNAL \HEX2|out5~0_combout\ : std_logic;
SIGNAL \HEX2|out6~0_combout\ : std_logic;
SIGNAL \switches[13]~input_o\ : std_logic;
SIGNAL \switches[12]~input_o\ : std_logic;
SIGNAL \switches[15]~input_o\ : std_logic;
SIGNAL \switches[14]~input_o\ : std_logic;
SIGNAL \HEX3|out0~0_combout\ : std_logic;
SIGNAL \HEX3|out1~0_combout\ : std_logic;
SIGNAL \HEX3|out2~0_combout\ : std_logic;
SIGNAL \HEX3|out3~0_combout\ : std_logic;
SIGNAL \HEX3|out4~0_combout\ : std_logic;
SIGNAL \HEX3|out5~0_combout\ : std_logic;
SIGNAL \HEX3|out6~0_combout\ : std_logic;
SIGNAL \switches[16]~input_o\ : std_logic;
SIGNAL \switches[17]~input_o\ : std_logic;
SIGNAL \HEX4|out1~0_combout\ : std_logic;
SIGNAL \HEX4|out1~1_combout\ : std_logic;
SIGNAL \HEX4|out5~0_combout\ : std_logic;
SIGNAL \ALT_INV_switches[17]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_switches <= switches;
segments <= ww_segments;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_switches[17]~input_o\ <= NOT \switches[17]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\segments[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0|out0~0_combout\,
	devoe => ww_devoe,
	o => \segments[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\segments[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0|out1~0_combout\,
	devoe => ww_devoe,
	o => \segments[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\segments[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0|out2~0_combout\,
	devoe => ww_devoe,
	o => \segments[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\segments[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0|out3~0_combout\,
	devoe => ww_devoe,
	o => \segments[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\segments[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0|out4~0_combout\,
	devoe => ww_devoe,
	o => \segments[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\segments[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0|out5~0_combout\,
	devoe => ww_devoe,
	o => \segments[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\segments[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0|out6~0_combout\,
	devoe => ww_devoe,
	o => \segments[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\segments[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1|out0~0_combout\,
	devoe => ww_devoe,
	o => \segments[7]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\segments[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1|out1~0_combout\,
	devoe => ww_devoe,
	o => \segments[8]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\segments[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1|out2~0_combout\,
	devoe => ww_devoe,
	o => \segments[9]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\segments[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1|out3~0_combout\,
	devoe => ww_devoe,
	o => \segments[10]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\segments[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1|out4~0_combout\,
	devoe => ww_devoe,
	o => \segments[11]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\segments[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1|out5~0_combout\,
	devoe => ww_devoe,
	o => \segments[12]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\segments[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1|out6~0_combout\,
	devoe => ww_devoe,
	o => \segments[13]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\segments[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2|out0~0_combout\,
	devoe => ww_devoe,
	o => \segments[14]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\segments[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2|out1~0_combout\,
	devoe => ww_devoe,
	o => \segments[15]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\segments[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2|out2~0_combout\,
	devoe => ww_devoe,
	o => \segments[16]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\segments[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2|out3~0_combout\,
	devoe => ww_devoe,
	o => \segments[17]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\segments[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2|out4~0_combout\,
	devoe => ww_devoe,
	o => \segments[18]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\segments[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2|out5~0_combout\,
	devoe => ww_devoe,
	o => \segments[19]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\segments[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2|out6~0_combout\,
	devoe => ww_devoe,
	o => \segments[20]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\segments[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3|out0~0_combout\,
	devoe => ww_devoe,
	o => \segments[21]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\segments[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3|out1~0_combout\,
	devoe => ww_devoe,
	o => \segments[22]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\segments[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3|out2~0_combout\,
	devoe => ww_devoe,
	o => \segments[23]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\segments[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3|out3~0_combout\,
	devoe => ww_devoe,
	o => \segments[24]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\segments[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3|out4~0_combout\,
	devoe => ww_devoe,
	o => \segments[25]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\segments[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3|out5~0_combout\,
	devoe => ww_devoe,
	o => \segments[26]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\segments[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3|out6~0_combout\,
	devoe => ww_devoe,
	o => \segments[27]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\segments[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4|out1~0_combout\,
	devoe => ww_devoe,
	o => \segments[28]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\segments[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segments[29]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\segments[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4|out1~1_combout\,
	devoe => ww_devoe,
	o => \segments[30]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\segments[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4|out1~0_combout\,
	devoe => ww_devoe,
	o => \segments[31]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\segments[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \switches[16]~input_o\,
	devoe => ww_devoe,
	o => \segments[32]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\segments[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4|out5~0_combout\,
	devoe => ww_devoe,
	o => \segments[33]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\segments[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_switches[17]~input_o\,
	devoe => ww_devoe,
	o => \segments[34]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\segments[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[35]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\segments[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[36]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\segments[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[37]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\segments[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[38]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\segments[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[39]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\segments[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[40]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\segments[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[41]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\segments[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[42]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\segments[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[43]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\segments[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[44]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\segments[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[45]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\segments[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[46]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\segments[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[47]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\segments[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[48]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\segments[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[49]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\segments[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[50]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\segments[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[51]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\segments[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[52]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\segments[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[53]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\segments[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[54]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\segments[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[55]~output_o\);

-- Location: IOIBUF_X115_Y13_N8
\switches[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(3),
	o => \switches[3]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\switches[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(1),
	o => \switches[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\switches[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(2),
	o => \switches[2]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\switches[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(0),
	o => \switches[0]~input_o\);

-- Location: LCCOMB_X114_Y50_N24
\HEX0|out0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0|out0~0_combout\ = (\switches[3]~input_o\ & (\switches[0]~input_o\ & (\switches[1]~input_o\ $ (\switches[2]~input_o\)))) # (!\switches[3]~input_o\ & (!\switches[1]~input_o\ & (\switches[2]~input_o\ $ (\switches[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[3]~input_o\,
	datab => \switches[1]~input_o\,
	datac => \switches[2]~input_o\,
	datad => \switches[0]~input_o\,
	combout => \HEX0|out0~0_combout\);

-- Location: LCCOMB_X114_Y50_N2
\HEX0|out1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0|out1~0_combout\ = (\switches[3]~input_o\ & ((\switches[0]~input_o\ & (\switches[1]~input_o\)) # (!\switches[0]~input_o\ & ((\switches[2]~input_o\))))) # (!\switches[3]~input_o\ & (\switches[2]~input_o\ & (\switches[1]~input_o\ $ 
-- (\switches[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[3]~input_o\,
	datab => \switches[1]~input_o\,
	datac => \switches[2]~input_o\,
	datad => \switches[0]~input_o\,
	combout => \HEX0|out1~0_combout\);

-- Location: LCCOMB_X114_Y50_N4
\HEX0|out2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0|out2~0_combout\ = (\switches[3]~input_o\ & (\switches[2]~input_o\ & ((\switches[1]~input_o\) # (!\switches[0]~input_o\)))) # (!\switches[3]~input_o\ & (\switches[1]~input_o\ & (!\switches[2]~input_o\ & !\switches[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[3]~input_o\,
	datab => \switches[1]~input_o\,
	datac => \switches[2]~input_o\,
	datad => \switches[0]~input_o\,
	combout => \HEX0|out2~0_combout\);

-- Location: LCCOMB_X114_Y50_N14
\HEX0|out3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0|out3~0_combout\ = (\switches[0]~input_o\ & ((\switches[1]~input_o\ $ (!\switches[2]~input_o\)))) # (!\switches[0]~input_o\ & ((\switches[3]~input_o\ & (\switches[1]~input_o\ & !\switches[2]~input_o\)) # (!\switches[3]~input_o\ & 
-- (!\switches[1]~input_o\ & \switches[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[3]~input_o\,
	datab => \switches[1]~input_o\,
	datac => \switches[2]~input_o\,
	datad => \switches[0]~input_o\,
	combout => \HEX0|out3~0_combout\);

-- Location: LCCOMB_X114_Y50_N0
\HEX0|out4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0|out4~0_combout\ = (\switches[1]~input_o\ & (!\switches[3]~input_o\ & ((\switches[0]~input_o\)))) # (!\switches[1]~input_o\ & ((\switches[2]~input_o\ & (!\switches[3]~input_o\)) # (!\switches[2]~input_o\ & ((\switches[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[3]~input_o\,
	datab => \switches[1]~input_o\,
	datac => \switches[2]~input_o\,
	datad => \switches[0]~input_o\,
	combout => \HEX0|out4~0_combout\);

-- Location: LCCOMB_X114_Y50_N26
\HEX0|out5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0|out5~0_combout\ = (\switches[1]~input_o\ & (!\switches[3]~input_o\ & (!\switches[2]~input_o\))) # (!\switches[1]~input_o\ & (\switches[0]~input_o\ & (\switches[3]~input_o\ $ (!\switches[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[3]~input_o\,
	datab => \switches[1]~input_o\,
	datac => \switches[2]~input_o\,
	datad => \switches[0]~input_o\,
	combout => \HEX0|out5~0_combout\);

-- Location: LCCOMB_X114_Y50_N12
\HEX0|out6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0|out6~0_combout\ = (\switches[0]~input_o\ & (!\switches[3]~input_o\ & (\switches[1]~input_o\ $ (!\switches[2]~input_o\)))) # (!\switches[0]~input_o\ & (!\switches[1]~input_o\ & (\switches[3]~input_o\ $ (!\switches[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[3]~input_o\,
	datab => \switches[1]~input_o\,
	datac => \switches[2]~input_o\,
	datad => \switches[0]~input_o\,
	combout => \HEX0|out6~0_combout\);

-- Location: IOIBUF_X115_Y15_N1
\switches[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(7),
	o => \switches[7]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\switches[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(5),
	o => \switches[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\switches[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(6),
	o => \switches[6]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\switches[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(4),
	o => \switches[4]~input_o\);

-- Location: LCCOMB_X114_Y22_N24
\HEX1|out0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1|out0~0_combout\ = (\switches[7]~input_o\ & (\switches[4]~input_o\ & (\switches[5]~input_o\ $ (\switches[6]~input_o\)))) # (!\switches[7]~input_o\ & (!\switches[5]~input_o\ & (\switches[6]~input_o\ $ (\switches[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[7]~input_o\,
	datab => \switches[5]~input_o\,
	datac => \switches[6]~input_o\,
	datad => \switches[4]~input_o\,
	combout => \HEX1|out0~0_combout\);

-- Location: LCCOMB_X114_Y22_N2
\HEX1|out1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1|out1~0_combout\ = (\switches[7]~input_o\ & ((\switches[4]~input_o\ & (\switches[5]~input_o\)) # (!\switches[4]~input_o\ & ((\switches[6]~input_o\))))) # (!\switches[7]~input_o\ & (\switches[6]~input_o\ & (\switches[5]~input_o\ $ 
-- (\switches[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[7]~input_o\,
	datab => \switches[5]~input_o\,
	datac => \switches[6]~input_o\,
	datad => \switches[4]~input_o\,
	combout => \HEX1|out1~0_combout\);

-- Location: LCCOMB_X114_Y22_N28
\HEX1|out2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1|out2~0_combout\ = (\switches[7]~input_o\ & (\switches[6]~input_o\ & ((\switches[5]~input_o\) # (!\switches[4]~input_o\)))) # (!\switches[7]~input_o\ & (\switches[5]~input_o\ & (!\switches[6]~input_o\ & !\switches[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[7]~input_o\,
	datab => \switches[5]~input_o\,
	datac => \switches[6]~input_o\,
	datad => \switches[4]~input_o\,
	combout => \HEX1|out2~0_combout\);

-- Location: LCCOMB_X114_Y22_N22
\HEX1|out3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1|out3~0_combout\ = (\switches[4]~input_o\ & ((\switches[5]~input_o\ $ (!\switches[6]~input_o\)))) # (!\switches[4]~input_o\ & ((\switches[7]~input_o\ & (\switches[5]~input_o\ & !\switches[6]~input_o\)) # (!\switches[7]~input_o\ & 
-- (!\switches[5]~input_o\ & \switches[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[7]~input_o\,
	datab => \switches[5]~input_o\,
	datac => \switches[6]~input_o\,
	datad => \switches[4]~input_o\,
	combout => \HEX1|out3~0_combout\);

-- Location: LCCOMB_X114_Y22_N8
\HEX1|out4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1|out4~0_combout\ = (\switches[5]~input_o\ & (!\switches[7]~input_o\ & ((\switches[4]~input_o\)))) # (!\switches[5]~input_o\ & ((\switches[6]~input_o\ & (!\switches[7]~input_o\)) # (!\switches[6]~input_o\ & ((\switches[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[7]~input_o\,
	datab => \switches[5]~input_o\,
	datac => \switches[6]~input_o\,
	datad => \switches[4]~input_o\,
	combout => \HEX1|out4~0_combout\);

-- Location: LCCOMB_X114_Y22_N18
\HEX1|out5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1|out5~0_combout\ = (\switches[5]~input_o\ & (!\switches[7]~input_o\ & (!\switches[6]~input_o\))) # (!\switches[5]~input_o\ & (\switches[4]~input_o\ & (\switches[7]~input_o\ $ (!\switches[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[7]~input_o\,
	datab => \switches[5]~input_o\,
	datac => \switches[6]~input_o\,
	datad => \switches[4]~input_o\,
	combout => \HEX1|out5~0_combout\);

-- Location: LCCOMB_X114_Y22_N12
\HEX1|out6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1|out6~0_combout\ = (\switches[4]~input_o\ & (!\switches[7]~input_o\ & (\switches[5]~input_o\ $ (!\switches[6]~input_o\)))) # (!\switches[4]~input_o\ & (!\switches[5]~input_o\ & (\switches[7]~input_o\ $ (!\switches[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[7]~input_o\,
	datab => \switches[5]~input_o\,
	datac => \switches[6]~input_o\,
	datad => \switches[4]~input_o\,
	combout => \HEX1|out6~0_combout\);

-- Location: IOIBUF_X115_Y4_N22
\switches[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(8),
	o => \switches[8]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\switches[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(10),
	o => \switches[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\switches[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(11),
	o => \switches[11]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\switches[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(9),
	o => \switches[9]~input_o\);

-- Location: LCCOMB_X114_Y16_N0
\HEX2|out0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2|out0~0_combout\ = (\switches[10]~input_o\ & (!\switches[9]~input_o\ & (\switches[8]~input_o\ $ (!\switches[11]~input_o\)))) # (!\switches[10]~input_o\ & (\switches[8]~input_o\ & (\switches[11]~input_o\ $ (!\switches[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[8]~input_o\,
	datab => \switches[10]~input_o\,
	datac => \switches[11]~input_o\,
	datad => \switches[9]~input_o\,
	combout => \HEX2|out0~0_combout\);

-- Location: LCCOMB_X114_Y16_N2
\HEX2|out1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2|out1~0_combout\ = (\switches[11]~input_o\ & ((\switches[8]~input_o\ & ((\switches[9]~input_o\))) # (!\switches[8]~input_o\ & (\switches[10]~input_o\)))) # (!\switches[11]~input_o\ & (\switches[10]~input_o\ & (\switches[8]~input_o\ $ 
-- (\switches[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[8]~input_o\,
	datab => \switches[10]~input_o\,
	datac => \switches[11]~input_o\,
	datad => \switches[9]~input_o\,
	combout => \HEX2|out1~0_combout\);

-- Location: LCCOMB_X114_Y16_N20
\HEX2|out2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2|out2~0_combout\ = (\switches[10]~input_o\ & (\switches[11]~input_o\ & ((\switches[9]~input_o\) # (!\switches[8]~input_o\)))) # (!\switches[10]~input_o\ & (!\switches[8]~input_o\ & (!\switches[11]~input_o\ & \switches[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[8]~input_o\,
	datab => \switches[10]~input_o\,
	datac => \switches[11]~input_o\,
	datad => \switches[9]~input_o\,
	combout => \HEX2|out2~0_combout\);

-- Location: LCCOMB_X114_Y16_N14
\HEX2|out3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2|out3~0_combout\ = (\switches[8]~input_o\ & (\switches[10]~input_o\ $ (((!\switches[9]~input_o\))))) # (!\switches[8]~input_o\ & ((\switches[10]~input_o\ & (!\switches[11]~input_o\ & !\switches[9]~input_o\)) # (!\switches[10]~input_o\ & 
-- (\switches[11]~input_o\ & \switches[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[8]~input_o\,
	datab => \switches[10]~input_o\,
	datac => \switches[11]~input_o\,
	datad => \switches[9]~input_o\,
	combout => \HEX2|out3~0_combout\);

-- Location: LCCOMB_X114_Y16_N16
\HEX2|out4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2|out4~0_combout\ = (\switches[9]~input_o\ & (\switches[8]~input_o\ & ((!\switches[11]~input_o\)))) # (!\switches[9]~input_o\ & ((\switches[10]~input_o\ & ((!\switches[11]~input_o\))) # (!\switches[10]~input_o\ & (\switches[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[8]~input_o\,
	datab => \switches[10]~input_o\,
	datac => \switches[11]~input_o\,
	datad => \switches[9]~input_o\,
	combout => \HEX2|out4~0_combout\);

-- Location: LCCOMB_X114_Y16_N26
\HEX2|out5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2|out5~0_combout\ = (\switches[9]~input_o\ & (((!\switches[10]~input_o\ & !\switches[11]~input_o\)))) # (!\switches[9]~input_o\ & (\switches[8]~input_o\ & (\switches[10]~input_o\ $ (!\switches[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[8]~input_o\,
	datab => \switches[10]~input_o\,
	datac => \switches[11]~input_o\,
	datad => \switches[9]~input_o\,
	combout => \HEX2|out5~0_combout\);

-- Location: LCCOMB_X114_Y16_N28
\HEX2|out6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2|out6~0_combout\ = (\switches[8]~input_o\ & (!\switches[11]~input_o\ & (\switches[10]~input_o\ $ (!\switches[9]~input_o\)))) # (!\switches[8]~input_o\ & (!\switches[9]~input_o\ & (\switches[10]~input_o\ $ (!\switches[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[8]~input_o\,
	datab => \switches[10]~input_o\,
	datac => \switches[11]~input_o\,
	datad => \switches[9]~input_o\,
	combout => \HEX2|out6~0_combout\);

-- Location: IOIBUF_X115_Y9_N22
\switches[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(13),
	o => \switches[13]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\switches[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(12),
	o => \switches[12]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\switches[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(15),
	o => \switches[15]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\switches[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(14),
	o => \switches[14]~input_o\);

-- Location: LCCOMB_X114_Y7_N24
\HEX3|out0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3|out0~0_combout\ = (\switches[15]~input_o\ & (\switches[12]~input_o\ & (\switches[13]~input_o\ $ (\switches[14]~input_o\)))) # (!\switches[15]~input_o\ & (!\switches[13]~input_o\ & (\switches[12]~input_o\ $ (\switches[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[13]~input_o\,
	datab => \switches[12]~input_o\,
	datac => \switches[15]~input_o\,
	datad => \switches[14]~input_o\,
	combout => \HEX3|out0~0_combout\);

-- Location: LCCOMB_X114_Y7_N10
\HEX3|out1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3|out1~0_combout\ = (\switches[13]~input_o\ & ((\switches[12]~input_o\ & (\switches[15]~input_o\)) # (!\switches[12]~input_o\ & ((\switches[14]~input_o\))))) # (!\switches[13]~input_o\ & (\switches[14]~input_o\ & (\switches[12]~input_o\ $ 
-- (\switches[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[13]~input_o\,
	datab => \switches[12]~input_o\,
	datac => \switches[15]~input_o\,
	datad => \switches[14]~input_o\,
	combout => \HEX3|out1~0_combout\);

-- Location: LCCOMB_X114_Y7_N28
\HEX3|out2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3|out2~0_combout\ = (\switches[15]~input_o\ & (\switches[14]~input_o\ & ((\switches[13]~input_o\) # (!\switches[12]~input_o\)))) # (!\switches[15]~input_o\ & (\switches[13]~input_o\ & (!\switches[12]~input_o\ & !\switches[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[13]~input_o\,
	datab => \switches[12]~input_o\,
	datac => \switches[15]~input_o\,
	datad => \switches[14]~input_o\,
	combout => \HEX3|out2~0_combout\);

-- Location: LCCOMB_X114_Y7_N30
\HEX3|out3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3|out3~0_combout\ = (\switches[12]~input_o\ & (\switches[13]~input_o\ $ (((!\switches[14]~input_o\))))) # (!\switches[12]~input_o\ & ((\switches[13]~input_o\ & (\switches[15]~input_o\ & !\switches[14]~input_o\)) # (!\switches[13]~input_o\ & 
-- (!\switches[15]~input_o\ & \switches[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[13]~input_o\,
	datab => \switches[12]~input_o\,
	datac => \switches[15]~input_o\,
	datad => \switches[14]~input_o\,
	combout => \HEX3|out3~0_combout\);

-- Location: LCCOMB_X114_Y7_N0
\HEX3|out4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3|out4~0_combout\ = (\switches[13]~input_o\ & (\switches[12]~input_o\ & (!\switches[15]~input_o\))) # (!\switches[13]~input_o\ & ((\switches[14]~input_o\ & ((!\switches[15]~input_o\))) # (!\switches[14]~input_o\ & (\switches[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[13]~input_o\,
	datab => \switches[12]~input_o\,
	datac => \switches[15]~input_o\,
	datad => \switches[14]~input_o\,
	combout => \HEX3|out4~0_combout\);

-- Location: LCCOMB_X114_Y7_N26
\HEX3|out5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3|out5~0_combout\ = (\switches[13]~input_o\ & (((!\switches[15]~input_o\ & !\switches[14]~input_o\)))) # (!\switches[13]~input_o\ & (\switches[12]~input_o\ & (\switches[15]~input_o\ $ (!\switches[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[13]~input_o\,
	datab => \switches[12]~input_o\,
	datac => \switches[15]~input_o\,
	datad => \switches[14]~input_o\,
	combout => \HEX3|out5~0_combout\);

-- Location: LCCOMB_X114_Y7_N4
\HEX3|out6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3|out6~0_combout\ = (\switches[12]~input_o\ & (!\switches[15]~input_o\ & (\switches[13]~input_o\ $ (!\switches[14]~input_o\)))) # (!\switches[12]~input_o\ & (!\switches[13]~input_o\ & (\switches[15]~input_o\ $ (!\switches[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[13]~input_o\,
	datab => \switches[12]~input_o\,
	datac => \switches[15]~input_o\,
	datad => \switches[14]~input_o\,
	combout => \HEX3|out6~0_combout\);

-- Location: IOIBUF_X115_Y13_N1
\switches[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(16),
	o => \switches[16]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\switches[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(17),
	o => \switches[17]~input_o\);

-- Location: LCCOMB_X83_Y1_N24
\HEX4|out1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4|out1~0_combout\ = (\switches[16]~input_o\ & !\switches[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[16]~input_o\,
	datad => \switches[17]~input_o\,
	combout => \HEX4|out1~0_combout\);

-- Location: LCCOMB_X83_Y1_N10
\HEX4|out1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4|out1~1_combout\ = (!\switches[16]~input_o\ & \switches[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[16]~input_o\,
	datad => \switches[17]~input_o\,
	combout => \HEX4|out1~1_combout\);

-- Location: LCCOMB_X83_Y1_N28
\HEX4|out5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4|out5~0_combout\ = (\switches[16]~input_o\) # (\switches[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches[16]~input_o\,
	datad => \switches[17]~input_o\,
	combout => \HEX4|out5~0_combout\);

ww_segments(0) <= \segments[0]~output_o\;

ww_segments(1) <= \segments[1]~output_o\;

ww_segments(2) <= \segments[2]~output_o\;

ww_segments(3) <= \segments[3]~output_o\;

ww_segments(4) <= \segments[4]~output_o\;

ww_segments(5) <= \segments[5]~output_o\;

ww_segments(6) <= \segments[6]~output_o\;

ww_segments(7) <= \segments[7]~output_o\;

ww_segments(8) <= \segments[8]~output_o\;

ww_segments(9) <= \segments[9]~output_o\;

ww_segments(10) <= \segments[10]~output_o\;

ww_segments(11) <= \segments[11]~output_o\;

ww_segments(12) <= \segments[12]~output_o\;

ww_segments(13) <= \segments[13]~output_o\;

ww_segments(14) <= \segments[14]~output_o\;

ww_segments(15) <= \segments[15]~output_o\;

ww_segments(16) <= \segments[16]~output_o\;

ww_segments(17) <= \segments[17]~output_o\;

ww_segments(18) <= \segments[18]~output_o\;

ww_segments(19) <= \segments[19]~output_o\;

ww_segments(20) <= \segments[20]~output_o\;

ww_segments(21) <= \segments[21]~output_o\;

ww_segments(22) <= \segments[22]~output_o\;

ww_segments(23) <= \segments[23]~output_o\;

ww_segments(24) <= \segments[24]~output_o\;

ww_segments(25) <= \segments[25]~output_o\;

ww_segments(26) <= \segments[26]~output_o\;

ww_segments(27) <= \segments[27]~output_o\;

ww_segments(28) <= \segments[28]~output_o\;

ww_segments(29) <= \segments[29]~output_o\;

ww_segments(30) <= \segments[30]~output_o\;

ww_segments(31) <= \segments[31]~output_o\;

ww_segments(32) <= \segments[32]~output_o\;

ww_segments(33) <= \segments[33]~output_o\;

ww_segments(34) <= \segments[34]~output_o\;

ww_segments(35) <= \segments[35]~output_o\;

ww_segments(36) <= \segments[36]~output_o\;

ww_segments(37) <= \segments[37]~output_o\;

ww_segments(38) <= \segments[38]~output_o\;

ww_segments(39) <= \segments[39]~output_o\;

ww_segments(40) <= \segments[40]~output_o\;

ww_segments(41) <= \segments[41]~output_o\;

ww_segments(42) <= \segments[42]~output_o\;

ww_segments(43) <= \segments[43]~output_o\;

ww_segments(44) <= \segments[44]~output_o\;

ww_segments(45) <= \segments[45]~output_o\;

ww_segments(46) <= \segments[46]~output_o\;

ww_segments(47) <= \segments[47]~output_o\;

ww_segments(48) <= \segments[48]~output_o\;

ww_segments(49) <= \segments[49]~output_o\;

ww_segments(50) <= \segments[50]~output_o\;

ww_segments(51) <= \segments[51]~output_o\;

ww_segments(52) <= \segments[52]~output_o\;

ww_segments(53) <= \segments[53]~output_o\;

ww_segments(54) <= \segments[54]~output_o\;

ww_segments(55) <= \segments[55]~output_o\;
END structure;


