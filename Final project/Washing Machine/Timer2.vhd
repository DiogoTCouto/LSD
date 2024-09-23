library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Timer2 is
	port(reset		: in  std_logic;
		  clk			: in  std_logic;
		  TimeEnable2 : in std_logic;
		  newTime2	: in  std_logic;
		  timeValue2	: in  std_logic_vector(7 downto 0);
		  timeReal : out std_logic_vector(7 downto 0);
		  timeExp2	: out std_logic);
end Timer2;

architecture Behavioral of Timer2 is

	signal s_counter : unsigned(7 downto 0) := (others => '1');
	signal s_cntZero : std_logic := '0';

begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_counter <= (others => '1');
				s_cntZero <= '0'; -- reseta o contador
			elsif ((newTime2 = '1') and (TimeEnable2 ='1')) then
				s_counter <= unsigned(timeValue2) - 1; -- decrementa o valor em 1
				s_cntZero <= '0';
				timeReal <= std_logic_vector(s_counter);
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
	
	timeExp2 <= s_cntZero;
end Behavioral;