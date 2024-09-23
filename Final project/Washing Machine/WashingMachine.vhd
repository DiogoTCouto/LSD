library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity WashingMachine is
	port(CLOCK_50 : in std_logic;
	  KEY 	  : in  std_logic_vector(3 downto 0);
	  SW		  : in  std_logic_vector(17 downto 0);
	  LEDG	  : out  std_logic_vector(7 downto 0);
	  LEDR	  : out  std_logic_vector(17 downto 0);
	  HEX0 	  : out std_logic_vector(6 downto 0);
	  HEX1 	  : out std_logic_vector(6 downto 0);
	  HEX2 	  : out std_logic_vector(6 downto 0);
	  HEX3 	  : out std_logic_vector(6 downto 0);
	  HEX4 	  : out std_logic_vector(6 downto 0);
	  HEX5 	  : out std_logic_vector(6 downto 0));
end WashingMachine;

architecture behavioral of WashingMachine is

		signal s_enable		  : std_logic; -- Responsável pelo piscar/exibição estática hexadecimal 
		signal s_modo       : std_logic_vector(15 downto 0); -- Dá informação aos bin7seg modules sobre em que programa a maquina se encontra
		signal s_timer			  : std_logic; -- Indica à maquinda de estados quando deve mudar de um estado para o outro
		signal s_sep			  : std_logic; -- Permite com que cada FSM funcione seperadamente
		signal s_done, s_doneOG 			  : std_logic; -- Dá um sinal após a maquina ter acabado o programa/ter acabado a função
		signal s_piscar 		  : std_logic;	-- Faz o display piscar
		signal s_debouncedKEY0 : std_logic;								
		signal s_debouncedKEY1 : std_logic;	-- Certifica-se que todas as keys estão debounced
		signal s_debouncedKEY2 : std_logic;	-- para nao haver problemas com os inputs
		signal s_debouncedKEY3 : std_logic;	
		signal s_newTime_1, s_timeExp_1	: std_logic;
		signal s_newTime_2, s_timeExp_2	: std_logic;
				signal s_stop : std_logic;
		signal s_timeVal_1					: std_logic_vector(7 downto 0);
		signal s_timeVal_2					: std_logic_vector(7 downto 0);
		signal s_timeEnable_2, s_timeEnable_1            : std_logic;
		signal s_PGout                :std_logic_vector(2 downto 0);
		signal s_PGin                 : std_logic_vector(2 downto 0);
		signal decOut_1, decOut_2	:	std_logic_vector(3 downto 0);
		signal s_timeReal : std_logic_vector(7 downto 0);
		

		
begin
	
-- FSM DISPLAY
	FSM: entity work.FSM(Behavioral)
					port map(clk => CLOCK_50,
								reset => SW(17),
								KEY3 => s_debouncedKEY3,
								KEY2 => s_debouncedKEY2,
								KEY0 => s_debouncedKEY0,
								KEY1 => s_debouncedKEY1,
								stop => s_stop,
								newTime2 => s_newTime_2,
								timeValue2 => s_timeVal_2,
								timeEnable2 => s_timeEnable_2,
								timeExp2 => s_timeExp_2,
								static => s_enable,
								finishs => s_done,
								Modo => s_modo,
								PGout => s_PGout,
								wash_onS => LEDR(0));
								
	--Bin2BCD_tempo_maquina:	entity work.Bin2BCDDecoder(Behavioral)
											--port map(inBin 	=> std_logic_vector(s_timeReal),
													--outBCD 	=> decOut_1);
										
	--hexdisplay5:				entity work.bin7Seg(Behavioral)
										--port map(enable => s_enable,
													--binInput => s_timeReal(7 downto 4),
													--todisplay=> HEX5);
	
	--hexdisplay4:				entity work.bin7Seg(Behavioral)
										--port map( enable => s_enable,
													--binInput => s_timeReal(3 downto 0),
													--todisplay => HEX4);


	hexdisplay3: entity work.Bin7Seg(Behavioral)
						port map(enable => s_enable,
									binInput => s_modo(15 downto 12),
									todisplay => HEX3);
						
	hexdisplay2: entity work.Bin7Seg(Behavioral)
						port map(enable => s_enable,
									binInput => s_modo(11 downto 8),
									todisplay => HEX2);								
								
	hexdisplay1: entity work.Bin7Seg(Behavioral)
						port map(enable => s_enable,
									binInput => s_modo(7 downto 4),
									todisplay => HEX1);
						
	hexdisplay0: entity work.Bin7Seg(Behavioral)
						port map(enable => s_enable,
									binInput => s_modo(3 downto 0),
									todisplay => HEX0);
									

									
