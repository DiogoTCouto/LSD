library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Timer1 is
	port(reset		: in  std_logic;
		  clk			: in  std_logic;
		  TimeEnable1 : in std_logic;
		  newTime1	: in  std_logic;
		  timeValue1	: in  std_logic_vector(7 downto 0);
		  timeExp1	: out std_logic);
end Timer1;

architecture Behavioral of Timer1 is

	signal s_counter : unsigned(7 downto 0) := (others => '1');
	signal s_cntZero : std_logic := '0';

begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_counter <= (others => '1');
				s_cntZero <= '0'; -- reseta o contador
			elsif ((newTime1 = '1') and (TimeEnable1 ='1')) then
				s_counter <= unsigned(timeValue1) - 1; -- decrementa o valor em 1
				s_cntZero <= '0';
			else
				if (s_counter = "00000000") then
					s_cntZero <= '1';
				else
					s_counter <= s_counter  - 1;
					s_cntZero <= '0';
				end if;
			end if;
		end if;
	end process;
	
	timeExp1 <= s_cntZero;
end Behavioral;