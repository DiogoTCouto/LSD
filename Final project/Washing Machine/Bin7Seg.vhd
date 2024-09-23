library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7Seg is
	port(enable 	: in  std_logic;
		  binInput	: in  std_logic_vector(3 downto 0);
		  todisplay	: out std_logic_vector(6 downto 0));
end Bin7Seg;

architecture Behavioral of Bin7Seg is
	
	signal s_toDisplay : std_logic_vector(6 downto 0);
	
begin
		with binInput select
				s_toDisplay <= "0001100" when "0001",	--P --1 
									"1111001" when "0010",   --1 --2
									"0100100" when "0011",   --2 --3
									"0110000" when "0100",   --3 --4
									"0000010" when "0101",   --6 --5
									"1000000" when "0110",   --0 6
									"0011001" when "0111", --4 --7
									"0010010" when "1000",  --5 --8
									"1111000" when "1001",  --7 --9
									"0000000" when "1010",   --8 --10
									"0010000" when "1011", --9 --11
									"1111111" when others;  --null 

		toDisplay <= s_toDisplay when (enable = '1') else (others => '1');
end Behavioral;