library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FSM is
	port( reset		: in std_logic; --switch
		clk		: in std_logic;
		KEY0		: in std_logic; --SART/STOP
		KEY1		: in std_logic; --P1
		KEY2		: in std_logic; --P2
		KEY3		: in std_logic; --P3
		Modo		: out std_logic_vector(15 downto 0);
		PGout		: out std_logic_vector(2 downto 0);
		static	: out std_logic;
		wash_onS : out std_logic;
		stop : out std_logic;
		finishS	: in std_logic;
		newTime2	: out std_logic;
		timeValue2 : out std_logic_vector(7 downto 0);
		timeEnable2 : out std_logic;
		timeExp2 : in std_logic);

end FSM;
--falta alterar STOP

architecture Behavioral of FSM is

	constant PG1_TIME			: std_logic_vector(7 downto 0) := "00100100"; -- 36 s
	constant PG2_TIME		: std_logic_vector(7 downto 0) := "00010111"; -- 23 s
	constant PG3_TIME			: std_logic_vector(7 downto 0) := "00001010"; -- 10 s


	type TState is (PG, PG1, PG2, PG3, RESETMOD);
	signal s_currentState, s_nextState : TState; 
	signal s_preparing: std_logic := '0';
	signal s_stateChanged : std_logic := '1';
	signal s_stopSig : std_logic;

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

	newTime2 <= s_stateChanged;

    comb_proc : process(s_currentState, KEY0, KEY1, KEY2, KEY3)
    begin
       
		case (s_currentState) is
 
		when PG =>


-- falta seleção com Start e Stop
			PGout <= "000";
			wash_onS <= '0';
			timeEnable2 <= '0';
			stop <= '0';
			Modo <= x"F_F_1_F"; -- Pnull
			timeValue2	<= (others => '-');
			static <= '1';
			

			if KEY1 = '1' then
				s_nextState <= PG1;
			elsif KEY2 = '1' then
				s_nextState <= PG2;
			elsif KEY3 = '1' then
				s_nextState <= PG3;
			elsif ((KEY0 = '1') and (s_stopSig = '0')) then
				s_stopSig <= '1';
				stop <= s_stopSig;
			elsif ((KEY0 = '1') and (s_stopSig = '1')) then
				s_stopSig <= '0';
				stop <= s_stopSig;
			else
				s_nextState <= PG;
			end if;


		when PG1 =>
			Modo <= x"4_5_1_2"; -- 36 P1
			PGout <= "100";
			wash_onS <= '1';
			timeValue2	<= PG1_TIME;
			timeEnable2 <= '1';
			static <= '1';

		

			if ((finishS = '1') and (timeExp2 = '1')) then
				s_nextState <= PG;
			end if;


		when PG2 =>
			Modo <= x"3_4_1_3"; -- 23 P2
			PGout <= "010";
			wash_onS <= '1';
			timeValue2	<= PG2_TIME;
			timeEnable2 <= '1';
			static <= '1';

			if ((finishS = '1') and (timeExp2 = '1'))  then
				s_nextState <= PG;
			end if;


		when PG3 =>
			Modo <= x"2_6_1_4"; -- 10 P3
			PGout <= "001";
			wash_onS <= '1';
			static <= '1';

			if ((finishS = '1') and (timeExp2 = '1')) then
				s_nextState <= PG;
			end if;


		when RESETMOD =>
			wash_onS <= '0';
			s_nextState <= PG;
			timeValue2	<= (others => '-');
			timeEnable2 <= '0';
			Modo <= x"F_F_F_F"; -- Pnull
			static <= '1';



        end case;

    end process;

end Behavioral;   