-- MDVA
	MDVA: entity work.MDVA(Behavioral)
					port map(clk => CLOCK_50,
								reset => SW(17),
								PGin => s_PGin,
								water_valve =>LEDG(0),
								water_pump => LEDG(1),
								stopf => s_timeEnable_1,
								rinse => LEDG(2),
								spin => LEDG(3),
								finishOG => s_doneOG,
								newTime1 => s_newTime_1,
								timeValue1 => s_timeVal_1,
								timeEnable1 => s_timeEnable_1,
								timeExp1 => s_timeExp_1);
								
								


								
								
								
								
								

-- DEBOUNCERS

debouncer0: entity work.DebounceUnit(Behavioral)
					generic map(kHzClkFreq		=> 5e4,
							  	   mSecMinInWidth => 100,
								   inPolarity		=> '0',
									outPolarity		=> '1')
					port map(refClk	 => CLOCK_50,
								dirtyIn	 => KEY(0),
								pulsedOut => s_debouncedKEY0);
								
debouncer1: entity work.DebounceUnit(Behavioral)
					generic map(kHzClkFreq		=> 5e4,
							  	   mSecMinInWidth => 100,
								   inPolarity		=> '0',
									outPolarity		=> '1')
					port map(refClk	 => CLOCK_50,
								dirtyIn	 => KEY(1),
								pulsedOut => s_debouncedKEY1);
								
debouncer2: entity work.DebounceUnit(Behavioral)
					generic map(kHzClkFreq		=> 5e4,
							  	   mSecMinInWidth => 100,
								   inPolarity		=> '0',
									outPolarity		=> '1')
					port map(refClk	 => CLOCK_50,
								dirtyIn	 => KEY(2),
								pulsedOut => s_debouncedKEY2);

debouncer3: entity work.DebounceUnit(Behavioral)
					generic map(kHzClkFreq		=> 5e4,
							  	   mSecMinInWidth => 100,
								   inPolarity		=> '0',
									outPolarity		=> '1')
					port map(refClk	 => CLOCK_50,
								dirtyIn	 => KEY(3),
								pulsedOut => s_debouncedKEY3);
								
								
-- CLOCKS/TIMERS
	bin7enable: entity work.ClkDividerN(RTL)
					generic map (k 	=> 10e6)
					port map (clkIn	=> CLOCK_50,
							   clkOut => s_piscar);

	timer_1 : entity work.Timer1(Behavioral)
		port map(reset		=> not SW(17),
					clk		=> CLOCK_50,
					newTime1	=> s_newTime_1,
					timeValue1	=> s_timeVal_1,
					TimeEnable1 => s_timeEnable_1,
					timeExp1	=> s_timeExp_1);
					
					
	timer_2 : entity work.Timer2(Behavioral)
		port map(reset		=> not SW(17),
					clk		=> CLOCK_50,
					newTime2	=> s_newTime_2,
					timeValue2	=> s_timeVal_2,
					TimeEnable2 => s_timeEnable_2,
					timeReal => s_timeReal,
					timeExp2	=> s_timeExp_2);
								


		
end behavioral;