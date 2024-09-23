library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity MDVA is
	port( reset : in std_logic; --switch
		clk : in std_logic;
		PGin : in std_logic_vector(2 downto 0);
		water_valve : out std_logic;--------------------
		water_pump : out std_logic;--Funcionalidades da maquina
		rinse : out std_logic;--Ou seja, instruções!
		spin : out std_logic;
		wash_on : out std_logic;--------------------
		finishOG : out std_logic;
		stopf: in std_logic;
		newTime1	: out std_logic;
		timeValue1 : out std_logic_vector(7 downto 0);
		timeEnable1 : out std_logic;
		timeExp1 : in std_logic);

end MDVA;


architecture Behavioral of MDVA is

	constant WATER_IN_TIME				: std_logic_vector(7 downto 0) := "00000010"; -- 2 s
	constant ENXAGUAR_TIME		: std_logic_vector(7 downto 0) := "00000111"; -- 7 s
	constant WATER_OUT_TIME			: std_logic_vector(7 downto 0) := "00000100"; -- 4 s
	constant SPIN_TIME			: std_logic_vector(7 downto 0) := "00000110"; -- 6 s

	type TState is (WATERIN1, WATERIN2, ENXAGUAR1, ENXAGUAR2, WATEROUT1, WATEROUT2, WATEROUT3, SPIN1, RESETMOD);
	signal s_currentState, s_nextState : TState; -- faltam os sinais de
	signal s_stateChanged : std_logic := '1';

	begin
	sync_proc: process(clk)
	begin
	if (rising_edge(clk)) then
		if reset = '1' then
			s_currentState <= RESETMOD;
			s_stateChanged <= '1';
		else
			if (s_currentState /= s_nextState) then
					s_stateChanged <= '1';
				else
					s_stateChanged <= '0';
				end if;
			s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	newTime1 <= s_stateChanged;

    comb_proc : process(s_currentState, PGin)
    begin
       
		case (s_currentState) is
			when RESETMOD =>
				water_valve <= '0';
				water_pump <= '0';
				rinse <= '0';
				spin <= '0';
				wash_on <= '0';
				timeEnable1 <= '0';
				timeValue1	<= (others => '-');
				finishOG <= '0';
				
				if (stopf = '1') then
					timeEnable1 <= '0';
				else
					timeEnable1 <='1';
				end if;
				if (PGin = "100") then
					s_nextState <= WATERIN1;
				elsif (PGin = "010") then
					s_nextState <= WATERIN1;
				elsif (PGin = "001") then
					s_nextState <= SPIN1;
				end if;

			when WATERIN1 =>
				water_valve <= '1';
				water_pump <= '1';
				rinse <= '0';
				spin <= '0';
				wash_on <= '1';
				timeValue1	<= WATER_IN_TIME;
				timeEnable1 <= '1';

				if stopf = '1' then
					timeEnable1 <= '0';
				else
					timeEnable1 <='1';
				end if;
				if ((PGin = "100") and (timeExp1='1')) then
					s_nextState <= ENXAGUAR1;
				elsif ((PGin = "010") and (timeExp1='1')) then
					s_nextState <= ENXAGUAR1;
				end if;
				


			when ENXAGUAR1 =>
				water_valve <= '0';
				water_pump <= '0';
				rinse <= '1';
				spin <= '0';
				wash_on <= '1';
				timeValue1	<= ENXAGUAR_TIME;
				timeEnable1 <= '1';
				
				if stopf = '1' then
					timeEnable1 <= '0';
				else
					timeEnable1 <='1';
				end if;

				if ((PGin = "100") and (timeExp1='1')) then
					s_nextState <= WATEROUT1;
				elsif ((PGin = "010") and (timeExp1='1')) then
					s_nextState <= WATEROUT1;
				end if;


			when WATEROUT1 => 
				water_valve <= '1';
				water_pump <= '0';
				rinse <= '0';
				spin <= '0';
				wash_on <= '1';
				timeValue1	<= WATER_OUT_TIME;
				timeEnable1 <= '1';
				
				if stopf = '1' then
					timeEnable1 <= '0';
				else
					timeEnable1 <='1';
				end if;
				if ((PGin = "100") and (timeExp1='1')) then
					s_nextState <= WATERIN2;
				elsif ((PGin = "010") and (timeExp1='1')) then
					s_nextState <= SPIN1;
				elsif ((PGin = "001") and (timeExp1='1')) then
					finishOG <= '1';
				end if;

			when WATERIN2 =>
				water_valve <= '1';
				water_pump <= '1';
				rinse <= '0';
				spin <= '0';
				wash_on <= '1';
				timeValue1	<= WATER_IN_TIME;
				timeEnable1 <= '1';
				
				if stopf = '1' then
					timeEnable1 <= '0';
				else
					timeEnable1 <='1';
				end if;
				if ((PGin = "100") and (timeExp1='1')) then
					s_nextState <= ENXAGUAR2;
				end if;

			when ENXAGUAR2 =>
				water_valve <= '0';
				water_pump <= '0';
				rinse <= '1';
				spin <= '0';
				wash_on <= '1';
				timeValue1	<= ENXAGUAR_TIME;
				timeEnable1 <= '1';
				
				if stopf = '1' then
					timeEnable1 <= '0';
				else
					timeEnable1 <='1';
				end if;
				if ((PGin = "100") and (timeExp1='1')) then
					s_nextState <= WATEROUT2;
				end if;

			when WATEROUT2 =>
				water_valve <= '1';
				water_pump <= '0';
				rinse <= '0';
				spin <= '0';
				wash_on <= '1';
				timeValue1	<= WATER_OUT_TIME;
				timeEnable1 <= '1';
				
				if stopf = '1' then
					timeEnable1 <= '0';
				else
					timeEnable1 <='1';
				end if;
				if ((PGin = "100") and (timeExp1='1')) then
					s_nextState <= SPIN1;
				elsif ((PGin = "010") and (timeExp1='1')) then
					finishOG <= '1';
				end if;


			when SPIN1 =>
				water_valve <= '0';
				water_pump <= '0';
				rinse <= '0';
				spin <= '1';
				wash_on <= '1';
				timeValue1	<= SPIN_TIME;
				timeEnable1 <= '1';
				
				if stopf = '1' then
					timeEnable1 <= '0';
				else
					timeEnable1 <='1';
				end if;
				if ((PGin = "100") and (timeExp1='1')) then
					s_nextState <= WATEROUT3;
				elsif ((PGin = "010") and (timeExp1='1')) then
					s_nextState <= WATEROUT2;
				end if;

			when WATEROUT3 =>
				water_valve <= '1';
				water_pump <= '0';
				rinse <= '0';
				spin <= '0';
				wash_on <= '1';
				timeValue1	<= WATER_OUT_TIME;
				timeEnable1 <= '1';
				
				if stopf = '1' then
					timeEnable1 <= '0';
				else
					timeEnable1 <='1';
				end if;
				if ((PGin = "100") and (timeExp1='1')) then
					finishOG <= '1';
				end if;


        end case;

    end process;

end Behavioral;   