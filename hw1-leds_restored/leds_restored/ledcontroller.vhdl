library IEEE;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_1164.all;

entity decoder4to7 is

port (
	in0, in1, in2, in3 : in std_logic;
	out0, out1, out2, out3, out4, out5, out6 : out std_logic);
end entity;

architecture structure of decoder4to7 is

begin

out0 <= (in0 and (not in1) and (not in2) and (not in3)) or ((not in0) and (not in1) and in2 and (not in3)) or (in0 and in1 and (not in2) and in3) or (in0 and (not in1) and in2 and in3);
out1 <= (in0 and (not in1) and in2 and (not in3)) or ((not in0) and in1 and in2 and (not in3)) or (in0 and in1 and (not in2) and in3) or ((not in0) and (not in1) and in2 and in3) or ((not in0) and in1 and in2 and in3) or (in0 and in1 and in2 and in3);
out2 <= ((not in0) and in1 and (not in2) and (not in3)) or ((not in0) and (not in1) and in2 and in3) or ((not in0) and in1 and in2 and in3) or (in0 and in1 and in2 and in3);
out3 <= (in0 and (not in1) and (not in2) and (not in3)) or ((not in0) and (not in1) and in2 and (not in3)) or (in0 and in1 and in2 and (not in3)) or (in0 and (not in1) and (not in2) and in3) or ((not in0) and in1 and (not in2) and in3) or (in0 and in1 and in2 and in3);
out4 <= (in0 and (not in1) and (not in2) and (not in3)) or (in0 and in1 and (not in2) and (not in3)) or ((not in0) and (not in1) and in2 and (not in3)) or (in0 and (not in1) and in2 and (not in3)) or (in0 and in1 and in2 and (not in3)) or (in0 and (not in1) and (not in2) and in3);
out5 <= (in0 and (not in1) and (not in2) and (not in3)) or ((not in0) and in1 and (not in2) and (not in3)) or (in0 and in1 and (not in2) and (not in3)) or (in0 and (not in1) and in2 and in3);
out6 <= ((not in0) and (not in1) and (not in2) and (not in3)) or (in0 and (not in1) and (not in2) and (not in3)) or (in0 and in1 and in2 and (not in3)) or ((not in0) and (not in1) and in2 and in3);

end structure;



library IEEE;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_1164.all;

entity ledcontroller is

port (
   switches : in std_logic_vector (17 downto 0);
   segments : out std_logic_vector (55 downto 0));
end entity;

architecture basic of ledcontroller is
	component decoder4to7
		port (
			in0, in1, in2, in3 : in std_logic;
			out0, out1, out2, out3, out4, out5, out6 : out std_logic);
	end component;
	
	signal zero: std_logic :='0';
	signal one: std_logic :='1';
begin

HEX0: decoder4to7 port map (switches(0), switches(1), switches(2), switches(3), segments(0), segments(1), segments(2), segments(3), segments(4), segments(5), segments(6));
HEX1: decoder4to7 port map (switches(4), switches(5), switches(6), switches(7), segments(7), segments(8), segments(9), segments(10), segments(11), segments(12), segments(13));
HEX2: decoder4to7 port map (switches(8), switches(9), switches(10), switches(11), segments(14), segments(15), segments(16), segments(17), segments(18), segments(19), segments(20));
HEX3: decoder4to7 port map (switches(12), switches(13), switches(14), switches(15), segments(21), segments(22), segments(23), segments(24), segments(25), segments(26), segments(27));
HEX4: decoder4to7 port map (switches(16), switches(17), zero, zero, segments(28), segments(29), segments(30), segments(31), segments(32), segments(33), segments(34));

HEX5to7 : for i in 35 to 55 generate
 segments(i) <= one;
end generate HEX5to7;


end basic;
