-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/20/2022 16:28:17"

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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	WashingMachine IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END WashingMachine;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF WashingMachine IS
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
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSM|Selector0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \MDVA|s_currentState.RESETMOD~0_combout\ : std_logic;
SIGNAL \MDVA|s_currentState.RESETMOD~q\ : std_logic;
SIGNAL \FSM|s_currentState.RESETMOD~0_combout\ : std_logic;
SIGNAL \FSM|s_currentState.RESETMOD~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \debouncer2|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debouncer2|s_dirtyIn~q\ : std_logic;
SIGNAL \debouncer2|s_previousIn~q\ : std_logic;
SIGNAL \debouncer2|Add0~0_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[11]~0_combout\ : std_logic;
SIGNAL \debouncer2|Add0~1\ : std_logic;
SIGNAL \debouncer2|Add0~2_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debouncer2|Add0~3\ : std_logic;
SIGNAL \debouncer2|Add0~4_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debouncer2|Add0~5\ : std_logic;
SIGNAL \debouncer2|Add0~6_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debouncer2|Add0~7\ : std_logic;
SIGNAL \debouncer2|Add0~8_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debouncer2|Add0~9\ : std_logic;
SIGNAL \debouncer2|Add0~10_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debouncer2|Add0~11\ : std_logic;
SIGNAL \debouncer2|Add0~12_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debouncer2|Add0~13\ : std_logic;
SIGNAL \debouncer2|Add0~14_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debouncer2|Add0~15\ : std_logic;
SIGNAL \debouncer2|Add0~16_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debouncer2|Add0~17\ : std_logic;
SIGNAL \debouncer2|Add0~18_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debouncer2|Add0~19\ : std_logic;
SIGNAL \debouncer2|Add0~20_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debouncer2|Add0~21\ : std_logic;
SIGNAL \debouncer2|Add0~22_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debouncer2|Add0~23\ : std_logic;
SIGNAL \debouncer2|Add0~24_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debouncer2|Add0~25\ : std_logic;
SIGNAL \debouncer2|Add0~26_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \debouncer2|Add0~27\ : std_logic;
SIGNAL \debouncer2|Add0~28_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debouncer2|Add0~29\ : std_logic;
SIGNAL \debouncer2|Add0~30_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debouncer2|Add0~31\ : std_logic;
SIGNAL \debouncer2|Add0~32_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debouncer2|Add0~33\ : std_logic;
SIGNAL \debouncer2|Add0~34_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debouncer2|Add0~35\ : std_logic;
SIGNAL \debouncer2|Add0~36_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \debouncer2|Add0~37\ : std_logic;
SIGNAL \debouncer2|Add0~39\ : std_logic;
SIGNAL \debouncer2|Add0~40_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \debouncer2|Add0~41\ : std_logic;
SIGNAL \debouncer2|Add0~42_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \debouncer2|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncer2|LessThan0~4_combout\ : std_logic;
SIGNAL \debouncer2|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debouncer2|LessThan0~5_combout\ : std_logic;
SIGNAL \debouncer2|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncer2|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncer2|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncer2|LessThan0~6_combout\ : std_logic;
SIGNAL \debouncer2|LessThan0~7_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[11]~4_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[11]~2_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debouncer2|Add0~43\ : std_logic;
SIGNAL \debouncer2|Add0~44_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[11]~3_combout\ : std_logic;
SIGNAL \debouncer2|Add0~38_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \debouncer2|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debouncer2|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debouncer2|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debouncer2|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debouncer2|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debouncer2|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debouncer2|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debouncer2|s_pulsedOut~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \debouncer1|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debouncer1|s_dirtyIn~q\ : std_logic;
SIGNAL \debouncer1|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \debouncer1|s_previousIn~q\ : std_logic;
SIGNAL \debouncer1|Add0~11\ : std_logic;
SIGNAL \debouncer1|Add0~12_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debouncer1|Add0~0_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debouncer1|Add0~1\ : std_logic;
SIGNAL \debouncer1|Add0~2_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debouncer1|Add0~3\ : std_logic;
SIGNAL \debouncer1|Add0~4_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debouncer1|Add0~5\ : std_logic;
SIGNAL \debouncer1|Add0~6_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debouncer1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debouncer1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debouncer1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debouncer1|Add0~41\ : std_logic;
SIGNAL \debouncer1|Add0~42_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \debouncer1|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debouncer1|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debouncer1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[19]~2_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[19]~3_combout\ : std_logic;
SIGNAL \debouncer1|Add0~13\ : std_logic;
SIGNAL \debouncer1|Add0~14_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debouncer1|Add0~15\ : std_logic;
SIGNAL \debouncer1|Add0~16_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debouncer1|Add0~17\ : std_logic;
SIGNAL \debouncer1|Add0~18_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debouncer1|Add0~19\ : std_logic;
SIGNAL \debouncer1|Add0~20_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debouncer1|Add0~21\ : std_logic;
SIGNAL \debouncer1|Add0~22_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debouncer1|Add0~23\ : std_logic;
SIGNAL \debouncer1|Add0~24_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debouncer1|Add0~25\ : std_logic;
SIGNAL \debouncer1|Add0~26_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \debouncer1|Add0~27\ : std_logic;
SIGNAL \debouncer1|Add0~28_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debouncer1|Add0~29\ : std_logic;
SIGNAL \debouncer1|Add0~30_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debouncer1|Add0~31\ : std_logic;
SIGNAL \debouncer1|Add0~32_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debouncer1|Add0~33\ : std_logic;
SIGNAL \debouncer1|Add0~34_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debouncer1|Add0~35\ : std_logic;
SIGNAL \debouncer1|Add0~36_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \debouncer1|Add0~37\ : std_logic;
SIGNAL \debouncer1|Add0~38_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \debouncer1|Add0~39\ : std_logic;
SIGNAL \debouncer1|Add0~40_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \debouncer1|LessThan0~4_combout\ : std_logic;
SIGNAL \debouncer1|LessThan0~5_combout\ : std_logic;
SIGNAL \debouncer1|LessThan0~6_combout\ : std_logic;
SIGNAL \debouncer1|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncer1|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncer1|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncer1|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncer1|LessThan0~7_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[19]~0_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debouncer1|Add0~43\ : std_logic;
SIGNAL \debouncer1|Add0~44_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[19]~4_combout\ : std_logic;
SIGNAL \debouncer1|Add0~7\ : std_logic;
SIGNAL \debouncer1|Add0~8_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debouncer1|Add0~9\ : std_logic;
SIGNAL \debouncer1|Add0~10_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debouncer1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debouncer1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debouncer1|s_pulsedOut~q\ : std_logic;
SIGNAL \debouncer3|Add0~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \debouncer3|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debouncer3|s_dirtyIn~q\ : std_logic;
SIGNAL \debouncer3|s_previousIn~q\ : std_logic;
SIGNAL \debouncer3|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debouncer3|Add0~11\ : std_logic;
SIGNAL \debouncer3|Add0~12_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debouncer3|Add0~13\ : std_logic;
SIGNAL \debouncer3|Add0~14_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debouncer3|Add0~15\ : std_logic;
SIGNAL \debouncer3|Add0~16_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debouncer3|Add0~17\ : std_logic;
SIGNAL \debouncer3|Add0~18_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debouncer3|Add0~19\ : std_logic;
SIGNAL \debouncer3|Add0~20_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debouncer3|Add0~21\ : std_logic;
SIGNAL \debouncer3|Add0~22_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debouncer3|Add0~23\ : std_logic;
SIGNAL \debouncer3|Add0~24_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debouncer3|Add0~25\ : std_logic;
SIGNAL \debouncer3|Add0~26_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \debouncer3|Add0~27\ : std_logic;
SIGNAL \debouncer3|Add0~28_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debouncer3|Add0~29\ : std_logic;
SIGNAL \debouncer3|Add0~30_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debouncer3|Add0~31\ : std_logic;
SIGNAL \debouncer3|Add0~32_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debouncer3|Add0~33\ : std_logic;
SIGNAL \debouncer3|Add0~34_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debouncer3|Add0~35\ : std_logic;
SIGNAL \debouncer3|Add0~36_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \debouncer3|Add0~37\ : std_logic;
SIGNAL \debouncer3|Add0~38_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \debouncer3|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debouncer3|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debouncer3|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debouncer3|Add0~39\ : std_logic;
SIGNAL \debouncer3|Add0~41\ : std_logic;
SIGNAL \debouncer3|Add0~42_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \debouncer3|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debouncer3|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[8]~2_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[8]~3_combout\ : std_logic;
SIGNAL \debouncer3|Add0~40_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \debouncer3|LessThan0~4_combout\ : std_logic;
SIGNAL \debouncer3|LessThan0~5_combout\ : std_logic;
SIGNAL \debouncer3|LessThan0~6_combout\ : std_logic;
SIGNAL \debouncer3|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncer3|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncer3|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncer3|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncer3|LessThan0~7_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[8]~0_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debouncer3|Add0~43\ : std_logic;
SIGNAL \debouncer3|Add0~44_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[8]~4_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debouncer3|Add0~1\ : std_logic;
SIGNAL \debouncer3|Add0~2_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debouncer3|Add0~3\ : std_logic;
SIGNAL \debouncer3|Add0~4_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debouncer3|Add0~5\ : std_logic;
SIGNAL \debouncer3|Add0~6_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debouncer3|Add0~7\ : std_logic;
SIGNAL \debouncer3|Add0~8_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debouncer3|Add0~9\ : std_logic;
SIGNAL \debouncer3|Add0~10_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debouncer3|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debouncer3|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debouncer3|s_pulsedOut~q\ : std_logic;
SIGNAL \FSM|Selector4~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \debouncer0|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debouncer0|s_dirtyIn~q\ : std_logic;
SIGNAL \debouncer0|s_previousIn~q\ : std_logic;
SIGNAL \debouncer0|Add0~0_combout\ : std_logic;
SIGNAL \debouncer0|Add0~9\ : std_logic;
SIGNAL \debouncer0|Add0~10_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debouncer0|Add0~11\ : std_logic;
SIGNAL \debouncer0|Add0~12_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debouncer0|Add0~13\ : std_logic;
SIGNAL \debouncer0|Add0~14_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \debouncer0|Add0~15\ : std_logic;
SIGNAL \debouncer0|Add0~16_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debouncer0|Add0~17\ : std_logic;
SIGNAL \debouncer0|Add0~18_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debouncer0|Add0~19\ : std_logic;
SIGNAL \debouncer0|Add0~20_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debouncer0|Add0~21\ : std_logic;
SIGNAL \debouncer0|Add0~22_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debouncer0|Add0~23\ : std_logic;
SIGNAL \debouncer0|Add0~24_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debouncer0|Add0~25\ : std_logic;
SIGNAL \debouncer0|Add0~26_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debouncer0|Add0~27\ : std_logic;
SIGNAL \debouncer0|Add0~28_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debouncer0|Add0~29\ : std_logic;
SIGNAL \debouncer0|Add0~30_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \debouncer0|Add0~31\ : std_logic;
SIGNAL \debouncer0|Add0~32_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debouncer0|Add0~33\ : std_logic;
SIGNAL \debouncer0|Add0~34_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debouncer0|Add0~35\ : std_logic;
SIGNAL \debouncer0|Add0~36_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \debouncer0|Add0~37\ : std_logic;
SIGNAL \debouncer0|Add0~38_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \debouncer0|LessThan0~4_combout\ : std_logic;
SIGNAL \debouncer0|LessThan0~5_combout\ : std_logic;
SIGNAL \debouncer0|LessThan0~6_combout\ : std_logic;
SIGNAL \debouncer0|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncer0|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncer0|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncer0|LessThan0~7_combout\ : std_logic;
SIGNAL \debouncer0|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debouncer0|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debouncer0|Add0~39\ : std_logic;
SIGNAL \debouncer0|Add0~41\ : std_logic;
SIGNAL \debouncer0|Add0~42_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \debouncer0|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debouncer0|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debouncer0|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[20]~2_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debouncer0|Add0~43\ : std_logic;
SIGNAL \debouncer0|Add0~44_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[20]~3_combout\ : std_logic;
SIGNAL \debouncer0|Add0~40_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \debouncer0|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[20]~0_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debouncer0|Add0~1\ : std_logic;
SIGNAL \debouncer0|Add0~2_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \debouncer0|Add0~3\ : std_logic;
SIGNAL \debouncer0|Add0~4_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debouncer0|Add0~5\ : std_logic;
SIGNAL \debouncer0|Add0~6_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debouncer0|Add0~7\ : std_logic;
SIGNAL \debouncer0|Add0~8_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debouncer0|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debouncer0|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debouncer0|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debouncer0|s_pulsedOut~q\ : std_logic;
SIGNAL \FSM|Selector0~0_combout\ : std_logic;
SIGNAL \FSM|Selector0~1_combout\ : std_logic;
SIGNAL \FSM|Selector0~1clkctrl_outclk\ : std_logic;
SIGNAL \FSM|s_nextState.PG_334~combout\ : std_logic;
SIGNAL \FSM|s_currentState~7_combout\ : std_logic;
SIGNAL \FSM|s_currentState.PG~q\ : std_logic;
SIGNAL \FSM|Selector1~0_combout\ : std_logic;
SIGNAL \FSM|s_nextState.PG3_268~combout\ : std_logic;
SIGNAL \FSM|s_currentState~9_combout\ : std_logic;
SIGNAL \FSM|s_currentState.PG3~q\ : std_logic;
SIGNAL \FSM|Selector2~0_combout\ : std_logic;
SIGNAL \FSM|s_nextState.PG2_290~combout\ : std_logic;
SIGNAL \FSM|s_currentState~8_combout\ : std_logic;
SIGNAL \FSM|s_currentState.PG2~q\ : std_logic;
SIGNAL \hexdisplay0|Mux6~0_combout\ : std_logic;
SIGNAL \FSM|Selector3~0_combout\ : std_logic;
SIGNAL \FSM|s_nextState.PG1_312~combout\ : std_logic;
SIGNAL \FSM|s_currentState~10_combout\ : std_logic;
SIGNAL \FSM|s_currentState.PG1~q\ : std_logic;
SIGNAL \hexdisplay0|Mux5~0_combout\ : std_logic;
SIGNAL \hexdisplay0|Mux4~0_combout\ : std_logic;
SIGNAL \hexdisplay2|Mux5~0_combout\ : std_logic;
SIGNAL \hexdisplay2|Mux2~0_combout\ : std_logic;
SIGNAL \hexdisplay2|Mux0~0_combout\ : std_logic;
SIGNAL \FSM|Modo~1_combout\ : std_logic;
SIGNAL \FSM|Modo\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \debouncer1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \debouncer0|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \debouncer2|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \debouncer3|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \FSM|ALT_INV_Modo~1_combout\ : std_logic;
SIGNAL \hexdisplay2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hexdisplay2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \hexdisplay2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \hexdisplay0|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \hexdisplay0|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \hexdisplay0|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_s_currentState.PG2~q\ : std_logic;
SIGNAL \FSM|ALT_INV_Modo\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \FSM|ALT_INV_s_currentState.RESETMOD~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\FSM|Selector0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FSM|Selector0~1_combout\);
\FSM|ALT_INV_Modo~1_combout\ <= NOT \FSM|Modo~1_combout\;
\hexdisplay2|ALT_INV_Mux0~0_combout\ <= NOT \hexdisplay2|Mux0~0_combout\;
\hexdisplay2|ALT_INV_Mux2~0_combout\ <= NOT \hexdisplay2|Mux2~0_combout\;
\hexdisplay2|ALT_INV_Mux5~0_combout\ <= NOT \hexdisplay2|Mux5~0_combout\;
\hexdisplay0|ALT_INV_Mux4~0_combout\ <= NOT \hexdisplay0|Mux4~0_combout\;
\hexdisplay0|ALT_INV_Mux5~0_combout\ <= NOT \hexdisplay0|Mux5~0_combout\;
\hexdisplay0|ALT_INV_Mux6~0_combout\ <= NOT \hexdisplay0|Mux6~0_combout\;
\FSM|ALT_INV_s_currentState.PG2~q\ <= NOT \FSM|s_currentState.PG2~q\;
\FSM|ALT_INV_Modo\(3) <= NOT \FSM|Modo\(3);
\FSM|ALT_INV_s_currentState.RESETMOD~q\ <= NOT \FSM|s_currentState.RESETMOD~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDVA|s_currentState.RESETMOD~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_Modo\(3),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay0|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay0|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_s_currentState.PG2~q\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_s_currentState.RESETMOD~q\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_s_currentState.RESETMOD~q\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_s_currentState.RESETMOD~q\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_s_currentState.RESETMOD~q\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_s_currentState.RESETMOD~q\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|Modo\(3),
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay2|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|Modo\(3),
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|Modo\(3),
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay2|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay2|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_Modo~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay0|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay0|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_Modo~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_s_currentState.PG2~q\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_Modo~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

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

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X108_Y69_N4
\MDVA|s_currentState.RESETMOD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MDVA|s_currentState.RESETMOD~0_combout\ = !\SW[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[17]~input_o\,
	combout => \MDVA|s_currentState.RESETMOD~0_combout\);

-- Location: FF_X108_Y69_N5
\MDVA|s_currentState.RESETMOD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MDVA|s_currentState.RESETMOD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDVA|s_currentState.RESETMOD~q\);

-- Location: LCCOMB_X53_Y34_N16
\FSM|s_currentState.RESETMOD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|s_currentState.RESETMOD~0_combout\ = !\SW[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	combout => \FSM|s_currentState.RESETMOD~0_combout\);

-- Location: FF_X53_Y34_N17
\FSM|s_currentState.RESETMOD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FSM|s_currentState.RESETMOD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|s_currentState.RESETMOD~q\);

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

-- Location: LCCOMB_X50_Y34_N0
\debouncer2|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_dirtyIn~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \debouncer2|s_dirtyIn~0_combout\);

-- Location: FF_X50_Y34_N1
\debouncer2|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_dirtyIn~q\);

-- Location: FF_X49_Y34_N3
\debouncer2|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debouncer2|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_previousIn~q\);

-- Location: LCCOMB_X48_Y35_N10
\debouncer2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~0_combout\ = \debouncer2|s_debounceCnt\(0) $ (VCC)
-- \debouncer2|Add0~1\ = CARRY(\debouncer2|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(0),
	datad => VCC,
	combout => \debouncer2|Add0~0_combout\,
	cout => \debouncer2|Add0~1\);

-- Location: LCCOMB_X47_Y34_N22
\debouncer2|s_debounceCnt[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[11]~0_combout\ = (\debouncer2|s_dirtyIn~q\ & ((!\debouncer2|LessThan0~7_combout\) # (!\debouncer2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_dirtyIn~q\,
	datac => \debouncer2|s_debounceCnt\(22),
	datad => \debouncer2|LessThan0~7_combout\,
	combout => \debouncer2|s_debounceCnt[11]~0_combout\);

-- Location: LCCOMB_X48_Y35_N12
\debouncer2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~2_combout\ = (\debouncer2|s_debounceCnt\(1) & (\debouncer2|Add0~1\ & VCC)) # (!\debouncer2|s_debounceCnt\(1) & (!\debouncer2|Add0~1\))
-- \debouncer2|Add0~3\ = CARRY((!\debouncer2|s_debounceCnt\(1) & !\debouncer2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(1),
	datad => VCC,
	cin => \debouncer2|Add0~1\,
	combout => \debouncer2|Add0~2_combout\,
	cout => \debouncer2|Add0~3\);

-- Location: LCCOMB_X47_Y34_N0
\debouncer2|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~20_combout\ = (\debouncer2|Add0~2_combout\ & \debouncer2|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|Add0~2_combout\,
	datad => \debouncer2|s_debounceCnt[11]~4_combout\,
	combout => \debouncer2|s_debounceCnt~20_combout\);

-- Location: FF_X47_Y34_N1
\debouncer2|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~20_combout\,
	ena => \debouncer2|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(1));

-- Location: LCCOMB_X48_Y35_N14
\debouncer2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~4_combout\ = (\debouncer2|s_debounceCnt\(2) & ((GND) # (!\debouncer2|Add0~3\))) # (!\debouncer2|s_debounceCnt\(2) & (\debouncer2|Add0~3\ $ (GND)))
-- \debouncer2|Add0~5\ = CARRY((\debouncer2|s_debounceCnt\(2)) # (!\debouncer2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(2),
	datad => VCC,
	cin => \debouncer2|Add0~3\,
	combout => \debouncer2|Add0~4_combout\,
	cout => \debouncer2|Add0~5\);

-- Location: LCCOMB_X47_Y34_N6
\debouncer2|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~21_combout\ = (\debouncer2|Add0~4_combout\ & \debouncer2|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|Add0~4_combout\,
	datad => \debouncer2|s_debounceCnt[11]~4_combout\,
	combout => \debouncer2|s_debounceCnt~21_combout\);

-- Location: FF_X47_Y34_N7
\debouncer2|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~21_combout\,
	ena => \debouncer2|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(2));

-- Location: LCCOMB_X48_Y35_N16
\debouncer2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~6_combout\ = (\debouncer2|s_debounceCnt\(3) & (\debouncer2|Add0~5\ & VCC)) # (!\debouncer2|s_debounceCnt\(3) & (!\debouncer2|Add0~5\))
-- \debouncer2|Add0~7\ = CARRY((!\debouncer2|s_debounceCnt\(3) & !\debouncer2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(3),
	datad => VCC,
	cin => \debouncer2|Add0~5\,
	combout => \debouncer2|Add0~6_combout\,
	cout => \debouncer2|Add0~7\);

-- Location: LCCOMB_X47_Y34_N4
\debouncer2|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~22_combout\ = (\debouncer2|Add0~6_combout\ & \debouncer2|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|Add0~6_combout\,
	datad => \debouncer2|s_debounceCnt[11]~4_combout\,
	combout => \debouncer2|s_debounceCnt~22_combout\);

-- Location: FF_X47_Y34_N5
\debouncer2|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~22_combout\,
	ena => \debouncer2|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(3));

-- Location: LCCOMB_X48_Y35_N18
\debouncer2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~8_combout\ = (\debouncer2|s_debounceCnt\(4) & ((GND) # (!\debouncer2|Add0~7\))) # (!\debouncer2|s_debounceCnt\(4) & (\debouncer2|Add0~7\ $ (GND)))
-- \debouncer2|Add0~9\ = CARRY((\debouncer2|s_debounceCnt\(4)) # (!\debouncer2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(4),
	datad => VCC,
	cin => \debouncer2|Add0~7\,
	combout => \debouncer2|Add0~8_combout\,
	cout => \debouncer2|Add0~9\);

-- Location: LCCOMB_X48_Y35_N8
\debouncer2|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~23_combout\ = (\debouncer2|Add0~8_combout\ & \debouncer2|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|Add0~8_combout\,
	datad => \debouncer2|s_debounceCnt[11]~4_combout\,
	combout => \debouncer2|s_debounceCnt~23_combout\);

-- Location: FF_X48_Y35_N9
\debouncer2|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~23_combout\,
	ena => \debouncer2|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(4));

-- Location: LCCOMB_X48_Y35_N20
\debouncer2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~10_combout\ = (\debouncer2|s_debounceCnt\(5) & (\debouncer2|Add0~9\ & VCC)) # (!\debouncer2|s_debounceCnt\(5) & (!\debouncer2|Add0~9\))
-- \debouncer2|Add0~11\ = CARRY((!\debouncer2|s_debounceCnt\(5) & !\debouncer2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(5),
	datad => VCC,
	cin => \debouncer2|Add0~9\,
	combout => \debouncer2|Add0~10_combout\,
	cout => \debouncer2|Add0~11\);

-- Location: LCCOMB_X48_Y35_N4
\debouncer2|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~27_combout\ = (\debouncer2|Add0~10_combout\ & \debouncer2|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|Add0~10_combout\,
	datad => \debouncer2|s_debounceCnt[11]~4_combout\,
	combout => \debouncer2|s_debounceCnt~27_combout\);

-- Location: FF_X48_Y35_N5
\debouncer2|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~27_combout\,
	ena => \debouncer2|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(5));

-- Location: LCCOMB_X48_Y35_N22
\debouncer2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~12_combout\ = (\debouncer2|s_debounceCnt\(6) & ((GND) # (!\debouncer2|Add0~11\))) # (!\debouncer2|s_debounceCnt\(6) & (\debouncer2|Add0~11\ $ (GND)))
-- \debouncer2|Add0~13\ = CARRY((\debouncer2|s_debounceCnt\(6)) # (!\debouncer2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(6),
	datad => VCC,
	cin => \debouncer2|Add0~11\,
	combout => \debouncer2|Add0~12_combout\,
	cout => \debouncer2|Add0~13\);

-- Location: LCCOMB_X49_Y34_N28
\debouncer2|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~1_combout\ = (\debouncer2|s_debounceCnt[11]~0_combout\ & ((\debouncer2|Add0~12_combout\) # (!\debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_previousIn~q\,
	datac => \debouncer2|Add0~12_combout\,
	datad => \debouncer2|s_debounceCnt[11]~0_combout\,
	combout => \debouncer2|s_debounceCnt~1_combout\);

-- Location: FF_X49_Y34_N29
\debouncer2|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~1_combout\,
	ena => \debouncer2|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(6));

-- Location: LCCOMB_X48_Y35_N24
\debouncer2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~14_combout\ = (\debouncer2|s_debounceCnt\(7) & (\debouncer2|Add0~13\ & VCC)) # (!\debouncer2|s_debounceCnt\(7) & (!\debouncer2|Add0~13\))
-- \debouncer2|Add0~15\ = CARRY((!\debouncer2|s_debounceCnt\(7) & !\debouncer2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(7),
	datad => VCC,
	cin => \debouncer2|Add0~13\,
	combout => \debouncer2|Add0~14_combout\,
	cout => \debouncer2|Add0~15\);

-- Location: LCCOMB_X49_Y34_N14
\debouncer2|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~12_combout\ = (\debouncer2|Add0~14_combout\ & \debouncer2|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|Add0~14_combout\,
	datad => \debouncer2|s_debounceCnt[11]~4_combout\,
	combout => \debouncer2|s_debounceCnt~12_combout\);

-- Location: FF_X49_Y34_N15
\debouncer2|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~12_combout\,
	ena => \debouncer2|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(7));

-- Location: LCCOMB_X48_Y35_N26
\debouncer2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~16_combout\ = (\debouncer2|s_debounceCnt\(8) & ((GND) # (!\debouncer2|Add0~15\))) # (!\debouncer2|s_debounceCnt\(8) & (\debouncer2|Add0~15\ $ (GND)))
-- \debouncer2|Add0~17\ = CARRY((\debouncer2|s_debounceCnt\(8)) # (!\debouncer2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(8),
	datad => VCC,
	cin => \debouncer2|Add0~15\,
	combout => \debouncer2|Add0~16_combout\,
	cout => \debouncer2|Add0~17\);

-- Location: LCCOMB_X49_Y34_N0
\debouncer2|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~13_combout\ = (\debouncer2|s_debounceCnt[11]~0_combout\ & ((\debouncer2|Add0~16_combout\) # (!\debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|Add0~16_combout\,
	datac => \debouncer2|s_previousIn~q\,
	datad => \debouncer2|s_debounceCnt[11]~0_combout\,
	combout => \debouncer2|s_debounceCnt~13_combout\);

-- Location: FF_X49_Y34_N1
\debouncer2|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~13_combout\,
	ena => \debouncer2|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(8));

-- Location: LCCOMB_X48_Y35_N28
\debouncer2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~18_combout\ = (\debouncer2|s_debounceCnt\(9) & (\debouncer2|Add0~17\ & VCC)) # (!\debouncer2|s_debounceCnt\(9) & (!\debouncer2|Add0~17\))
-- \debouncer2|Add0~19\ = CARRY((!\debouncer2|s_debounceCnt\(9) & !\debouncer2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(9),
	datad => VCC,
	cin => \debouncer2|Add0~17\,
	combout => \debouncer2|Add0~18_combout\,
	cout => \debouncer2|Add0~19\);

-- Location: LCCOMB_X49_Y34_N30
\debouncer2|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~14_combout\ = (\debouncer2|s_debounceCnt[11]~0_combout\ & ((\debouncer2|Add0~18_combout\) # (!\debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_previousIn~q\,
	datac => \debouncer2|Add0~18_combout\,
	datad => \debouncer2|s_debounceCnt[11]~0_combout\,
	combout => \debouncer2|s_debounceCnt~14_combout\);

-- Location: FF_X49_Y34_N31
\debouncer2|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~14_combout\,
	ena => \debouncer2|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(9));

-- Location: LCCOMB_X48_Y35_N30
\debouncer2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~20_combout\ = (\debouncer2|s_debounceCnt\(10) & ((GND) # (!\debouncer2|Add0~19\))) # (!\debouncer2|s_debounceCnt\(10) & (\debouncer2|Add0~19\ $ (GND)))
-- \debouncer2|Add0~21\ = CARRY((\debouncer2|s_debounceCnt\(10)) # (!\debouncer2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(10),
	datad => VCC,
	cin => \debouncer2|Add0~19\,
	combout => \debouncer2|Add0~20_combout\,
	cout => \debouncer2|Add0~21\);

-- Location: LCCOMB_X49_Y34_N20
\debouncer2|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~15_combout\ = (\debouncer2|Add0~20_combout\ & \debouncer2|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|Add0~20_combout\,
	datad => \debouncer2|s_debounceCnt[11]~4_combout\,
	combout => \debouncer2|s_debounceCnt~15_combout\);

-- Location: FF_X49_Y34_N21
\debouncer2|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~15_combout\,
	ena => \debouncer2|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(10));

-- Location: LCCOMB_X48_Y34_N0
\debouncer2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~22_combout\ = (\debouncer2|s_debounceCnt\(11) & (\debouncer2|Add0~21\ & VCC)) # (!\debouncer2|s_debounceCnt\(11) & (!\debouncer2|Add0~21\))
-- \debouncer2|Add0~23\ = CARRY((!\debouncer2|s_debounceCnt\(11) & !\debouncer2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(11),
	datad => VCC,
	cin => \debouncer2|Add0~21\,
	combout => \debouncer2|Add0~22_combout\,
	cout => \debouncer2|Add0~23\);

-- Location: LCCOMB_X47_Y34_N26
\debouncer2|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~16_combout\ = (\debouncer2|s_debounceCnt[11]~0_combout\ & ((\debouncer2|Add0~22_combout\) # (!\debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_previousIn~q\,
	datac => \debouncer2|Add0~22_combout\,
	datad => \debouncer2|s_debounceCnt[11]~0_combout\,
	combout => \debouncer2|s_debounceCnt~16_combout\);

-- Location: FF_X47_Y34_N27
\debouncer2|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~16_combout\,
	ena => \debouncer2|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(11));

-- Location: LCCOMB_X48_Y34_N2
\debouncer2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~24_combout\ = (\debouncer2|s_debounceCnt\(12) & ((GND) # (!\debouncer2|Add0~23\))) # (!\debouncer2|s_debounceCnt\(12) & (\debouncer2|Add0~23\ $ (GND)))
-- \debouncer2|Add0~25\ = CARRY((\debouncer2|s_debounceCnt\(12)) # (!\debouncer2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(12),
	datad => VCC,
	cin => \debouncer2|Add0~23\,
	combout => \debouncer2|Add0~24_combout\,
	cout => \debouncer2|Add0~25\);

-- Location: LCCOMB_X46_Y34_N28
\debouncer2|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~8_combout\ = (\debouncer2|Add0~24_combout\ & \debouncer2|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|Add0~24_combout\,
	datad => \debouncer2|s_debounceCnt[11]~4_combout\,
	combout => \debouncer2|s_debounceCnt~8_combout\);

-- Location: FF_X46_Y34_N29
\debouncer2|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~8_combout\,
	ena => \debouncer2|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(12));

-- Location: LCCOMB_X48_Y34_N4
\debouncer2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~26_combout\ = (\debouncer2|s_debounceCnt\(13) & (\debouncer2|Add0~25\ & VCC)) # (!\debouncer2|s_debounceCnt\(13) & (!\debouncer2|Add0~25\))
-- \debouncer2|Add0~27\ = CARRY((!\debouncer2|s_debounceCnt\(13) & !\debouncer2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(13),
	datad => VCC,
	cin => \debouncer2|Add0~25\,
	combout => \debouncer2|Add0~26_combout\,
	cout => \debouncer2|Add0~27\);

-- Location: LCCOMB_X46_Y34_N26
\debouncer2|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~9_combout\ = (\debouncer2|Add0~26_combout\ & \debouncer2|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|Add0~26_combout\,
	datad => \debouncer2|s_debounceCnt[11]~4_combout\,
	combout => \debouncer2|s_debounceCnt~9_combout\);

-- Location: FF_X46_Y34_N27
\debouncer2|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~9_combout\,
	ena => \debouncer2|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(13));

-- Location: LCCOMB_X48_Y34_N6
\debouncer2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~28_combout\ = (\debouncer2|s_debounceCnt\(14) & ((GND) # (!\debouncer2|Add0~27\))) # (!\debouncer2|s_debounceCnt\(14) & (\debouncer2|Add0~27\ $ (GND)))
-- \debouncer2|Add0~29\ = CARRY((\debouncer2|s_debounceCnt\(14)) # (!\debouncer2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(14),
	datad => VCC,
	cin => \debouncer2|Add0~27\,
	combout => \debouncer2|Add0~28_combout\,
	cout => \debouncer2|Add0~29\);

-- Location: LCCOMB_X49_Y34_N4
\debouncer2|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~17_combout\ = (\debouncer2|s_debounceCnt[11]~0_combout\ & ((\debouncer2|Add0~28_combout\) # (!\debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_previousIn~q\,
	datac => \debouncer2|Add0~28_combout\,
	datad => \debouncer2|s_debounceCnt[11]~0_combout\,
	combout => \debouncer2|s_debounceCnt~17_combout\);

-- Location: FF_X49_Y34_N5
\debouncer2|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~17_combout\,
	ena => \debouncer2|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(14));

-- Location: LCCOMB_X48_Y34_N8
\debouncer2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~30_combout\ = (\debouncer2|s_debounceCnt\(15) & (\debouncer2|Add0~29\ & VCC)) # (!\debouncer2|s_debounceCnt\(15) & (!\debouncer2|Add0~29\))
-- \debouncer2|Add0~31\ = CARRY((!\debouncer2|s_debounceCnt\(15) & !\debouncer2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(15),
	datad => VCC,
	cin => \debouncer2|Add0~29\,
	combout => \debouncer2|Add0~30_combout\,
	cout => \debouncer2|Add0~31\);

-- Location: LCCOMB_X49_Y34_N22
\debouncer2|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~5_combout\ = (\debouncer2|Add0~30_combout\ & \debouncer2|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|Add0~30_combout\,
	datad => \debouncer2|s_debounceCnt[11]~4_combout\,
	combout => \debouncer2|s_debounceCnt~5_combout\);

-- Location: FF_X49_Y34_N23
\debouncer2|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~5_combout\,
	ena => \debouncer2|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(15));

-- Location: LCCOMB_X48_Y34_N10
\debouncer2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~32_combout\ = (\debouncer2|s_debounceCnt\(16) & ((GND) # (!\debouncer2|Add0~31\))) # (!\debouncer2|s_debounceCnt\(16) & (\debouncer2|Add0~31\ $ (GND)))
-- \debouncer2|Add0~33\ = CARRY((\debouncer2|s_debounceCnt\(16)) # (!\debouncer2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(16),
	datad => VCC,
	cin => \debouncer2|Add0~31\,
	combout => \debouncer2|Add0~32_combout\,
	cout => \debouncer2|Add0~33\);

-- Location: LCCOMB_X48_Y34_N24
\debouncer2|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~6_combout\ = (\debouncer2|s_debounceCnt[11]~4_combout\ & \debouncer2|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|s_debounceCnt[11]~4_combout\,
	datad => \debouncer2|Add0~32_combout\,
	combout => \debouncer2|s_debounceCnt~6_combout\);

-- Location: FF_X48_Y34_N25
\debouncer2|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~6_combout\,
	ena => \debouncer2|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(16));

-- Location: LCCOMB_X48_Y34_N12
\debouncer2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~34_combout\ = (\debouncer2|s_debounceCnt\(17) & (\debouncer2|Add0~33\ & VCC)) # (!\debouncer2|s_debounceCnt\(17) & (!\debouncer2|Add0~33\))
-- \debouncer2|Add0~35\ = CARRY((!\debouncer2|s_debounceCnt\(17) & !\debouncer2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(17),
	datad => VCC,
	cin => \debouncer2|Add0~33\,
	combout => \debouncer2|Add0~34_combout\,
	cout => \debouncer2|Add0~35\);

-- Location: LCCOMB_X47_Y34_N24
\debouncer2|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~7_combout\ = (\debouncer2|Add0~34_combout\ & \debouncer2|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|Add0~34_combout\,
	datad => \debouncer2|s_debounceCnt[11]~4_combout\,
	combout => \debouncer2|s_debounceCnt~7_combout\);

-- Location: FF_X47_Y34_N25
\debouncer2|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~7_combout\,
	ena => \debouncer2|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(17));

-- Location: LCCOMB_X48_Y34_N14
\debouncer2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~36_combout\ = (\debouncer2|s_debounceCnt\(18) & ((GND) # (!\debouncer2|Add0~35\))) # (!\debouncer2|s_debounceCnt\(18) & (\debouncer2|Add0~35\ $ (GND)))
-- \debouncer2|Add0~37\ = CARRY((\debouncer2|s_debounceCnt\(18)) # (!\debouncer2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(18),
	datad => VCC,
	cin => \debouncer2|Add0~35\,
	combout => \debouncer2|Add0~36_combout\,
	cout => \debouncer2|Add0~37\);

-- Location: LCCOMB_X49_Y34_N26
\debouncer2|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[18]~18_combout\ = (\debouncer2|s_debounceCnt[11]~3_combout\ & (\debouncer2|s_debounceCnt[11]~0_combout\ & ((\debouncer2|Add0~36_combout\) # (!\debouncer2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_previousIn~q\,
	datab => \debouncer2|s_debounceCnt[11]~3_combout\,
	datac => \debouncer2|s_debounceCnt[11]~0_combout\,
	datad => \debouncer2|Add0~36_combout\,
	combout => \debouncer2|s_debounceCnt[18]~18_combout\);

-- Location: FF_X49_Y34_N27
\debouncer2|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(18));

-- Location: LCCOMB_X48_Y34_N16
\debouncer2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~38_combout\ = (\debouncer2|s_debounceCnt\(19) & (\debouncer2|Add0~37\ & VCC)) # (!\debouncer2|s_debounceCnt\(19) & (!\debouncer2|Add0~37\))
-- \debouncer2|Add0~39\ = CARRY((!\debouncer2|s_debounceCnt\(19) & !\debouncer2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(19),
	datad => VCC,
	cin => \debouncer2|Add0~37\,
	combout => \debouncer2|Add0~38_combout\,
	cout => \debouncer2|Add0~39\);

-- Location: LCCOMB_X48_Y34_N18
\debouncer2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~40_combout\ = (\debouncer2|s_debounceCnt\(20) & ((GND) # (!\debouncer2|Add0~39\))) # (!\debouncer2|s_debounceCnt\(20) & (\debouncer2|Add0~39\ $ (GND)))
-- \debouncer2|Add0~41\ = CARRY((\debouncer2|s_debounceCnt\(20)) # (!\debouncer2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(20),
	datad => VCC,
	cin => \debouncer2|Add0~39\,
	combout => \debouncer2|Add0~40_combout\,
	cout => \debouncer2|Add0~41\);

-- Location: LCCOMB_X46_Y34_N24
\debouncer2|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[20]~10_combout\ = (\debouncer2|s_debounceCnt[11]~3_combout\ & (\debouncer2|Add0~40_combout\ & \debouncer2|s_debounceCnt[11]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt[11]~3_combout\,
	datac => \debouncer2|Add0~40_combout\,
	datad => \debouncer2|s_debounceCnt[11]~4_combout\,
	combout => \debouncer2|s_debounceCnt[20]~10_combout\);

-- Location: FF_X46_Y34_N25
\debouncer2|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(20));

-- Location: LCCOMB_X48_Y34_N20
\debouncer2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~42_combout\ = (\debouncer2|s_debounceCnt\(21) & (\debouncer2|Add0~41\ & VCC)) # (!\debouncer2|s_debounceCnt\(21) & (!\debouncer2|Add0~41\))
-- \debouncer2|Add0~43\ = CARRY((!\debouncer2|s_debounceCnt\(21) & !\debouncer2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(21),
	datad => VCC,
	cin => \debouncer2|Add0~41\,
	combout => \debouncer2|Add0~42_combout\,
	cout => \debouncer2|Add0~43\);

-- Location: LCCOMB_X46_Y34_N22
\debouncer2|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[21]~11_combout\ = (\debouncer2|s_debounceCnt[11]~4_combout\ & (\debouncer2|s_debounceCnt[11]~3_combout\ & \debouncer2|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt[11]~4_combout\,
	datac => \debouncer2|s_debounceCnt[11]~3_combout\,
	datad => \debouncer2|Add0~42_combout\,
	combout => \debouncer2|s_debounceCnt[21]~11_combout\);

-- Location: FF_X46_Y34_N23
\debouncer2|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(21));

-- Location: LCCOMB_X49_Y34_N16
\debouncer2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|LessThan0~3_combout\ = (\debouncer2|s_debounceCnt\(18) & (\debouncer2|s_debounceCnt\(8) & (\debouncer2|s_debounceCnt\(14) & \debouncer2|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(18),
	datab => \debouncer2|s_debounceCnt\(8),
	datac => \debouncer2|s_debounceCnt\(14),
	datad => \debouncer2|s_debounceCnt\(19),
	combout => \debouncer2|LessThan0~3_combout\);

-- Location: LCCOMB_X47_Y34_N2
\debouncer2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|LessThan0~4_combout\ = (\debouncer2|s_debounceCnt\(9) & (\debouncer2|s_debounceCnt\(11) & \debouncer2|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(9),
	datac => \debouncer2|s_debounceCnt\(11),
	datad => \debouncer2|LessThan0~3_combout\,
	combout => \debouncer2|LessThan0~4_combout\);

-- Location: LCCOMB_X47_Y34_N30
\debouncer2|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_pulsedOut~5_combout\ = (!\debouncer2|s_debounceCnt\(2) & (!\debouncer2|s_debounceCnt\(1) & (!\debouncer2|s_debounceCnt\(3) & !\debouncer2|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(2),
	datab => \debouncer2|s_debounceCnt\(1),
	datac => \debouncer2|s_debounceCnt\(3),
	datad => \debouncer2|s_debounceCnt\(4),
	combout => \debouncer2|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X47_Y34_N8
\debouncer2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|LessThan0~5_combout\ = (\debouncer2|s_debounceCnt\(6) & ((\debouncer2|s_debounceCnt\(5)) # ((\debouncer2|s_debounceCnt\(0)) # (!\debouncer2|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(6),
	datab => \debouncer2|s_debounceCnt\(5),
	datac => \debouncer2|s_pulsedOut~5_combout\,
	datad => \debouncer2|s_debounceCnt\(0),
	combout => \debouncer2|LessThan0~5_combout\);

-- Location: LCCOMB_X47_Y34_N20
\debouncer2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|LessThan0~0_combout\ = (\debouncer2|s_debounceCnt\(12)) # ((\debouncer2|s_debounceCnt\(13)) # ((\debouncer2|s_debounceCnt\(11) & \debouncer2|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(11),
	datab => \debouncer2|s_debounceCnt\(12),
	datac => \debouncer2|s_debounceCnt\(13),
	datad => \debouncer2|s_debounceCnt\(10),
	combout => \debouncer2|LessThan0~0_combout\);

-- Location: LCCOMB_X47_Y34_N18
\debouncer2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|LessThan0~1_combout\ = (\debouncer2|s_debounceCnt\(15)) # ((\debouncer2|s_debounceCnt\(16)) # ((\debouncer2|s_debounceCnt\(14) & \debouncer2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(15),
	datab => \debouncer2|s_debounceCnt\(16),
	datac => \debouncer2|s_debounceCnt\(14),
	datad => \debouncer2|LessThan0~0_combout\,
	combout => \debouncer2|LessThan0~1_combout\);

-- Location: LCCOMB_X47_Y34_N28
\debouncer2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|LessThan0~2_combout\ = (\debouncer2|s_debounceCnt\(19) & (\debouncer2|s_debounceCnt\(18) & ((\debouncer2|s_debounceCnt\(17)) # (\debouncer2|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(19),
	datab => \debouncer2|s_debounceCnt\(17),
	datac => \debouncer2|s_debounceCnt\(18),
	datad => \debouncer2|LessThan0~1_combout\,
	combout => \debouncer2|LessThan0~2_combout\);

-- Location: LCCOMB_X47_Y34_N10
\debouncer2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|LessThan0~6_combout\ = (\debouncer2|LessThan0~2_combout\) # ((\debouncer2|LessThan0~4_combout\ & ((\debouncer2|s_debounceCnt\(7)) # (\debouncer2|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(7),
	datab => \debouncer2|LessThan0~4_combout\,
	datac => \debouncer2|LessThan0~5_combout\,
	datad => \debouncer2|LessThan0~2_combout\,
	combout => \debouncer2|LessThan0~6_combout\);

-- Location: LCCOMB_X47_Y34_N12
\debouncer2|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|LessThan0~7_combout\ = (\debouncer2|s_debounceCnt\(20)) # ((\debouncer2|s_debounceCnt\(21)) # (\debouncer2|LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(20),
	datac => \debouncer2|s_debounceCnt\(21),
	datad => \debouncer2|LessThan0~6_combout\,
	combout => \debouncer2|LessThan0~7_combout\);

-- Location: LCCOMB_X47_Y34_N16
\debouncer2|s_debounceCnt[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[11]~4_combout\ = (\debouncer2|s_previousIn~q\ & (\debouncer2|s_dirtyIn~q\ & ((!\debouncer2|LessThan0~7_combout\) # (!\debouncer2|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_previousIn~q\,
	datab => \debouncer2|s_dirtyIn~q\,
	datac => \debouncer2|s_debounceCnt\(22),
	datad => \debouncer2|LessThan0~7_combout\,
	combout => \debouncer2|s_debounceCnt[11]~4_combout\);

-- Location: LCCOMB_X48_Y35_N6
\debouncer2|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~24_combout\ = (\debouncer2|Add0~0_combout\ & \debouncer2|s_debounceCnt[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|Add0~0_combout\,
	datad => \debouncer2|s_debounceCnt[11]~4_combout\,
	combout => \debouncer2|s_debounceCnt~24_combout\);

-- Location: FF_X48_Y35_N7
\debouncer2|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~24_combout\,
	ena => \debouncer2|s_debounceCnt[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(0));

-- Location: LCCOMB_X49_Y34_N10
\debouncer2|s_debounceCnt[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[11]~2_combout\ = (\debouncer2|s_debounceCnt\(0)) # ((\debouncer2|s_debounceCnt\(5)) # ((!\debouncer2|s_pulsedOut~4_combout\) # (!\debouncer2|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(0),
	datab => \debouncer2|s_debounceCnt\(5),
	datac => \debouncer2|s_pulsedOut~5_combout\,
	datad => \debouncer2|s_pulsedOut~4_combout\,
	combout => \debouncer2|s_debounceCnt[11]~2_combout\);

-- Location: LCCOMB_X48_Y34_N30
\debouncer2|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[22]~25_combout\ = (\debouncer2|s_dirtyIn~q\ & ((\debouncer2|s_debounceCnt\(22) & ((!\debouncer2|LessThan0~7_combout\))) # (!\debouncer2|s_debounceCnt\(22) & (\debouncer2|s_debounceCnt[11]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(22),
	datab => \debouncer2|s_dirtyIn~q\,
	datac => \debouncer2|s_debounceCnt[11]~2_combout\,
	datad => \debouncer2|LessThan0~7_combout\,
	combout => \debouncer2|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X48_Y34_N22
\debouncer2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~44_combout\ = \debouncer2|s_debounceCnt\(22) $ (\debouncer2|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(22),
	cin => \debouncer2|Add0~43\,
	combout => \debouncer2|Add0~44_combout\);

-- Location: LCCOMB_X48_Y34_N26
\debouncer2|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[22]~26_combout\ = (\debouncer2|s_previousIn~q\ & (\debouncer2|s_debounceCnt[22]~25_combout\ & (\debouncer2|Add0~44_combout\))) # (!\debouncer2|s_previousIn~q\ & (((\debouncer2|s_debounceCnt[11]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt[22]~25_combout\,
	datab => \debouncer2|s_previousIn~q\,
	datac => \debouncer2|Add0~44_combout\,
	datad => \debouncer2|s_debounceCnt[11]~0_combout\,
	combout => \debouncer2|s_debounceCnt[22]~26_combout\);

-- Location: FF_X48_Y34_N27
\debouncer2|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(22));

-- Location: LCCOMB_X49_Y34_N2
\debouncer2|s_debounceCnt[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[11]~3_combout\ = (\debouncer2|s_debounceCnt\(22)) # (((\debouncer2|s_debounceCnt[11]~2_combout\) # (!\debouncer2|s_previousIn~q\)) # (!\debouncer2|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(22),
	datab => \debouncer2|s_dirtyIn~q\,
	datac => \debouncer2|s_previousIn~q\,
	datad => \debouncer2|s_debounceCnt[11]~2_combout\,
	combout => \debouncer2|s_debounceCnt[11]~3_combout\);

-- Location: LCCOMB_X49_Y34_N12
\debouncer2|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[19]~19_combout\ = (\debouncer2|s_debounceCnt[11]~3_combout\ & (\debouncer2|s_debounceCnt[11]~0_combout\ & ((\debouncer2|Add0~38_combout\) # (!\debouncer2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_previousIn~q\,
	datab => \debouncer2|s_debounceCnt[11]~3_combout\,
	datac => \debouncer2|Add0~38_combout\,
	datad => \debouncer2|s_debounceCnt[11]~0_combout\,
	combout => \debouncer2|s_debounceCnt[19]~19_combout\);

-- Location: FF_X49_Y34_N13
\debouncer2|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(19));

-- Location: LCCOMB_X49_Y34_N6
\debouncer2|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_pulsedOut~3_combout\ = (!\debouncer2|s_debounceCnt\(19) & (!\debouncer2|s_debounceCnt\(14) & (!\debouncer2|s_debounceCnt\(18) & !\debouncer2|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(19),
	datab => \debouncer2|s_debounceCnt\(14),
	datac => \debouncer2|s_debounceCnt\(18),
	datad => \debouncer2|s_debounceCnt\(11),
	combout => \debouncer2|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X49_Y34_N18
\debouncer2|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_pulsedOut~2_combout\ = (!\debouncer2|s_debounceCnt\(9) & (!\debouncer2|s_debounceCnt\(10) & (!\debouncer2|s_debounceCnt\(7) & !\debouncer2|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(9),
	datab => \debouncer2|s_debounceCnt\(10),
	datac => \debouncer2|s_debounceCnt\(7),
	datad => \debouncer2|s_debounceCnt\(8),
	combout => \debouncer2|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X49_Y34_N8
\debouncer2|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_pulsedOut~0_combout\ = (!\debouncer2|s_debounceCnt\(15) & (!\debouncer2|s_debounceCnt\(6) & (!\debouncer2|s_debounceCnt\(17) & !\debouncer2|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(15),
	datab => \debouncer2|s_debounceCnt\(6),
	datac => \debouncer2|s_debounceCnt\(17),
	datad => \debouncer2|s_debounceCnt\(16),
	combout => \debouncer2|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X46_Y34_N20
\debouncer2|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_pulsedOut~1_combout\ = (!\debouncer2|s_debounceCnt\(21) & (!\debouncer2|s_debounceCnt\(12) & (!\debouncer2|s_debounceCnt\(13) & !\debouncer2|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(21),
	datab => \debouncer2|s_debounceCnt\(12),
	datac => \debouncer2|s_debounceCnt\(13),
	datad => \debouncer2|s_debounceCnt\(20),
	combout => \debouncer2|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X49_Y34_N24
\debouncer2|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_pulsedOut~4_combout\ = (\debouncer2|s_pulsedOut~3_combout\ & (\debouncer2|s_pulsedOut~2_combout\ & (\debouncer2|s_pulsedOut~0_combout\ & \debouncer2|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_pulsedOut~3_combout\,
	datab => \debouncer2|s_pulsedOut~2_combout\,
	datac => \debouncer2|s_pulsedOut~0_combout\,
	datad => \debouncer2|s_pulsedOut~1_combout\,
	combout => \debouncer2|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X48_Y34_N28
\debouncer2|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_pulsedOut~6_combout\ = (!\debouncer2|s_debounceCnt\(22) & (\debouncer2|s_dirtyIn~q\ & (\debouncer2|s_debounceCnt\(0) & \debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(22),
	datab => \debouncer2|s_dirtyIn~q\,
	datac => \debouncer2|s_debounceCnt\(0),
	datad => \debouncer2|s_previousIn~q\,
	combout => \debouncer2|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X52_Y34_N28
\debouncer2|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_pulsedOut~7_combout\ = (\debouncer2|s_pulsedOut~4_combout\ & (!\debouncer2|s_debounceCnt\(5) & (\debouncer2|s_pulsedOut~6_combout\ & \debouncer2|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_pulsedOut~4_combout\,
	datab => \debouncer2|s_debounceCnt\(5),
	datac => \debouncer2|s_pulsedOut~6_combout\,
	datad => \debouncer2|s_pulsedOut~5_combout\,
	combout => \debouncer2|s_pulsedOut~7_combout\);

-- Location: FF_X52_Y34_N29
\debouncer2|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \debouncer2|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_pulsedOut~q\);

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

-- Location: LCCOMB_X114_Y53_N4
\debouncer1|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_dirtyIn~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \debouncer1|s_dirtyIn~0_combout\);

-- Location: FF_X50_Y39_N11
\debouncer1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debouncer1|s_dirtyIn~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_dirtyIn~q\);

-- Location: LCCOMB_X50_Y39_N8
\debouncer1|s_previousIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_previousIn~feeder_combout\ = \debouncer1|s_dirtyIn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \debouncer1|s_dirtyIn~q\,
	combout => \debouncer1|s_previousIn~feeder_combout\);

-- Location: FF_X50_Y39_N9
\debouncer1|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_previousIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_previousIn~q\);

-- Location: LCCOMB_X48_Y39_N20
\debouncer1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~10_combout\ = (\debouncer1|s_debounceCnt\(5) & (\debouncer1|Add0~9\ & VCC)) # (!\debouncer1|s_debounceCnt\(5) & (!\debouncer1|Add0~9\))
-- \debouncer1|Add0~11\ = CARRY((!\debouncer1|s_debounceCnt\(5) & !\debouncer1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(5),
	datad => VCC,
	cin => \debouncer1|Add0~9\,
	combout => \debouncer1|Add0~10_combout\,
	cout => \debouncer1|Add0~11\);

-- Location: LCCOMB_X48_Y39_N22
\debouncer1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~12_combout\ = (\debouncer1|s_debounceCnt\(6) & ((GND) # (!\debouncer1|Add0~11\))) # (!\debouncer1|s_debounceCnt\(6) & (\debouncer1|Add0~11\ $ (GND)))
-- \debouncer1|Add0~13\ = CARRY((\debouncer1|s_debounceCnt\(6)) # (!\debouncer1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(6),
	datad => VCC,
	cin => \debouncer1|Add0~11\,
	combout => \debouncer1|Add0~12_combout\,
	cout => \debouncer1|Add0~13\);

-- Location: LCCOMB_X49_Y39_N4
\debouncer1|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~1_combout\ = (\debouncer1|s_debounceCnt[19]~0_combout\ & ((\debouncer1|Add0~12_combout\) # (!\debouncer1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|Add0~12_combout\,
	datac => \debouncer1|s_previousIn~q\,
	datad => \debouncer1|s_debounceCnt[19]~0_combout\,
	combout => \debouncer1|s_debounceCnt~1_combout\);

-- Location: LCCOMB_X48_Y39_N10
\debouncer1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~0_combout\ = \debouncer1|s_debounceCnt\(0) $ (VCC)
-- \debouncer1|Add0~1\ = CARRY(\debouncer1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(0),
	datad => VCC,
	combout => \debouncer1|Add0~0_combout\,
	cout => \debouncer1|Add0~1\);

-- Location: LCCOMB_X48_Y39_N4
\debouncer1|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~24_combout\ = (\debouncer1|Add0~0_combout\ & \debouncer1|s_debounceCnt[19]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|Add0~0_combout\,
	datac => \debouncer1|s_debounceCnt[19]~4_combout\,
	combout => \debouncer1|s_debounceCnt~24_combout\);

-- Location: FF_X48_Y39_N5
\debouncer1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~24_combout\,
	ena => \debouncer1|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(0));

-- Location: LCCOMB_X48_Y39_N12
\debouncer1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~2_combout\ = (\debouncer1|s_debounceCnt\(1) & (\debouncer1|Add0~1\ & VCC)) # (!\debouncer1|s_debounceCnt\(1) & (!\debouncer1|Add0~1\))
-- \debouncer1|Add0~3\ = CARRY((!\debouncer1|s_debounceCnt\(1) & !\debouncer1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(1),
	datad => VCC,
	cin => \debouncer1|Add0~1\,
	combout => \debouncer1|Add0~2_combout\,
	cout => \debouncer1|Add0~3\);

-- Location: LCCOMB_X48_Y39_N0
\debouncer1|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~20_combout\ = (\debouncer1|s_debounceCnt[19]~4_combout\ & \debouncer1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer1|s_debounceCnt[19]~4_combout\,
	datad => \debouncer1|Add0~2_combout\,
	combout => \debouncer1|s_debounceCnt~20_combout\);

-- Location: FF_X48_Y39_N1
\debouncer1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~20_combout\,
	ena => \debouncer1|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(1));

-- Location: LCCOMB_X48_Y39_N14
\debouncer1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~4_combout\ = (\debouncer1|s_debounceCnt\(2) & ((GND) # (!\debouncer1|Add0~3\))) # (!\debouncer1|s_debounceCnt\(2) & (\debouncer1|Add0~3\ $ (GND)))
-- \debouncer1|Add0~5\ = CARRY((\debouncer1|s_debounceCnt\(2)) # (!\debouncer1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(2),
	datad => VCC,
	cin => \debouncer1|Add0~3\,
	combout => \debouncer1|Add0~4_combout\,
	cout => \debouncer1|Add0~5\);

-- Location: LCCOMB_X48_Y39_N6
\debouncer1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~21_combout\ = (\debouncer1|Add0~4_combout\ & \debouncer1|s_debounceCnt[19]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|Add0~4_combout\,
	datac => \debouncer1|s_debounceCnt[19]~4_combout\,
	combout => \debouncer1|s_debounceCnt~21_combout\);

-- Location: FF_X48_Y39_N7
\debouncer1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~21_combout\,
	ena => \debouncer1|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(2));

-- Location: LCCOMB_X48_Y39_N16
\debouncer1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~6_combout\ = (\debouncer1|s_debounceCnt\(3) & (\debouncer1|Add0~5\ & VCC)) # (!\debouncer1|s_debounceCnt\(3) & (!\debouncer1|Add0~5\))
-- \debouncer1|Add0~7\ = CARRY((!\debouncer1|s_debounceCnt\(3) & !\debouncer1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(3),
	datad => VCC,
	cin => \debouncer1|Add0~5\,
	combout => \debouncer1|Add0~6_combout\,
	cout => \debouncer1|Add0~7\);

-- Location: LCCOMB_X48_Y39_N8
\debouncer1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~22_combout\ = (\debouncer1|s_debounceCnt[19]~4_combout\ & \debouncer1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer1|s_debounceCnt[19]~4_combout\,
	datad => \debouncer1|Add0~6_combout\,
	combout => \debouncer1|s_debounceCnt~22_combout\);

-- Location: FF_X48_Y39_N9
\debouncer1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~22_combout\,
	ena => \debouncer1|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(3));

-- Location: LCCOMB_X48_Y39_N2
\debouncer1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_pulsedOut~5_combout\ = (!\debouncer1|s_debounceCnt\(2) & (!\debouncer1|s_debounceCnt\(3) & (!\debouncer1|s_debounceCnt\(4) & !\debouncer1|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(2),
	datab => \debouncer1|s_debounceCnt\(3),
	datac => \debouncer1|s_debounceCnt\(4),
	datad => \debouncer1|s_debounceCnt\(1),
	combout => \debouncer1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X49_Y39_N10
\debouncer1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_pulsedOut~2_combout\ = (!\debouncer1|s_debounceCnt\(8) & (!\debouncer1|s_debounceCnt\(10) & (!\debouncer1|s_debounceCnt\(9) & !\debouncer1|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(8),
	datab => \debouncer1|s_debounceCnt\(10),
	datac => \debouncer1|s_debounceCnt\(9),
	datad => \debouncer1|s_debounceCnt\(7),
	combout => \debouncer1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X49_Y39_N20
\debouncer1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_pulsedOut~3_combout\ = (!\debouncer1|s_debounceCnt\(14) & (!\debouncer1|s_debounceCnt\(11) & (!\debouncer1|s_debounceCnt\(19) & !\debouncer1|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(14),
	datab => \debouncer1|s_debounceCnt\(11),
	datac => \debouncer1|s_debounceCnt\(19),
	datad => \debouncer1|s_debounceCnt\(18),
	combout => \debouncer1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X48_Y38_N18
\debouncer1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~40_combout\ = (\debouncer1|s_debounceCnt\(20) & ((GND) # (!\debouncer1|Add0~39\))) # (!\debouncer1|s_debounceCnt\(20) & (\debouncer1|Add0~39\ $ (GND)))
-- \debouncer1|Add0~41\ = CARRY((\debouncer1|s_debounceCnt\(20)) # (!\debouncer1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(20),
	datad => VCC,
	cin => \debouncer1|Add0~39\,
	combout => \debouncer1|Add0~40_combout\,
	cout => \debouncer1|Add0~41\);

-- Location: LCCOMB_X48_Y38_N20
\debouncer1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~42_combout\ = (\debouncer1|s_debounceCnt\(21) & (\debouncer1|Add0~41\ & VCC)) # (!\debouncer1|s_debounceCnt\(21) & (!\debouncer1|Add0~41\))
-- \debouncer1|Add0~43\ = CARRY((!\debouncer1|s_debounceCnt\(21) & !\debouncer1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(21),
	datad => VCC,
	cin => \debouncer1|Add0~41\,
	combout => \debouncer1|Add0~42_combout\,
	cout => \debouncer1|Add0~43\);

-- Location: LCCOMB_X48_Y38_N30
\debouncer1|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[21]~11_combout\ = (\debouncer1|Add0~42_combout\ & (\debouncer1|s_debounceCnt[19]~3_combout\ & \debouncer1|s_debounceCnt[19]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|Add0~42_combout\,
	datac => \debouncer1|s_debounceCnt[19]~3_combout\,
	datad => \debouncer1|s_debounceCnt[19]~4_combout\,
	combout => \debouncer1|s_debounceCnt[21]~11_combout\);

-- Location: FF_X48_Y38_N31
\debouncer1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(21));

-- Location: LCCOMB_X49_Y39_N8
\debouncer1|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_pulsedOut~1_combout\ = (!\debouncer1|s_debounceCnt\(12) & (!\debouncer1|s_debounceCnt\(13) & (!\debouncer1|s_debounceCnt\(21) & !\debouncer1|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(12),
	datab => \debouncer1|s_debounceCnt\(13),
	datac => \debouncer1|s_debounceCnt\(21),
	datad => \debouncer1|s_debounceCnt\(20),
	combout => \debouncer1|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X49_Y39_N24
\debouncer1|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_pulsedOut~0_combout\ = (!\debouncer1|s_debounceCnt\(15) & (!\debouncer1|s_debounceCnt\(6) & (!\debouncer1|s_debounceCnt\(16) & !\debouncer1|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(15),
	datab => \debouncer1|s_debounceCnt\(6),
	datac => \debouncer1|s_debounceCnt\(16),
	datad => \debouncer1|s_debounceCnt\(17),
	combout => \debouncer1|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X49_Y39_N18
\debouncer1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_pulsedOut~4_combout\ = (\debouncer1|s_pulsedOut~2_combout\ & (\debouncer1|s_pulsedOut~3_combout\ & (\debouncer1|s_pulsedOut~1_combout\ & \debouncer1|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_pulsedOut~2_combout\,
	datab => \debouncer1|s_pulsedOut~3_combout\,
	datac => \debouncer1|s_pulsedOut~1_combout\,
	datad => \debouncer1|s_pulsedOut~0_combout\,
	combout => \debouncer1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X49_Y39_N0
\debouncer1|s_debounceCnt[19]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[19]~2_combout\ = ((\debouncer1|s_debounceCnt\(0)) # ((\debouncer1|s_debounceCnt\(5)) # (!\debouncer1|s_pulsedOut~4_combout\))) # (!\debouncer1|s_pulsedOut~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_pulsedOut~5_combout\,
	datab => \debouncer1|s_debounceCnt\(0),
	datac => \debouncer1|s_debounceCnt\(5),
	datad => \debouncer1|s_pulsedOut~4_combout\,
	combout => \debouncer1|s_debounceCnt[19]~2_combout\);

-- Location: LCCOMB_X49_Y39_N30
\debouncer1|s_debounceCnt[19]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[19]~3_combout\ = (\debouncer1|s_debounceCnt\(22)) # (((\debouncer1|s_debounceCnt[19]~2_combout\) # (!\debouncer1|s_dirtyIn~q\)) # (!\debouncer1|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(22),
	datab => \debouncer1|s_previousIn~q\,
	datac => \debouncer1|s_dirtyIn~q\,
	datad => \debouncer1|s_debounceCnt[19]~2_combout\,
	combout => \debouncer1|s_debounceCnt[19]~3_combout\);

-- Location: FF_X49_Y39_N5
\debouncer1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~1_combout\,
	ena => \debouncer1|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(6));

-- Location: LCCOMB_X48_Y39_N24
\debouncer1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~14_combout\ = (\debouncer1|s_debounceCnt\(7) & (\debouncer1|Add0~13\ & VCC)) # (!\debouncer1|s_debounceCnt\(7) & (!\debouncer1|Add0~13\))
-- \debouncer1|Add0~15\ = CARRY((!\debouncer1|s_debounceCnt\(7) & !\debouncer1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(7),
	datad => VCC,
	cin => \debouncer1|Add0~13\,
	combout => \debouncer1|Add0~14_combout\,
	cout => \debouncer1|Add0~15\);

-- Location: LCCOMB_X49_Y39_N2
\debouncer1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~12_combout\ = (\debouncer1|s_debounceCnt[19]~4_combout\ & \debouncer1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer1|s_debounceCnt[19]~4_combout\,
	datad => \debouncer1|Add0~14_combout\,
	combout => \debouncer1|s_debounceCnt~12_combout\);

-- Location: FF_X49_Y39_N3
\debouncer1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~12_combout\,
	ena => \debouncer1|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(7));

-- Location: LCCOMB_X48_Y39_N26
\debouncer1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~16_combout\ = (\debouncer1|s_debounceCnt\(8) & ((GND) # (!\debouncer1|Add0~15\))) # (!\debouncer1|s_debounceCnt\(8) & (\debouncer1|Add0~15\ $ (GND)))
-- \debouncer1|Add0~17\ = CARRY((\debouncer1|s_debounceCnt\(8)) # (!\debouncer1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(8),
	datad => VCC,
	cin => \debouncer1|Add0~15\,
	combout => \debouncer1|Add0~16_combout\,
	cout => \debouncer1|Add0~17\);

-- Location: LCCOMB_X49_Y39_N12
\debouncer1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~13_combout\ = (\debouncer1|s_debounceCnt[19]~0_combout\ & ((\debouncer1|Add0~16_combout\) # (!\debouncer1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_previousIn~q\,
	datac => \debouncer1|Add0~16_combout\,
	datad => \debouncer1|s_debounceCnt[19]~0_combout\,
	combout => \debouncer1|s_debounceCnt~13_combout\);

-- Location: FF_X49_Y39_N13
\debouncer1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~13_combout\,
	ena => \debouncer1|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(8));

-- Location: LCCOMB_X48_Y39_N28
\debouncer1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~18_combout\ = (\debouncer1|s_debounceCnt\(9) & (\debouncer1|Add0~17\ & VCC)) # (!\debouncer1|s_debounceCnt\(9) & (!\debouncer1|Add0~17\))
-- \debouncer1|Add0~19\ = CARRY((!\debouncer1|s_debounceCnt\(9) & !\debouncer1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(9),
	datad => VCC,
	cin => \debouncer1|Add0~17\,
	combout => \debouncer1|Add0~18_combout\,
	cout => \debouncer1|Add0~19\);

-- Location: LCCOMB_X49_Y39_N22
\debouncer1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~14_combout\ = (\debouncer1|s_debounceCnt[19]~0_combout\ & ((\debouncer1|Add0~18_combout\) # (!\debouncer1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|Add0~18_combout\,
	datac => \debouncer1|s_previousIn~q\,
	datad => \debouncer1|s_debounceCnt[19]~0_combout\,
	combout => \debouncer1|s_debounceCnt~14_combout\);

-- Location: FF_X49_Y39_N23
\debouncer1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~14_combout\,
	ena => \debouncer1|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(9));

-- Location: LCCOMB_X48_Y39_N30
\debouncer1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~20_combout\ = (\debouncer1|s_debounceCnt\(10) & ((GND) # (!\debouncer1|Add0~19\))) # (!\debouncer1|s_debounceCnt\(10) & (\debouncer1|Add0~19\ $ (GND)))
-- \debouncer1|Add0~21\ = CARRY((\debouncer1|s_debounceCnt\(10)) # (!\debouncer1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(10),
	datad => VCC,
	cin => \debouncer1|Add0~19\,
	combout => \debouncer1|Add0~20_combout\,
	cout => \debouncer1|Add0~21\);

-- Location: LCCOMB_X49_Y39_N28
\debouncer1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~15_combout\ = (\debouncer1|s_debounceCnt[19]~4_combout\ & \debouncer1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer1|s_debounceCnt[19]~4_combout\,
	datad => \debouncer1|Add0~20_combout\,
	combout => \debouncer1|s_debounceCnt~15_combout\);

-- Location: FF_X49_Y39_N29
\debouncer1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~15_combout\,
	ena => \debouncer1|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(10));

-- Location: LCCOMB_X48_Y38_N0
\debouncer1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~22_combout\ = (\debouncer1|s_debounceCnt\(11) & (\debouncer1|Add0~21\ & VCC)) # (!\debouncer1|s_debounceCnt\(11) & (!\debouncer1|Add0~21\))
-- \debouncer1|Add0~23\ = CARRY((!\debouncer1|s_debounceCnt\(11) & !\debouncer1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(11),
	datad => VCC,
	cin => \debouncer1|Add0~21\,
	combout => \debouncer1|Add0~22_combout\,
	cout => \debouncer1|Add0~23\);

-- Location: LCCOMB_X49_Y39_N16
\debouncer1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~16_combout\ = (\debouncer1|s_debounceCnt[19]~0_combout\ & ((\debouncer1|Add0~22_combout\) # (!\debouncer1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|Add0~22_combout\,
	datac => \debouncer1|s_previousIn~q\,
	datad => \debouncer1|s_debounceCnt[19]~0_combout\,
	combout => \debouncer1|s_debounceCnt~16_combout\);

-- Location: FF_X49_Y39_N17
\debouncer1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~16_combout\,
	ena => \debouncer1|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(11));

-- Location: LCCOMB_X48_Y38_N2
\debouncer1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~24_combout\ = (\debouncer1|s_debounceCnt\(12) & ((GND) # (!\debouncer1|Add0~23\))) # (!\debouncer1|s_debounceCnt\(12) & (\debouncer1|Add0~23\ $ (GND)))
-- \debouncer1|Add0~25\ = CARRY((\debouncer1|s_debounceCnt\(12)) # (!\debouncer1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(12),
	datad => VCC,
	cin => \debouncer1|Add0~23\,
	combout => \debouncer1|Add0~24_combout\,
	cout => \debouncer1|Add0~25\);

-- Location: LCCOMB_X47_Y39_N8
\debouncer1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~8_combout\ = (\debouncer1|s_debounceCnt[19]~4_combout\ & \debouncer1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt[19]~4_combout\,
	datac => \debouncer1|Add0~24_combout\,
	combout => \debouncer1|s_debounceCnt~8_combout\);

-- Location: FF_X47_Y39_N9
\debouncer1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~8_combout\,
	ena => \debouncer1|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(12));

-- Location: LCCOMB_X48_Y38_N4
\debouncer1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~26_combout\ = (\debouncer1|s_debounceCnt\(13) & (\debouncer1|Add0~25\ & VCC)) # (!\debouncer1|s_debounceCnt\(13) & (!\debouncer1|Add0~25\))
-- \debouncer1|Add0~27\ = CARRY((!\debouncer1|s_debounceCnt\(13) & !\debouncer1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(13),
	datad => VCC,
	cin => \debouncer1|Add0~25\,
	combout => \debouncer1|Add0~26_combout\,
	cout => \debouncer1|Add0~27\);

-- Location: LCCOMB_X49_Y39_N14
\debouncer1|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~9_combout\ = (\debouncer1|s_debounceCnt[19]~4_combout\ & \debouncer1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer1|s_debounceCnt[19]~4_combout\,
	datad => \debouncer1|Add0~26_combout\,
	combout => \debouncer1|s_debounceCnt~9_combout\);

-- Location: FF_X49_Y39_N15
\debouncer1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~9_combout\,
	ena => \debouncer1|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(13));

-- Location: LCCOMB_X48_Y38_N6
\debouncer1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~28_combout\ = (\debouncer1|s_debounceCnt\(14) & ((GND) # (!\debouncer1|Add0~27\))) # (!\debouncer1|s_debounceCnt\(14) & (\debouncer1|Add0~27\ $ (GND)))
-- \debouncer1|Add0~29\ = CARRY((\debouncer1|s_debounceCnt\(14)) # (!\debouncer1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(14),
	datad => VCC,
	cin => \debouncer1|Add0~27\,
	combout => \debouncer1|Add0~28_combout\,
	cout => \debouncer1|Add0~29\);

-- Location: LCCOMB_X49_Y39_N6
\debouncer1|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~17_combout\ = (\debouncer1|s_debounceCnt[19]~0_combout\ & ((\debouncer1|Add0~28_combout\) # (!\debouncer1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_previousIn~q\,
	datac => \debouncer1|Add0~28_combout\,
	datad => \debouncer1|s_debounceCnt[19]~0_combout\,
	combout => \debouncer1|s_debounceCnt~17_combout\);

-- Location: FF_X49_Y39_N7
\debouncer1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~17_combout\,
	ena => \debouncer1|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(14));

-- Location: LCCOMB_X48_Y38_N8
\debouncer1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~30_combout\ = (\debouncer1|s_debounceCnt\(15) & (\debouncer1|Add0~29\ & VCC)) # (!\debouncer1|s_debounceCnt\(15) & (!\debouncer1|Add0~29\))
-- \debouncer1|Add0~31\ = CARRY((!\debouncer1|s_debounceCnt\(15) & !\debouncer1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(15),
	datad => VCC,
	cin => \debouncer1|Add0~29\,
	combout => \debouncer1|Add0~30_combout\,
	cout => \debouncer1|Add0~31\);

-- Location: LCCOMB_X49_Y39_N26
\debouncer1|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~5_combout\ = (\debouncer1|s_debounceCnt[19]~4_combout\ & \debouncer1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer1|s_debounceCnt[19]~4_combout\,
	datad => \debouncer1|Add0~30_combout\,
	combout => \debouncer1|s_debounceCnt~5_combout\);

-- Location: FF_X49_Y39_N27
\debouncer1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~5_combout\,
	ena => \debouncer1|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(15));

-- Location: LCCOMB_X48_Y38_N10
\debouncer1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~32_combout\ = (\debouncer1|s_debounceCnt\(16) & ((GND) # (!\debouncer1|Add0~31\))) # (!\debouncer1|s_debounceCnt\(16) & (\debouncer1|Add0~31\ $ (GND)))
-- \debouncer1|Add0~33\ = CARRY((\debouncer1|s_debounceCnt\(16)) # (!\debouncer1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(16),
	datad => VCC,
	cin => \debouncer1|Add0~31\,
	combout => \debouncer1|Add0~32_combout\,
	cout => \debouncer1|Add0~33\);

-- Location: LCCOMB_X48_Y38_N28
\debouncer1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~6_combout\ = (\debouncer1|Add0~32_combout\ & \debouncer1|s_debounceCnt[19]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|Add0~32_combout\,
	datad => \debouncer1|s_debounceCnt[19]~4_combout\,
	combout => \debouncer1|s_debounceCnt~6_combout\);

-- Location: FF_X48_Y38_N29
\debouncer1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~6_combout\,
	ena => \debouncer1|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(16));

-- Location: LCCOMB_X48_Y38_N12
\debouncer1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~34_combout\ = (\debouncer1|s_debounceCnt\(17) & (\debouncer1|Add0~33\ & VCC)) # (!\debouncer1|s_debounceCnt\(17) & (!\debouncer1|Add0~33\))
-- \debouncer1|Add0~35\ = CARRY((!\debouncer1|s_debounceCnt\(17) & !\debouncer1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(17),
	datad => VCC,
	cin => \debouncer1|Add0~33\,
	combout => \debouncer1|Add0~34_combout\,
	cout => \debouncer1|Add0~35\);

-- Location: LCCOMB_X48_Y38_N26
\debouncer1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~7_combout\ = (\debouncer1|Add0~34_combout\ & \debouncer1|s_debounceCnt[19]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|Add0~34_combout\,
	datad => \debouncer1|s_debounceCnt[19]~4_combout\,
	combout => \debouncer1|s_debounceCnt~7_combout\);

-- Location: FF_X48_Y38_N27
\debouncer1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~7_combout\,
	ena => \debouncer1|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(17));

-- Location: LCCOMB_X48_Y38_N14
\debouncer1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~36_combout\ = (\debouncer1|s_debounceCnt\(18) & ((GND) # (!\debouncer1|Add0~35\))) # (!\debouncer1|s_debounceCnt\(18) & (\debouncer1|Add0~35\ $ (GND)))
-- \debouncer1|Add0~37\ = CARRY((\debouncer1|s_debounceCnt\(18)) # (!\debouncer1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(18),
	datad => VCC,
	cin => \debouncer1|Add0~35\,
	combout => \debouncer1|Add0~36_combout\,
	cout => \debouncer1|Add0~37\);

-- Location: LCCOMB_X47_Y39_N30
\debouncer1|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[18]~18_combout\ = (\debouncer1|s_debounceCnt[19]~0_combout\ & (\debouncer1|s_debounceCnt[19]~3_combout\ & ((\debouncer1|Add0~36_combout\) # (!\debouncer1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt[19]~0_combout\,
	datab => \debouncer1|Add0~36_combout\,
	datac => \debouncer1|s_previousIn~q\,
	datad => \debouncer1|s_debounceCnt[19]~3_combout\,
	combout => \debouncer1|s_debounceCnt[18]~18_combout\);

-- Location: FF_X47_Y39_N31
\debouncer1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(18));

-- Location: LCCOMB_X48_Y38_N16
\debouncer1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~38_combout\ = (\debouncer1|s_debounceCnt\(19) & (\debouncer1|Add0~37\ & VCC)) # (!\debouncer1|s_debounceCnt\(19) & (!\debouncer1|Add0~37\))
-- \debouncer1|Add0~39\ = CARRY((!\debouncer1|s_debounceCnt\(19) & !\debouncer1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(19),
	datad => VCC,
	cin => \debouncer1|Add0~37\,
	combout => \debouncer1|Add0~38_combout\,
	cout => \debouncer1|Add0~39\);

-- Location: LCCOMB_X47_Y39_N0
\debouncer1|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[19]~19_combout\ = (\debouncer1|s_debounceCnt[19]~0_combout\ & (\debouncer1|s_debounceCnt[19]~3_combout\ & ((\debouncer1|Add0~38_combout\) # (!\debouncer1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt[19]~0_combout\,
	datab => \debouncer1|Add0~38_combout\,
	datac => \debouncer1|s_previousIn~q\,
	datad => \debouncer1|s_debounceCnt[19]~3_combout\,
	combout => \debouncer1|s_debounceCnt[19]~19_combout\);

-- Location: FF_X47_Y39_N1
\debouncer1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(19));

-- Location: LCCOMB_X48_Y38_N24
\debouncer1|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[20]~10_combout\ = (\debouncer1|Add0~40_combout\ & (\debouncer1|s_debounceCnt[19]~3_combout\ & \debouncer1|s_debounceCnt[19]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|Add0~40_combout\,
	datac => \debouncer1|s_debounceCnt[19]~3_combout\,
	datad => \debouncer1|s_debounceCnt[19]~4_combout\,
	combout => \debouncer1|s_debounceCnt[20]~10_combout\);

-- Location: FF_X48_Y38_N25
\debouncer1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(20));

-- Location: LCCOMB_X47_Y39_N2
\debouncer1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|LessThan0~4_combout\ = (\debouncer1|s_debounceCnt\(12)) # ((\debouncer1|s_debounceCnt\(13)) # ((\debouncer1|s_debounceCnt\(11) & \debouncer1|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(11),
	datab => \debouncer1|s_debounceCnt\(12),
	datac => \debouncer1|s_debounceCnt\(10),
	datad => \debouncer1|s_debounceCnt\(13),
	combout => \debouncer1|LessThan0~4_combout\);

-- Location: LCCOMB_X47_Y39_N16
\debouncer1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|LessThan0~5_combout\ = (\debouncer1|s_debounceCnt\(15)) # ((\debouncer1|s_debounceCnt\(16)) # ((\debouncer1|s_debounceCnt\(14) & \debouncer1|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(15),
	datab => \debouncer1|s_debounceCnt\(14),
	datac => \debouncer1|s_debounceCnt\(16),
	datad => \debouncer1|LessThan0~4_combout\,
	combout => \debouncer1|LessThan0~5_combout\);

-- Location: LCCOMB_X47_Y39_N22
\debouncer1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|LessThan0~6_combout\ = (\debouncer1|s_debounceCnt\(18) & (\debouncer1|s_debounceCnt\(19) & ((\debouncer1|s_debounceCnt\(17)) # (\debouncer1|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(18),
	datab => \debouncer1|s_debounceCnt\(19),
	datac => \debouncer1|s_debounceCnt\(17),
	datad => \debouncer1|LessThan0~5_combout\,
	combout => \debouncer1|LessThan0~6_combout\);

-- Location: LCCOMB_X47_Y39_N12
\debouncer1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|LessThan0~0_combout\ = (\debouncer1|s_debounceCnt\(18) & (\debouncer1|s_debounceCnt\(19) & (\debouncer1|s_debounceCnt\(14) & \debouncer1|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(18),
	datab => \debouncer1|s_debounceCnt\(19),
	datac => \debouncer1|s_debounceCnt\(14),
	datad => \debouncer1|s_debounceCnt\(8),
	combout => \debouncer1|LessThan0~0_combout\);

-- Location: LCCOMB_X46_Y39_N16
\debouncer1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|LessThan0~1_combout\ = (\debouncer1|s_debounceCnt\(9) & \debouncer1|s_debounceCnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer1|s_debounceCnt\(9),
	datad => \debouncer1|s_debounceCnt\(11),
	combout => \debouncer1|LessThan0~1_combout\);

-- Location: LCCOMB_X47_Y39_N18
\debouncer1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|LessThan0~2_combout\ = (\debouncer1|s_debounceCnt\(6) & ((\debouncer1|s_debounceCnt\(0)) # ((\debouncer1|s_debounceCnt\(5)) # (!\debouncer1|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(0),
	datab => \debouncer1|s_debounceCnt\(5),
	datac => \debouncer1|s_debounceCnt\(6),
	datad => \debouncer1|s_pulsedOut~5_combout\,
	combout => \debouncer1|LessThan0~2_combout\);

-- Location: LCCOMB_X47_Y39_N24
\debouncer1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|LessThan0~3_combout\ = (\debouncer1|LessThan0~0_combout\ & (\debouncer1|LessThan0~1_combout\ & ((\debouncer1|s_debounceCnt\(7)) # (\debouncer1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|LessThan0~0_combout\,
	datab => \debouncer1|s_debounceCnt\(7),
	datac => \debouncer1|LessThan0~1_combout\,
	datad => \debouncer1|LessThan0~2_combout\,
	combout => \debouncer1|LessThan0~3_combout\);

-- Location: LCCOMB_X47_Y39_N20
\debouncer1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|LessThan0~7_combout\ = (\debouncer1|s_debounceCnt\(20)) # ((\debouncer1|s_debounceCnt\(21)) # ((\debouncer1|LessThan0~6_combout\) # (\debouncer1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(20),
	datab => \debouncer1|s_debounceCnt\(21),
	datac => \debouncer1|LessThan0~6_combout\,
	datad => \debouncer1|LessThan0~3_combout\,
	combout => \debouncer1|LessThan0~7_combout\);

-- Location: LCCOMB_X47_Y39_N10
\debouncer1|s_debounceCnt[19]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[19]~0_combout\ = (\debouncer1|s_dirtyIn~q\ & ((!\debouncer1|LessThan0~7_combout\) # (!\debouncer1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_dirtyIn~q\,
	datab => \debouncer1|s_debounceCnt\(22),
	datad => \debouncer1|LessThan0~7_combout\,
	combout => \debouncer1|s_debounceCnt[19]~0_combout\);

-- Location: LCCOMB_X47_Y39_N26
\debouncer1|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[22]~25_combout\ = (\debouncer1|s_dirtyIn~q\ & ((\debouncer1|s_debounceCnt\(22) & ((!\debouncer1|LessThan0~7_combout\))) # (!\debouncer1|s_debounceCnt\(22) & (\debouncer1|s_debounceCnt[19]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_dirtyIn~q\,
	datab => \debouncer1|s_debounceCnt\(22),
	datac => \debouncer1|s_debounceCnt[19]~2_combout\,
	datad => \debouncer1|LessThan0~7_combout\,
	combout => \debouncer1|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X48_Y38_N22
\debouncer1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~44_combout\ = \debouncer1|Add0~43\ $ (\debouncer1|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debouncer1|s_debounceCnt\(22),
	cin => \debouncer1|Add0~43\,
	combout => \debouncer1|Add0~44_combout\);

-- Location: LCCOMB_X47_Y39_N28
\debouncer1|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[22]~26_combout\ = (\debouncer1|s_previousIn~q\ & (((\debouncer1|s_debounceCnt[22]~25_combout\ & \debouncer1|Add0~44_combout\)))) # (!\debouncer1|s_previousIn~q\ & (\debouncer1|s_debounceCnt[19]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt[19]~0_combout\,
	datab => \debouncer1|s_previousIn~q\,
	datac => \debouncer1|s_debounceCnt[22]~25_combout\,
	datad => \debouncer1|Add0~44_combout\,
	combout => \debouncer1|s_debounceCnt[22]~26_combout\);

-- Location: FF_X47_Y39_N29
\debouncer1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(22));

-- Location: LCCOMB_X47_Y39_N4
\debouncer1|s_debounceCnt[19]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[19]~4_combout\ = (\debouncer1|s_dirtyIn~q\ & (\debouncer1|s_previousIn~q\ & ((!\debouncer1|LessThan0~7_combout\) # (!\debouncer1|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_dirtyIn~q\,
	datab => \debouncer1|s_debounceCnt\(22),
	datac => \debouncer1|s_previousIn~q\,
	datad => \debouncer1|LessThan0~7_combout\,
	combout => \debouncer1|s_debounceCnt[19]~4_combout\);

-- Location: LCCOMB_X48_Y39_N18
\debouncer1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~8_combout\ = (\debouncer1|s_debounceCnt\(4) & ((GND) # (!\debouncer1|Add0~7\))) # (!\debouncer1|s_debounceCnt\(4) & (\debouncer1|Add0~7\ $ (GND)))
-- \debouncer1|Add0~9\ = CARRY((\debouncer1|s_debounceCnt\(4)) # (!\debouncer1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(4),
	datad => VCC,
	cin => \debouncer1|Add0~7\,
	combout => \debouncer1|Add0~8_combout\,
	cout => \debouncer1|Add0~9\);

-- Location: LCCOMB_X47_Y39_N6
\debouncer1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~23_combout\ = (\debouncer1|s_debounceCnt[19]~4_combout\ & \debouncer1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer1|s_debounceCnt[19]~4_combout\,
	datad => \debouncer1|Add0~8_combout\,
	combout => \debouncer1|s_debounceCnt~23_combout\);

-- Location: FF_X47_Y39_N7
\debouncer1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~23_combout\,
	ena => \debouncer1|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(4));

-- Location: LCCOMB_X47_Y39_N14
\debouncer1|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~27_combout\ = (\debouncer1|Add0~10_combout\ & \debouncer1|s_debounceCnt[19]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|Add0~10_combout\,
	datac => \debouncer1|s_debounceCnt[19]~4_combout\,
	combout => \debouncer1|s_debounceCnt~27_combout\);

-- Location: FF_X47_Y39_N15
\debouncer1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~27_combout\,
	ena => \debouncer1|s_debounceCnt[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(5));

-- Location: LCCOMB_X50_Y39_N20
\debouncer1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_pulsedOut~6_combout\ = (!\debouncer1|s_debounceCnt\(22) & (\debouncer1|s_debounceCnt\(0) & (\debouncer1|s_previousIn~q\ & \debouncer1|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(22),
	datab => \debouncer1|s_debounceCnt\(0),
	datac => \debouncer1|s_previousIn~q\,
	datad => \debouncer1|s_dirtyIn~q\,
	combout => \debouncer1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X52_Y34_N30
\debouncer1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_pulsedOut~7_combout\ = (!\debouncer1|s_debounceCnt\(5) & (\debouncer1|s_pulsedOut~5_combout\ & (\debouncer1|s_pulsedOut~4_combout\ & \debouncer1|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(5),
	datab => \debouncer1|s_pulsedOut~5_combout\,
	datac => \debouncer1|s_pulsedOut~4_combout\,
	datad => \debouncer1|s_pulsedOut~6_combout\,
	combout => \debouncer1|s_pulsedOut~7_combout\);

-- Location: FF_X52_Y34_N31
\debouncer1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \debouncer1|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_pulsedOut~q\);

-- Location: LCCOMB_X80_Y38_N10
\debouncer3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~0_combout\ = \debouncer3|s_debounceCnt\(0) $ (VCC)
-- \debouncer3|Add0~1\ = CARRY(\debouncer3|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(0),
	datad => VCC,
	combout => \debouncer3|Add0~0_combout\,
	cout => \debouncer3|Add0~1\);

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

-- Location: LCCOMB_X83_Y37_N24
\debouncer3|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_dirtyIn~0_combout\ = !\KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[3]~input_o\,
	combout => \debouncer3|s_dirtyIn~0_combout\);

-- Location: FF_X83_Y37_N25
\debouncer3|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_dirtyIn~q\);

-- Location: FF_X79_Y37_N11
\debouncer3|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debouncer3|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_previousIn~q\);

-- Location: LCCOMB_X80_Y38_N0
\debouncer3|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_pulsedOut~5_combout\ = (!\debouncer3|s_debounceCnt\(4) & (!\debouncer3|s_debounceCnt\(1) & (!\debouncer3|s_debounceCnt\(3) & !\debouncer3|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(4),
	datab => \debouncer3|s_debounceCnt\(1),
	datac => \debouncer3|s_debounceCnt\(3),
	datad => \debouncer3|s_debounceCnt\(2),
	combout => \debouncer3|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X80_Y38_N20
\debouncer3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~10_combout\ = (\debouncer3|s_debounceCnt\(5) & (\debouncer3|Add0~9\ & VCC)) # (!\debouncer3|s_debounceCnt\(5) & (!\debouncer3|Add0~9\))
-- \debouncer3|Add0~11\ = CARRY((!\debouncer3|s_debounceCnt\(5) & !\debouncer3|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(5),
	datad => VCC,
	cin => \debouncer3|Add0~9\,
	combout => \debouncer3|Add0~10_combout\,
	cout => \debouncer3|Add0~11\);

-- Location: LCCOMB_X80_Y38_N22
\debouncer3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~12_combout\ = (\debouncer3|s_debounceCnt\(6) & ((GND) # (!\debouncer3|Add0~11\))) # (!\debouncer3|s_debounceCnt\(6) & (\debouncer3|Add0~11\ $ (GND)))
-- \debouncer3|Add0~13\ = CARRY((\debouncer3|s_debounceCnt\(6)) # (!\debouncer3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(6),
	datad => VCC,
	cin => \debouncer3|Add0~11\,
	combout => \debouncer3|Add0~12_combout\,
	cout => \debouncer3|Add0~13\);

-- Location: LCCOMB_X79_Y37_N12
\debouncer3|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~1_combout\ = (\debouncer3|s_debounceCnt[8]~0_combout\ & ((\debouncer3|Add0~12_combout\) # (!\debouncer3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_previousIn~q\,
	datac => \debouncer3|Add0~12_combout\,
	datad => \debouncer3|s_debounceCnt[8]~0_combout\,
	combout => \debouncer3|s_debounceCnt~1_combout\);

-- Location: FF_X79_Y37_N13
\debouncer3|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~1_combout\,
	ena => \debouncer3|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(6));

-- Location: LCCOMB_X80_Y38_N24
\debouncer3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~14_combout\ = (\debouncer3|s_debounceCnt\(7) & (\debouncer3|Add0~13\ & VCC)) # (!\debouncer3|s_debounceCnt\(7) & (!\debouncer3|Add0~13\))
-- \debouncer3|Add0~15\ = CARRY((!\debouncer3|s_debounceCnt\(7) & !\debouncer3|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(7),
	datad => VCC,
	cin => \debouncer3|Add0~13\,
	combout => \debouncer3|Add0~14_combout\,
	cout => \debouncer3|Add0~15\);

-- Location: LCCOMB_X81_Y37_N10
\debouncer3|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~12_combout\ = (\debouncer3|Add0~14_combout\ & \debouncer3|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer3|Add0~14_combout\,
	datad => \debouncer3|s_debounceCnt[8]~4_combout\,
	combout => \debouncer3|s_debounceCnt~12_combout\);

-- Location: FF_X81_Y37_N11
\debouncer3|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~12_combout\,
	ena => \debouncer3|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(7));

-- Location: LCCOMB_X80_Y38_N26
\debouncer3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~16_combout\ = (\debouncer3|s_debounceCnt\(8) & ((GND) # (!\debouncer3|Add0~15\))) # (!\debouncer3|s_debounceCnt\(8) & (\debouncer3|Add0~15\ $ (GND)))
-- \debouncer3|Add0~17\ = CARRY((\debouncer3|s_debounceCnt\(8)) # (!\debouncer3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(8),
	datad => VCC,
	cin => \debouncer3|Add0~15\,
	combout => \debouncer3|Add0~16_combout\,
	cout => \debouncer3|Add0~17\);

-- Location: LCCOMB_X81_Y37_N4
\debouncer3|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~13_combout\ = (\debouncer3|s_debounceCnt[8]~0_combout\ & ((\debouncer3|Add0~16_combout\) # (!\debouncer3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt[8]~0_combout\,
	datac => \debouncer3|s_previousIn~q\,
	datad => \debouncer3|Add0~16_combout\,
	combout => \debouncer3|s_debounceCnt~13_combout\);

-- Location: FF_X81_Y37_N5
\debouncer3|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~13_combout\,
	ena => \debouncer3|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(8));

-- Location: LCCOMB_X80_Y38_N28
\debouncer3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~18_combout\ = (\debouncer3|s_debounceCnt\(9) & (\debouncer3|Add0~17\ & VCC)) # (!\debouncer3|s_debounceCnt\(9) & (!\debouncer3|Add0~17\))
-- \debouncer3|Add0~19\ = CARRY((!\debouncer3|s_debounceCnt\(9) & !\debouncer3|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(9),
	datad => VCC,
	cin => \debouncer3|Add0~17\,
	combout => \debouncer3|Add0~18_combout\,
	cout => \debouncer3|Add0~19\);

-- Location: LCCOMB_X81_Y37_N26
\debouncer3|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~14_combout\ = (\debouncer3|s_debounceCnt[8]~0_combout\ & ((\debouncer3|Add0~18_combout\) # (!\debouncer3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_previousIn~q\,
	datac => \debouncer3|Add0~18_combout\,
	datad => \debouncer3|s_debounceCnt[8]~0_combout\,
	combout => \debouncer3|s_debounceCnt~14_combout\);

-- Location: FF_X81_Y37_N27
\debouncer3|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~14_combout\,
	ena => \debouncer3|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(9));

-- Location: LCCOMB_X80_Y38_N30
\debouncer3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~20_combout\ = (\debouncer3|s_debounceCnt\(10) & ((GND) # (!\debouncer3|Add0~19\))) # (!\debouncer3|s_debounceCnt\(10) & (\debouncer3|Add0~19\ $ (GND)))
-- \debouncer3|Add0~21\ = CARRY((\debouncer3|s_debounceCnt\(10)) # (!\debouncer3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(10),
	datad => VCC,
	cin => \debouncer3|Add0~19\,
	combout => \debouncer3|Add0~20_combout\,
	cout => \debouncer3|Add0~21\);

-- Location: LCCOMB_X81_Y37_N12
\debouncer3|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~15_combout\ = (\debouncer3|s_debounceCnt[8]~4_combout\ & \debouncer3|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt[8]~4_combout\,
	datad => \debouncer3|Add0~20_combout\,
	combout => \debouncer3|s_debounceCnt~15_combout\);

-- Location: FF_X81_Y37_N13
\debouncer3|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~15_combout\,
	ena => \debouncer3|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(10));

-- Location: LCCOMB_X80_Y37_N0
\debouncer3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~22_combout\ = (\debouncer3|s_debounceCnt\(11) & (\debouncer3|Add0~21\ & VCC)) # (!\debouncer3|s_debounceCnt\(11) & (!\debouncer3|Add0~21\))
-- \debouncer3|Add0~23\ = CARRY((!\debouncer3|s_debounceCnt\(11) & !\debouncer3|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(11),
	datad => VCC,
	cin => \debouncer3|Add0~21\,
	combout => \debouncer3|Add0~22_combout\,
	cout => \debouncer3|Add0~23\);

-- Location: LCCOMB_X79_Y37_N26
\debouncer3|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~16_combout\ = (\debouncer3|s_debounceCnt[8]~0_combout\ & ((\debouncer3|Add0~22_combout\) # (!\debouncer3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_previousIn~q\,
	datac => \debouncer3|Add0~22_combout\,
	datad => \debouncer3|s_debounceCnt[8]~0_combout\,
	combout => \debouncer3|s_debounceCnt~16_combout\);

-- Location: FF_X79_Y37_N27
\debouncer3|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~16_combout\,
	ena => \debouncer3|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(11));

-- Location: LCCOMB_X80_Y37_N2
\debouncer3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~24_combout\ = (\debouncer3|s_debounceCnt\(12) & ((GND) # (!\debouncer3|Add0~23\))) # (!\debouncer3|s_debounceCnt\(12) & (\debouncer3|Add0~23\ $ (GND)))
-- \debouncer3|Add0~25\ = CARRY((\debouncer3|s_debounceCnt\(12)) # (!\debouncer3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(12),
	datad => VCC,
	cin => \debouncer3|Add0~23\,
	combout => \debouncer3|Add0~24_combout\,
	cout => \debouncer3|Add0~25\);

-- Location: LCCOMB_X79_Y37_N30
\debouncer3|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~8_combout\ = (\debouncer3|Add0~24_combout\ & \debouncer3|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|Add0~24_combout\,
	datad => \debouncer3|s_debounceCnt[8]~4_combout\,
	combout => \debouncer3|s_debounceCnt~8_combout\);

-- Location: FF_X79_Y37_N31
\debouncer3|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~8_combout\,
	ena => \debouncer3|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(12));

-- Location: LCCOMB_X80_Y37_N4
\debouncer3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~26_combout\ = (\debouncer3|s_debounceCnt\(13) & (\debouncer3|Add0~25\ & VCC)) # (!\debouncer3|s_debounceCnt\(13) & (!\debouncer3|Add0~25\))
-- \debouncer3|Add0~27\ = CARRY((!\debouncer3|s_debounceCnt\(13) & !\debouncer3|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(13),
	datad => VCC,
	cin => \debouncer3|Add0~25\,
	combout => \debouncer3|Add0~26_combout\,
	cout => \debouncer3|Add0~27\);

-- Location: LCCOMB_X80_Y37_N28
\debouncer3|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~9_combout\ = (\debouncer3|Add0~26_combout\ & \debouncer3|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer3|Add0~26_combout\,
	datad => \debouncer3|s_debounceCnt[8]~4_combout\,
	combout => \debouncer3|s_debounceCnt~9_combout\);

-- Location: FF_X80_Y37_N29
\debouncer3|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~9_combout\,
	ena => \debouncer3|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(13));

-- Location: LCCOMB_X80_Y37_N6
\debouncer3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~28_combout\ = (\debouncer3|s_debounceCnt\(14) & ((GND) # (!\debouncer3|Add0~27\))) # (!\debouncer3|s_debounceCnt\(14) & (\debouncer3|Add0~27\ $ (GND)))
-- \debouncer3|Add0~29\ = CARRY((\debouncer3|s_debounceCnt\(14)) # (!\debouncer3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(14),
	datad => VCC,
	cin => \debouncer3|Add0~27\,
	combout => \debouncer3|Add0~28_combout\,
	cout => \debouncer3|Add0~29\);

-- Location: LCCOMB_X79_Y37_N4
\debouncer3|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~17_combout\ = (\debouncer3|s_debounceCnt[8]~0_combout\ & ((\debouncer3|Add0~28_combout\) # (!\debouncer3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|Add0~28_combout\,
	datab => \debouncer3|s_previousIn~q\,
	datad => \debouncer3|s_debounceCnt[8]~0_combout\,
	combout => \debouncer3|s_debounceCnt~17_combout\);

-- Location: FF_X79_Y37_N5
\debouncer3|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~17_combout\,
	ena => \debouncer3|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(14));

-- Location: LCCOMB_X80_Y37_N8
\debouncer3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~30_combout\ = (\debouncer3|s_debounceCnt\(15) & (\debouncer3|Add0~29\ & VCC)) # (!\debouncer3|s_debounceCnt\(15) & (!\debouncer3|Add0~29\))
-- \debouncer3|Add0~31\ = CARRY((!\debouncer3|s_debounceCnt\(15) & !\debouncer3|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(15),
	datad => VCC,
	cin => \debouncer3|Add0~29\,
	combout => \debouncer3|Add0~30_combout\,
	cout => \debouncer3|Add0~31\);

-- Location: LCCOMB_X79_Y37_N18
\debouncer3|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~5_combout\ = (\debouncer3|Add0~30_combout\ & \debouncer3|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer3|Add0~30_combout\,
	datad => \debouncer3|s_debounceCnt[8]~4_combout\,
	combout => \debouncer3|s_debounceCnt~5_combout\);

-- Location: FF_X79_Y37_N19
\debouncer3|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~5_combout\,
	ena => \debouncer3|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(15));

-- Location: LCCOMB_X80_Y37_N10
\debouncer3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~32_combout\ = (\debouncer3|s_debounceCnt\(16) & ((GND) # (!\debouncer3|Add0~31\))) # (!\debouncer3|s_debounceCnt\(16) & (\debouncer3|Add0~31\ $ (GND)))
-- \debouncer3|Add0~33\ = CARRY((\debouncer3|s_debounceCnt\(16)) # (!\debouncer3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(16),
	datad => VCC,
	cin => \debouncer3|Add0~31\,
	combout => \debouncer3|Add0~32_combout\,
	cout => \debouncer3|Add0~33\);

-- Location: LCCOMB_X80_Y37_N24
\debouncer3|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~6_combout\ = (\debouncer3|Add0~32_combout\ & \debouncer3|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|Add0~32_combout\,
	datad => \debouncer3|s_debounceCnt[8]~4_combout\,
	combout => \debouncer3|s_debounceCnt~6_combout\);

-- Location: FF_X80_Y37_N25
\debouncer3|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~6_combout\,
	ena => \debouncer3|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(16));

-- Location: LCCOMB_X80_Y37_N12
\debouncer3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~34_combout\ = (\debouncer3|s_debounceCnt\(17) & (\debouncer3|Add0~33\ & VCC)) # (!\debouncer3|s_debounceCnt\(17) & (!\debouncer3|Add0~33\))
-- \debouncer3|Add0~35\ = CARRY((!\debouncer3|s_debounceCnt\(17) & !\debouncer3|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(17),
	datad => VCC,
	cin => \debouncer3|Add0~33\,
	combout => \debouncer3|Add0~34_combout\,
	cout => \debouncer3|Add0~35\);

-- Location: LCCOMB_X80_Y37_N26
\debouncer3|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~7_combout\ = (\debouncer3|Add0~34_combout\ & \debouncer3|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|Add0~34_combout\,
	datad => \debouncer3|s_debounceCnt[8]~4_combout\,
	combout => \debouncer3|s_debounceCnt~7_combout\);

-- Location: FF_X80_Y37_N27
\debouncer3|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~7_combout\,
	ena => \debouncer3|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(17));

-- Location: LCCOMB_X80_Y37_N14
\debouncer3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~36_combout\ = (\debouncer3|s_debounceCnt\(18) & ((GND) # (!\debouncer3|Add0~35\))) # (!\debouncer3|s_debounceCnt\(18) & (\debouncer3|Add0~35\ $ (GND)))
-- \debouncer3|Add0~37\ = CARRY((\debouncer3|s_debounceCnt\(18)) # (!\debouncer3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(18),
	datad => VCC,
	cin => \debouncer3|Add0~35\,
	combout => \debouncer3|Add0~36_combout\,
	cout => \debouncer3|Add0~37\);

-- Location: LCCOMB_X79_Y37_N14
\debouncer3|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[18]~18_combout\ = (\debouncer3|s_debounceCnt[8]~3_combout\ & (\debouncer3|s_debounceCnt[8]~0_combout\ & ((\debouncer3|Add0~36_combout\) # (!\debouncer3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt[8]~3_combout\,
	datab => \debouncer3|s_previousIn~q\,
	datac => \debouncer3|Add0~36_combout\,
	datad => \debouncer3|s_debounceCnt[8]~0_combout\,
	combout => \debouncer3|s_debounceCnt[18]~18_combout\);

-- Location: FF_X79_Y37_N15
\debouncer3|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(18));

-- Location: LCCOMB_X80_Y37_N16
\debouncer3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~38_combout\ = (\debouncer3|s_debounceCnt\(19) & (\debouncer3|Add0~37\ & VCC)) # (!\debouncer3|s_debounceCnt\(19) & (!\debouncer3|Add0~37\))
-- \debouncer3|Add0~39\ = CARRY((!\debouncer3|s_debounceCnt\(19) & !\debouncer3|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(19),
	datad => VCC,
	cin => \debouncer3|Add0~37\,
	combout => \debouncer3|Add0~38_combout\,
	cout => \debouncer3|Add0~39\);

-- Location: LCCOMB_X79_Y37_N16
\debouncer3|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[19]~19_combout\ = (\debouncer3|s_debounceCnt[8]~3_combout\ & (\debouncer3|s_debounceCnt[8]~0_combout\ & ((\debouncer3|Add0~38_combout\) # (!\debouncer3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt[8]~3_combout\,
	datab => \debouncer3|Add0~38_combout\,
	datac => \debouncer3|s_previousIn~q\,
	datad => \debouncer3|s_debounceCnt[8]~0_combout\,
	combout => \debouncer3|s_debounceCnt[19]~19_combout\);

-- Location: FF_X79_Y37_N17
\debouncer3|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(19));

-- Location: LCCOMB_X79_Y37_N22
\debouncer3|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_pulsedOut~3_combout\ = (!\debouncer3|s_debounceCnt\(11) & (!\debouncer3|s_debounceCnt\(14) & (!\debouncer3|s_debounceCnt\(18) & !\debouncer3|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(11),
	datab => \debouncer3|s_debounceCnt\(14),
	datac => \debouncer3|s_debounceCnt\(18),
	datad => \debouncer3|s_debounceCnt\(19),
	combout => \debouncer3|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X79_Y37_N8
\debouncer3|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_pulsedOut~0_combout\ = (!\debouncer3|s_debounceCnt\(6) & (!\debouncer3|s_debounceCnt\(15) & (!\debouncer3|s_debounceCnt\(16) & !\debouncer3|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(6),
	datab => \debouncer3|s_debounceCnt\(15),
	datac => \debouncer3|s_debounceCnt\(16),
	datad => \debouncer3|s_debounceCnt\(17),
	combout => \debouncer3|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X81_Y37_N6
\debouncer3|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_pulsedOut~2_combout\ = (!\debouncer3|s_debounceCnt\(9) & (!\debouncer3|s_debounceCnt\(7) & (!\debouncer3|s_debounceCnt\(8) & !\debouncer3|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(9),
	datab => \debouncer3|s_debounceCnt\(7),
	datac => \debouncer3|s_debounceCnt\(8),
	datad => \debouncer3|s_debounceCnt\(10),
	combout => \debouncer3|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X80_Y37_N18
\debouncer3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~40_combout\ = (\debouncer3|s_debounceCnt\(20) & ((GND) # (!\debouncer3|Add0~39\))) # (!\debouncer3|s_debounceCnt\(20) & (\debouncer3|Add0~39\ $ (GND)))
-- \debouncer3|Add0~41\ = CARRY((\debouncer3|s_debounceCnt\(20)) # (!\debouncer3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(20),
	datad => VCC,
	cin => \debouncer3|Add0~39\,
	combout => \debouncer3|Add0~40_combout\,
	cout => \debouncer3|Add0~41\);

-- Location: LCCOMB_X80_Y37_N20
\debouncer3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~42_combout\ = (\debouncer3|s_debounceCnt\(21) & (\debouncer3|Add0~41\ & VCC)) # (!\debouncer3|s_debounceCnt\(21) & (!\debouncer3|Add0~41\))
-- \debouncer3|Add0~43\ = CARRY((!\debouncer3|s_debounceCnt\(21) & !\debouncer3|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(21),
	datad => VCC,
	cin => \debouncer3|Add0~41\,
	combout => \debouncer3|Add0~42_combout\,
	cout => \debouncer3|Add0~43\);

-- Location: LCCOMB_X80_Y37_N30
\debouncer3|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[21]~11_combout\ = (\debouncer3|s_debounceCnt[8]~3_combout\ & (\debouncer3|Add0~42_combout\ & \debouncer3|s_debounceCnt[8]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt[8]~3_combout\,
	datab => \debouncer3|Add0~42_combout\,
	datad => \debouncer3|s_debounceCnt[8]~4_combout\,
	combout => \debouncer3|s_debounceCnt[21]~11_combout\);

-- Location: FF_X80_Y37_N31
\debouncer3|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(21));

-- Location: LCCOMB_X79_Y37_N24
\debouncer3|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_pulsedOut~1_combout\ = (!\debouncer3|s_debounceCnt\(12) & (!\debouncer3|s_debounceCnt\(13) & (!\debouncer3|s_debounceCnt\(21) & !\debouncer3|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(12),
	datab => \debouncer3|s_debounceCnt\(13),
	datac => \debouncer3|s_debounceCnt\(21),
	datad => \debouncer3|s_debounceCnt\(20),
	combout => \debouncer3|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X79_Y37_N0
\debouncer3|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_pulsedOut~4_combout\ = (\debouncer3|s_pulsedOut~3_combout\ & (\debouncer3|s_pulsedOut~0_combout\ & (\debouncer3|s_pulsedOut~2_combout\ & \debouncer3|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_pulsedOut~3_combout\,
	datab => \debouncer3|s_pulsedOut~0_combout\,
	datac => \debouncer3|s_pulsedOut~2_combout\,
	datad => \debouncer3|s_pulsedOut~1_combout\,
	combout => \debouncer3|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X79_Y37_N6
\debouncer3|s_debounceCnt[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[8]~2_combout\ = (\debouncer3|s_debounceCnt\(5)) # ((\debouncer3|s_debounceCnt\(0)) # ((!\debouncer3|s_pulsedOut~4_combout\) # (!\debouncer3|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(5),
	datab => \debouncer3|s_debounceCnt\(0),
	datac => \debouncer3|s_pulsedOut~5_combout\,
	datad => \debouncer3|s_pulsedOut~4_combout\,
	combout => \debouncer3|s_debounceCnt[8]~2_combout\);

-- Location: LCCOMB_X79_Y37_N10
\debouncer3|s_debounceCnt[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[8]~3_combout\ = ((\debouncer3|s_debounceCnt\(22)) # ((\debouncer3|s_debounceCnt[8]~2_combout\) # (!\debouncer3|s_previousIn~q\))) # (!\debouncer3|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_dirtyIn~q\,
	datab => \debouncer3|s_debounceCnt\(22),
	datac => \debouncer3|s_previousIn~q\,
	datad => \debouncer3|s_debounceCnt[8]~2_combout\,
	combout => \debouncer3|s_debounceCnt[8]~3_combout\);

-- Location: LCCOMB_X81_Y37_N8
\debouncer3|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[20]~10_combout\ = (\debouncer3|s_debounceCnt[8]~3_combout\ & (\debouncer3|s_debounceCnt[8]~4_combout\ & \debouncer3|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt[8]~3_combout\,
	datab => \debouncer3|s_debounceCnt[8]~4_combout\,
	datad => \debouncer3|Add0~40_combout\,
	combout => \debouncer3|s_debounceCnt[20]~10_combout\);

-- Location: FF_X81_Y37_N9
\debouncer3|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(20));

-- Location: LCCOMB_X82_Y37_N28
\debouncer3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|LessThan0~4_combout\ = (\debouncer3|s_debounceCnt\(12)) # ((\debouncer3|s_debounceCnt\(13)) # ((\debouncer3|s_debounceCnt\(10) & \debouncer3|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(10),
	datab => \debouncer3|s_debounceCnt\(11),
	datac => \debouncer3|s_debounceCnt\(12),
	datad => \debouncer3|s_debounceCnt\(13),
	combout => \debouncer3|LessThan0~4_combout\);

-- Location: LCCOMB_X82_Y37_N2
\debouncer3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|LessThan0~5_combout\ = (\debouncer3|s_debounceCnt\(15)) # ((\debouncer3|s_debounceCnt\(16)) # ((\debouncer3|s_debounceCnt\(14) & \debouncer3|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(15),
	datab => \debouncer3|s_debounceCnt\(14),
	datac => \debouncer3|s_debounceCnt\(16),
	datad => \debouncer3|LessThan0~4_combout\,
	combout => \debouncer3|LessThan0~5_combout\);

-- Location: LCCOMB_X81_Y37_N22
\debouncer3|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|LessThan0~6_combout\ = (\debouncer3|s_debounceCnt\(19) & (\debouncer3|s_debounceCnt\(18) & ((\debouncer3|s_debounceCnt\(17)) # (\debouncer3|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(17),
	datab => \debouncer3|s_debounceCnt\(19),
	datac => \debouncer3|s_debounceCnt\(18),
	datad => \debouncer3|LessThan0~5_combout\,
	combout => \debouncer3|LessThan0~6_combout\);

-- Location: LCCOMB_X81_Y37_N24
\debouncer3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|LessThan0~1_combout\ = (\debouncer3|s_debounceCnt\(9) & \debouncer3|s_debounceCnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer3|s_debounceCnt\(9),
	datad => \debouncer3|s_debounceCnt\(11),
	combout => \debouncer3|LessThan0~1_combout\);

-- Location: LCCOMB_X79_Y37_N20
\debouncer3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|LessThan0~0_combout\ = (\debouncer3|s_debounceCnt\(18) & (\debouncer3|s_debounceCnt\(19) & (\debouncer3|s_debounceCnt\(14) & \debouncer3|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(18),
	datab => \debouncer3|s_debounceCnt\(19),
	datac => \debouncer3|s_debounceCnt\(14),
	datad => \debouncer3|s_debounceCnt\(8),
	combout => \debouncer3|LessThan0~0_combout\);

-- Location: LCCOMB_X81_Y37_N2
\debouncer3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|LessThan0~2_combout\ = (\debouncer3|s_debounceCnt\(6) & ((\debouncer3|s_debounceCnt\(0)) # ((\debouncer3|s_debounceCnt\(5)) # (!\debouncer3|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(6),
	datab => \debouncer3|s_debounceCnt\(0),
	datac => \debouncer3|s_debounceCnt\(5),
	datad => \debouncer3|s_pulsedOut~5_combout\,
	combout => \debouncer3|LessThan0~2_combout\);

-- Location: LCCOMB_X81_Y37_N20
\debouncer3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|LessThan0~3_combout\ = (\debouncer3|LessThan0~1_combout\ & (\debouncer3|LessThan0~0_combout\ & ((\debouncer3|s_debounceCnt\(7)) # (\debouncer3|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(7),
	datab => \debouncer3|LessThan0~1_combout\,
	datac => \debouncer3|LessThan0~0_combout\,
	datad => \debouncer3|LessThan0~2_combout\,
	combout => \debouncer3|LessThan0~3_combout\);

-- Location: LCCOMB_X81_Y37_N28
\debouncer3|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|LessThan0~7_combout\ = (\debouncer3|s_debounceCnt\(20)) # ((\debouncer3|s_debounceCnt\(21)) # ((\debouncer3|LessThan0~6_combout\) # (\debouncer3|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(20),
	datab => \debouncer3|s_debounceCnt\(21),
	datac => \debouncer3|LessThan0~6_combout\,
	datad => \debouncer3|LessThan0~3_combout\,
	combout => \debouncer3|LessThan0~7_combout\);

-- Location: LCCOMB_X81_Y37_N18
\debouncer3|s_debounceCnt[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[8]~0_combout\ = (\debouncer3|s_dirtyIn~q\ & ((!\debouncer3|LessThan0~7_combout\) # (!\debouncer3|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(22),
	datac => \debouncer3|s_dirtyIn~q\,
	datad => \debouncer3|LessThan0~7_combout\,
	combout => \debouncer3|s_debounceCnt[8]~0_combout\);

-- Location: LCCOMB_X81_Y37_N14
\debouncer3|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[22]~25_combout\ = (\debouncer3|s_dirtyIn~q\ & ((\debouncer3|s_debounceCnt\(22) & ((!\debouncer3|LessThan0~7_combout\))) # (!\debouncer3|s_debounceCnt\(22) & (\debouncer3|s_debounceCnt[8]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_dirtyIn~q\,
	datab => \debouncer3|s_debounceCnt[8]~2_combout\,
	datac => \debouncer3|s_debounceCnt\(22),
	datad => \debouncer3|LessThan0~7_combout\,
	combout => \debouncer3|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X80_Y37_N22
\debouncer3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~44_combout\ = \debouncer3|Add0~43\ $ (\debouncer3|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debouncer3|s_debounceCnt\(22),
	cin => \debouncer3|Add0~43\,
	combout => \debouncer3|Add0~44_combout\);

-- Location: LCCOMB_X81_Y37_N30
\debouncer3|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[22]~26_combout\ = (\debouncer3|s_previousIn~q\ & (((\debouncer3|s_debounceCnt[22]~25_combout\ & \debouncer3|Add0~44_combout\)))) # (!\debouncer3|s_previousIn~q\ & (\debouncer3|s_debounceCnt[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_previousIn~q\,
	datab => \debouncer3|s_debounceCnt[8]~0_combout\,
	datac => \debouncer3|s_debounceCnt[22]~25_combout\,
	datad => \debouncer3|Add0~44_combout\,
	combout => \debouncer3|s_debounceCnt[22]~26_combout\);

-- Location: FF_X81_Y37_N31
\debouncer3|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(22));

-- Location: LCCOMB_X81_Y37_N16
\debouncer3|s_debounceCnt[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[8]~4_combout\ = (\debouncer3|s_previousIn~q\ & (\debouncer3|s_dirtyIn~q\ & ((!\debouncer3|LessThan0~7_combout\) # (!\debouncer3|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_previousIn~q\,
	datab => \debouncer3|s_debounceCnt\(22),
	datac => \debouncer3|s_dirtyIn~q\,
	datad => \debouncer3|LessThan0~7_combout\,
	combout => \debouncer3|s_debounceCnt[8]~4_combout\);

-- Location: LCCOMB_X81_Y37_N0
\debouncer3|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~24_combout\ = (\debouncer3|Add0~0_combout\ & \debouncer3|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|Add0~0_combout\,
	datad => \debouncer3|s_debounceCnt[8]~4_combout\,
	combout => \debouncer3|s_debounceCnt~24_combout\);

-- Location: FF_X81_Y37_N1
\debouncer3|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~24_combout\,
	ena => \debouncer3|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(0));

-- Location: LCCOMB_X80_Y38_N12
\debouncer3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~2_combout\ = (\debouncer3|s_debounceCnt\(1) & (\debouncer3|Add0~1\ & VCC)) # (!\debouncer3|s_debounceCnt\(1) & (!\debouncer3|Add0~1\))
-- \debouncer3|Add0~3\ = CARRY((!\debouncer3|s_debounceCnt\(1) & !\debouncer3|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(1),
	datad => VCC,
	cin => \debouncer3|Add0~1\,
	combout => \debouncer3|Add0~2_combout\,
	cout => \debouncer3|Add0~3\);

-- Location: LCCOMB_X80_Y38_N4
\debouncer3|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~20_combout\ = (\debouncer3|Add0~2_combout\ & \debouncer3|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|Add0~2_combout\,
	datad => \debouncer3|s_debounceCnt[8]~4_combout\,
	combout => \debouncer3|s_debounceCnt~20_combout\);

-- Location: FF_X80_Y38_N5
\debouncer3|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~20_combout\,
	ena => \debouncer3|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(1));

-- Location: LCCOMB_X80_Y38_N14
\debouncer3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~4_combout\ = (\debouncer3|s_debounceCnt\(2) & ((GND) # (!\debouncer3|Add0~3\))) # (!\debouncer3|s_debounceCnt\(2) & (\debouncer3|Add0~3\ $ (GND)))
-- \debouncer3|Add0~5\ = CARRY((\debouncer3|s_debounceCnt\(2)) # (!\debouncer3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(2),
	datad => VCC,
	cin => \debouncer3|Add0~3\,
	combout => \debouncer3|Add0~4_combout\,
	cout => \debouncer3|Add0~5\);

-- Location: LCCOMB_X80_Y38_N6
\debouncer3|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~21_combout\ = (\debouncer3|Add0~4_combout\ & \debouncer3|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer3|Add0~4_combout\,
	datad => \debouncer3|s_debounceCnt[8]~4_combout\,
	combout => \debouncer3|s_debounceCnt~21_combout\);

-- Location: FF_X80_Y38_N7
\debouncer3|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~21_combout\,
	ena => \debouncer3|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(2));

-- Location: LCCOMB_X80_Y38_N16
\debouncer3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~6_combout\ = (\debouncer3|s_debounceCnt\(3) & (\debouncer3|Add0~5\ & VCC)) # (!\debouncer3|s_debounceCnt\(3) & (!\debouncer3|Add0~5\))
-- \debouncer3|Add0~7\ = CARRY((!\debouncer3|s_debounceCnt\(3) & !\debouncer3|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(3),
	datad => VCC,
	cin => \debouncer3|Add0~5\,
	combout => \debouncer3|Add0~6_combout\,
	cout => \debouncer3|Add0~7\);

-- Location: LCCOMB_X80_Y38_N8
\debouncer3|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~22_combout\ = (\debouncer3|Add0~6_combout\ & \debouncer3|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|Add0~6_combout\,
	datad => \debouncer3|s_debounceCnt[8]~4_combout\,
	combout => \debouncer3|s_debounceCnt~22_combout\);

-- Location: FF_X80_Y38_N9
\debouncer3|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~22_combout\,
	ena => \debouncer3|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(3));

-- Location: LCCOMB_X80_Y38_N18
\debouncer3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~8_combout\ = (\debouncer3|s_debounceCnt\(4) & ((GND) # (!\debouncer3|Add0~7\))) # (!\debouncer3|s_debounceCnt\(4) & (\debouncer3|Add0~7\ $ (GND)))
-- \debouncer3|Add0~9\ = CARRY((\debouncer3|s_debounceCnt\(4)) # (!\debouncer3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(4),
	datad => VCC,
	cin => \debouncer3|Add0~7\,
	combout => \debouncer3|Add0~8_combout\,
	cout => \debouncer3|Add0~9\);

-- Location: LCCOMB_X80_Y38_N2
\debouncer3|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~23_combout\ = (\debouncer3|Add0~8_combout\ & \debouncer3|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|Add0~8_combout\,
	datad => \debouncer3|s_debounceCnt[8]~4_combout\,
	combout => \debouncer3|s_debounceCnt~23_combout\);

-- Location: FF_X80_Y38_N3
\debouncer3|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~23_combout\,
	ena => \debouncer3|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(4));

-- Location: LCCOMB_X79_Y37_N2
\debouncer3|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~27_combout\ = (\debouncer3|Add0~10_combout\ & \debouncer3|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer3|Add0~10_combout\,
	datad => \debouncer3|s_debounceCnt[8]~4_combout\,
	combout => \debouncer3|s_debounceCnt~27_combout\);

-- Location: FF_X79_Y37_N3
\debouncer3|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~27_combout\,
	ena => \debouncer3|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(5));

-- Location: LCCOMB_X79_Y37_N28
\debouncer3|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_pulsedOut~6_combout\ = (\debouncer3|s_dirtyIn~q\ & (\debouncer3|s_previousIn~q\ & (\debouncer3|s_debounceCnt\(0) & !\debouncer3|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_dirtyIn~q\,
	datab => \debouncer3|s_previousIn~q\,
	datac => \debouncer3|s_debounceCnt\(0),
	datad => \debouncer3|s_debounceCnt\(22),
	combout => \debouncer3|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X52_Y34_N2
\debouncer3|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_pulsedOut~7_combout\ = (!\debouncer3|s_debounceCnt\(5) & (\debouncer3|s_pulsedOut~5_combout\ & (\debouncer3|s_pulsedOut~6_combout\ & \debouncer3|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(5),
	datab => \debouncer3|s_pulsedOut~5_combout\,
	datac => \debouncer3|s_pulsedOut~6_combout\,
	datad => \debouncer3|s_pulsedOut~4_combout\,
	combout => \debouncer3|s_pulsedOut~7_combout\);

-- Location: FF_X52_Y34_N3
\debouncer3|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \debouncer3|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_pulsedOut~q\);

-- Location: LCCOMB_X53_Y34_N0
\FSM|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|Selector4~0_combout\ = ((!\debouncer2|s_pulsedOut~q\ & (!\debouncer1|s_pulsedOut~q\ & !\debouncer3|s_pulsedOut~q\))) # (!\FSM|s_currentState.PG~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_pulsedOut~q\,
	datab => \FSM|s_currentState.PG~q\,
	datac => \debouncer1|s_pulsedOut~q\,
	datad => \debouncer3|s_pulsedOut~q\,
	combout => \FSM|Selector4~0_combout\);

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

-- Location: LCCOMB_X60_Y40_N18
\debouncer0|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \debouncer0|s_dirtyIn~0_combout\);

-- Location: FF_X60_Y40_N19
\debouncer0|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_dirtyIn~q\);

-- Location: FF_X61_Y43_N23
\debouncer0|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debouncer0|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_previousIn~q\);

-- Location: LCCOMB_X60_Y44_N10
\debouncer0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~0_combout\ = \debouncer0|s_debounceCnt\(0) $ (VCC)
-- \debouncer0|Add0~1\ = CARRY(\debouncer0|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(0),
	datad => VCC,
	combout => \debouncer0|Add0~0_combout\,
	cout => \debouncer0|Add0~1\);

-- Location: LCCOMB_X60_Y44_N18
\debouncer0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~8_combout\ = (\debouncer0|s_debounceCnt\(4) & ((GND) # (!\debouncer0|Add0~7\))) # (!\debouncer0|s_debounceCnt\(4) & (\debouncer0|Add0~7\ $ (GND)))
-- \debouncer0|Add0~9\ = CARRY((\debouncer0|s_debounceCnt\(4)) # (!\debouncer0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(4),
	datad => VCC,
	cin => \debouncer0|Add0~7\,
	combout => \debouncer0|Add0~8_combout\,
	cout => \debouncer0|Add0~9\);

-- Location: LCCOMB_X60_Y44_N20
\debouncer0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~10_combout\ = (\debouncer0|s_debounceCnt\(5) & (\debouncer0|Add0~9\ & VCC)) # (!\debouncer0|s_debounceCnt\(5) & (!\debouncer0|Add0~9\))
-- \debouncer0|Add0~11\ = CARRY((!\debouncer0|s_debounceCnt\(5) & !\debouncer0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(5),
	datad => VCC,
	cin => \debouncer0|Add0~9\,
	combout => \debouncer0|Add0~10_combout\,
	cout => \debouncer0|Add0~11\);

-- Location: LCCOMB_X61_Y43_N24
\debouncer0|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~27_combout\ = (\debouncer0|s_previousIn~q\ & (\debouncer0|s_debounceCnt[20]~0_combout\ & \debouncer0|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_previousIn~q\,
	datac => \debouncer0|s_debounceCnt[20]~0_combout\,
	datad => \debouncer0|Add0~10_combout\,
	combout => \debouncer0|s_debounceCnt~27_combout\);

-- Location: FF_X61_Y43_N25
\debouncer0|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~27_combout\,
	ena => \debouncer0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(5));

-- Location: LCCOMB_X60_Y44_N22
\debouncer0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~12_combout\ = (\debouncer0|s_debounceCnt\(6) & ((GND) # (!\debouncer0|Add0~11\))) # (!\debouncer0|s_debounceCnt\(6) & (\debouncer0|Add0~11\ $ (GND)))
-- \debouncer0|Add0~13\ = CARRY((\debouncer0|s_debounceCnt\(6)) # (!\debouncer0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(6),
	datad => VCC,
	cin => \debouncer0|Add0~11\,
	combout => \debouncer0|Add0~12_combout\,
	cout => \debouncer0|Add0~13\);

-- Location: LCCOMB_X61_Y43_N20
\debouncer0|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~1_combout\ = (\debouncer0|s_debounceCnt[20]~0_combout\ & ((\debouncer0|Add0~12_combout\) # (!\debouncer0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_previousIn~q\,
	datac => \debouncer0|s_debounceCnt[20]~0_combout\,
	datad => \debouncer0|Add0~12_combout\,
	combout => \debouncer0|s_debounceCnt~1_combout\);

-- Location: FF_X61_Y43_N21
\debouncer0|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~1_combout\,
	ena => \debouncer0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(6));

-- Location: LCCOMB_X60_Y44_N24
\debouncer0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~14_combout\ = (\debouncer0|s_debounceCnt\(7) & (\debouncer0|Add0~13\ & VCC)) # (!\debouncer0|s_debounceCnt\(7) & (!\debouncer0|Add0~13\))
-- \debouncer0|Add0~15\ = CARRY((!\debouncer0|s_debounceCnt\(7) & !\debouncer0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(7),
	datad => VCC,
	cin => \debouncer0|Add0~13\,
	combout => \debouncer0|Add0~14_combout\,
	cout => \debouncer0|Add0~15\);

-- Location: LCCOMB_X61_Y43_N16
\debouncer0|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~11_combout\ = (\debouncer0|s_previousIn~q\ & (\debouncer0|s_debounceCnt[20]~0_combout\ & \debouncer0|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_previousIn~q\,
	datac => \debouncer0|s_debounceCnt[20]~0_combout\,
	datad => \debouncer0|Add0~14_combout\,
	combout => \debouncer0|s_debounceCnt~11_combout\);

-- Location: FF_X61_Y43_N17
\debouncer0|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~11_combout\,
	ena => \debouncer0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(7));

-- Location: LCCOMB_X60_Y44_N26
\debouncer0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~16_combout\ = (\debouncer0|s_debounceCnt\(8) & ((GND) # (!\debouncer0|Add0~15\))) # (!\debouncer0|s_debounceCnt\(8) & (\debouncer0|Add0~15\ $ (GND)))
-- \debouncer0|Add0~17\ = CARRY((\debouncer0|s_debounceCnt\(8)) # (!\debouncer0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(8),
	datad => VCC,
	cin => \debouncer0|Add0~15\,
	combout => \debouncer0|Add0~16_combout\,
	cout => \debouncer0|Add0~17\);

-- Location: LCCOMB_X61_Y43_N6
\debouncer0|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~12_combout\ = (\debouncer0|s_debounceCnt[20]~0_combout\ & ((\debouncer0|Add0~16_combout\) # (!\debouncer0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_previousIn~q\,
	datac => \debouncer0|s_debounceCnt[20]~0_combout\,
	datad => \debouncer0|Add0~16_combout\,
	combout => \debouncer0|s_debounceCnt~12_combout\);

-- Location: FF_X61_Y43_N7
\debouncer0|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~12_combout\,
	ena => \debouncer0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(8));

-- Location: LCCOMB_X60_Y44_N28
\debouncer0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~18_combout\ = (\debouncer0|s_debounceCnt\(9) & (\debouncer0|Add0~17\ & VCC)) # (!\debouncer0|s_debounceCnt\(9) & (!\debouncer0|Add0~17\))
-- \debouncer0|Add0~19\ = CARRY((!\debouncer0|s_debounceCnt\(9) & !\debouncer0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(9),
	datad => VCC,
	cin => \debouncer0|Add0~17\,
	combout => \debouncer0|Add0~18_combout\,
	cout => \debouncer0|Add0~19\);

-- Location: LCCOMB_X61_Y43_N4
\debouncer0|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~13_combout\ = (\debouncer0|s_debounceCnt[20]~0_combout\ & ((\debouncer0|Add0~18_combout\) # (!\debouncer0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_previousIn~q\,
	datab => \debouncer0|Add0~18_combout\,
	datac => \debouncer0|s_debounceCnt[20]~0_combout\,
	combout => \debouncer0|s_debounceCnt~13_combout\);

-- Location: FF_X61_Y43_N5
\debouncer0|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~13_combout\,
	ena => \debouncer0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(9));

-- Location: LCCOMB_X60_Y44_N30
\debouncer0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~20_combout\ = (\debouncer0|s_debounceCnt\(10) & ((GND) # (!\debouncer0|Add0~19\))) # (!\debouncer0|s_debounceCnt\(10) & (\debouncer0|Add0~19\ $ (GND)))
-- \debouncer0|Add0~21\ = CARRY((\debouncer0|s_debounceCnt\(10)) # (!\debouncer0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(10),
	datad => VCC,
	cin => \debouncer0|Add0~19\,
	combout => \debouncer0|Add0~20_combout\,
	cout => \debouncer0|Add0~21\);

-- Location: LCCOMB_X59_Y43_N4
\debouncer0|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~14_combout\ = (\debouncer0|s_previousIn~q\ & (\debouncer0|Add0~20_combout\ & \debouncer0|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_previousIn~q\,
	datac => \debouncer0|Add0~20_combout\,
	datad => \debouncer0|s_debounceCnt[20]~0_combout\,
	combout => \debouncer0|s_debounceCnt~14_combout\);

-- Location: FF_X59_Y43_N5
\debouncer0|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~14_combout\,
	ena => \debouncer0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(10));

-- Location: LCCOMB_X60_Y43_N0
\debouncer0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~22_combout\ = (\debouncer0|s_debounceCnt\(11) & (\debouncer0|Add0~21\ & VCC)) # (!\debouncer0|s_debounceCnt\(11) & (!\debouncer0|Add0~21\))
-- \debouncer0|Add0~23\ = CARRY((!\debouncer0|s_debounceCnt\(11) & !\debouncer0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(11),
	datad => VCC,
	cin => \debouncer0|Add0~21\,
	combout => \debouncer0|Add0~22_combout\,
	cout => \debouncer0|Add0~23\);

-- Location: LCCOMB_X59_Y43_N2
\debouncer0|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~15_combout\ = (\debouncer0|s_debounceCnt[20]~0_combout\ & ((\debouncer0|Add0~22_combout\) # (!\debouncer0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_previousIn~q\,
	datac => \debouncer0|Add0~22_combout\,
	datad => \debouncer0|s_debounceCnt[20]~0_combout\,
	combout => \debouncer0|s_debounceCnt~15_combout\);

-- Location: FF_X59_Y43_N3
\debouncer0|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~15_combout\,
	ena => \debouncer0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(11));

-- Location: LCCOMB_X60_Y43_N2
\debouncer0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~24_combout\ = (\debouncer0|s_debounceCnt\(12) & ((GND) # (!\debouncer0|Add0~23\))) # (!\debouncer0|s_debounceCnt\(12) & (\debouncer0|Add0~23\ $ (GND)))
-- \debouncer0|Add0~25\ = CARRY((\debouncer0|s_debounceCnt\(12)) # (!\debouncer0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(12),
	datad => VCC,
	cin => \debouncer0|Add0~23\,
	combout => \debouncer0|Add0~24_combout\,
	cout => \debouncer0|Add0~25\);

-- Location: LCCOMB_X59_Y43_N16
\debouncer0|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~7_combout\ = (\debouncer0|s_debounceCnt[20]~0_combout\ & (\debouncer0|s_previousIn~q\ & \debouncer0|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt[20]~0_combout\,
	datab => \debouncer0|s_previousIn~q\,
	datad => \debouncer0|Add0~24_combout\,
	combout => \debouncer0|s_debounceCnt~7_combout\);

-- Location: FF_X59_Y43_N17
\debouncer0|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~7_combout\,
	ena => \debouncer0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(12));

-- Location: LCCOMB_X60_Y43_N4
\debouncer0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~26_combout\ = (\debouncer0|s_debounceCnt\(13) & (\debouncer0|Add0~25\ & VCC)) # (!\debouncer0|s_debounceCnt\(13) & (!\debouncer0|Add0~25\))
-- \debouncer0|Add0~27\ = CARRY((!\debouncer0|s_debounceCnt\(13) & !\debouncer0|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(13),
	datad => VCC,
	cin => \debouncer0|Add0~25\,
	combout => \debouncer0|Add0~26_combout\,
	cout => \debouncer0|Add0~27\);

-- Location: LCCOMB_X59_Y43_N26
\debouncer0|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~8_combout\ = (\debouncer0|s_debounceCnt[20]~0_combout\ & (\debouncer0|s_previousIn~q\ & \debouncer0|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt[20]~0_combout\,
	datab => \debouncer0|s_previousIn~q\,
	datad => \debouncer0|Add0~26_combout\,
	combout => \debouncer0|s_debounceCnt~8_combout\);

-- Location: FF_X59_Y43_N27
\debouncer0|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~8_combout\,
	ena => \debouncer0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(13));

-- Location: LCCOMB_X60_Y43_N6
\debouncer0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~28_combout\ = (\debouncer0|s_debounceCnt\(14) & ((GND) # (!\debouncer0|Add0~27\))) # (!\debouncer0|s_debounceCnt\(14) & (\debouncer0|Add0~27\ $ (GND)))
-- \debouncer0|Add0~29\ = CARRY((\debouncer0|s_debounceCnt\(14)) # (!\debouncer0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(14),
	datad => VCC,
	cin => \debouncer0|Add0~27\,
	combout => \debouncer0|Add0~28_combout\,
	cout => \debouncer0|Add0~29\);

-- Location: LCCOMB_X59_Y43_N0
\debouncer0|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~16_combout\ = (\debouncer0|s_debounceCnt[20]~0_combout\ & ((\debouncer0|Add0~28_combout\) # (!\debouncer0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt[20]~0_combout\,
	datab => \debouncer0|s_previousIn~q\,
	datad => \debouncer0|Add0~28_combout\,
	combout => \debouncer0|s_debounceCnt~16_combout\);

-- Location: FF_X59_Y43_N1
\debouncer0|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~16_combout\,
	ena => \debouncer0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(14));

-- Location: LCCOMB_X60_Y43_N8
\debouncer0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~30_combout\ = (\debouncer0|s_debounceCnt\(15) & (\debouncer0|Add0~29\ & VCC)) # (!\debouncer0|s_debounceCnt\(15) & (!\debouncer0|Add0~29\))
-- \debouncer0|Add0~31\ = CARRY((!\debouncer0|s_debounceCnt\(15) & !\debouncer0|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(15),
	datad => VCC,
	cin => \debouncer0|Add0~29\,
	combout => \debouncer0|Add0~30_combout\,
	cout => \debouncer0|Add0~31\);

-- Location: LCCOMB_X61_Y43_N26
\debouncer0|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~4_combout\ = (\debouncer0|s_previousIn~q\ & (\debouncer0|Add0~30_combout\ & \debouncer0|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_previousIn~q\,
	datab => \debouncer0|Add0~30_combout\,
	datac => \debouncer0|s_debounceCnt[20]~0_combout\,
	combout => \debouncer0|s_debounceCnt~4_combout\);

-- Location: FF_X61_Y43_N27
\debouncer0|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~4_combout\,
	ena => \debouncer0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(15));

-- Location: LCCOMB_X60_Y43_N10
\debouncer0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~32_combout\ = (\debouncer0|s_debounceCnt\(16) & ((GND) # (!\debouncer0|Add0~31\))) # (!\debouncer0|s_debounceCnt\(16) & (\debouncer0|Add0~31\ $ (GND)))
-- \debouncer0|Add0~33\ = CARRY((\debouncer0|s_debounceCnt\(16)) # (!\debouncer0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(16),
	datad => VCC,
	cin => \debouncer0|Add0~31\,
	combout => \debouncer0|Add0~32_combout\,
	cout => \debouncer0|Add0~33\);

-- Location: LCCOMB_X61_Y43_N12
\debouncer0|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~5_combout\ = (\debouncer0|s_previousIn~q\ & (\debouncer0|s_debounceCnt[20]~0_combout\ & \debouncer0|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_previousIn~q\,
	datac => \debouncer0|s_debounceCnt[20]~0_combout\,
	datad => \debouncer0|Add0~32_combout\,
	combout => \debouncer0|s_debounceCnt~5_combout\);

-- Location: FF_X61_Y43_N13
\debouncer0|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~5_combout\,
	ena => \debouncer0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(16));

-- Location: LCCOMB_X60_Y43_N12
\debouncer0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~34_combout\ = (\debouncer0|s_debounceCnt\(17) & (\debouncer0|Add0~33\ & VCC)) # (!\debouncer0|s_debounceCnt\(17) & (!\debouncer0|Add0~33\))
-- \debouncer0|Add0~35\ = CARRY((!\debouncer0|s_debounceCnt\(17) & !\debouncer0|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(17),
	datad => VCC,
	cin => \debouncer0|Add0~33\,
	combout => \debouncer0|Add0~34_combout\,
	cout => \debouncer0|Add0~35\);

-- Location: LCCOMB_X61_Y43_N30
\debouncer0|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~6_combout\ = (\debouncer0|s_previousIn~q\ & (\debouncer0|s_debounceCnt[20]~0_combout\ & \debouncer0|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_previousIn~q\,
	datac => \debouncer0|s_debounceCnt[20]~0_combout\,
	datad => \debouncer0|Add0~34_combout\,
	combout => \debouncer0|s_debounceCnt~6_combout\);

-- Location: FF_X61_Y43_N31
\debouncer0|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~6_combout\,
	ena => \debouncer0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(17));

-- Location: LCCOMB_X60_Y43_N14
\debouncer0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~36_combout\ = (\debouncer0|s_debounceCnt\(18) & ((GND) # (!\debouncer0|Add0~35\))) # (!\debouncer0|s_debounceCnt\(18) & (\debouncer0|Add0~35\ $ (GND)))
-- \debouncer0|Add0~37\ = CARRY((\debouncer0|s_debounceCnt\(18)) # (!\debouncer0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(18),
	datad => VCC,
	cin => \debouncer0|Add0~35\,
	combout => \debouncer0|Add0~36_combout\,
	cout => \debouncer0|Add0~37\);

-- Location: LCCOMB_X60_Y43_N24
\debouncer0|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[18]~17_combout\ = (\debouncer0|s_debounceCnt[20]~0_combout\ & (\debouncer0|s_debounceCnt[20]~3_combout\ & ((\debouncer0|Add0~36_combout\) # (!\debouncer0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_previousIn~q\,
	datab => \debouncer0|s_debounceCnt[20]~0_combout\,
	datac => \debouncer0|Add0~36_combout\,
	datad => \debouncer0|s_debounceCnt[20]~3_combout\,
	combout => \debouncer0|s_debounceCnt[18]~17_combout\);

-- Location: FF_X60_Y43_N25
\debouncer0|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(18));

-- Location: LCCOMB_X60_Y43_N16
\debouncer0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~38_combout\ = (\debouncer0|s_debounceCnt\(19) & (\debouncer0|Add0~37\ & VCC)) # (!\debouncer0|s_debounceCnt\(19) & (!\debouncer0|Add0~37\))
-- \debouncer0|Add0~39\ = CARRY((!\debouncer0|s_debounceCnt\(19) & !\debouncer0|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(19),
	datad => VCC,
	cin => \debouncer0|Add0~37\,
	combout => \debouncer0|Add0~38_combout\,
	cout => \debouncer0|Add0~39\);

-- Location: LCCOMB_X60_Y43_N30
\debouncer0|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[19]~18_combout\ = (\debouncer0|s_debounceCnt[20]~3_combout\ & (\debouncer0|s_debounceCnt[20]~0_combout\ & ((\debouncer0|Add0~38_combout\) # (!\debouncer0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_previousIn~q\,
	datab => \debouncer0|s_debounceCnt[20]~3_combout\,
	datac => \debouncer0|s_debounceCnt[20]~0_combout\,
	datad => \debouncer0|Add0~38_combout\,
	combout => \debouncer0|s_debounceCnt[19]~18_combout\);

-- Location: FF_X60_Y43_N31
\debouncer0|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(19));

-- Location: LCCOMB_X59_Y43_N10
\debouncer0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|LessThan0~4_combout\ = (\debouncer0|s_debounceCnt\(19) & (\debouncer0|s_debounceCnt\(14) & (\debouncer0|s_debounceCnt\(8) & \debouncer0|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(19),
	datab => \debouncer0|s_debounceCnt\(14),
	datac => \debouncer0|s_debounceCnt\(8),
	datad => \debouncer0|s_debounceCnt\(18),
	combout => \debouncer0|LessThan0~4_combout\);

-- Location: LCCOMB_X59_Y43_N8
\debouncer0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|LessThan0~5_combout\ = (\debouncer0|s_debounceCnt\(11) & (\debouncer0|s_debounceCnt\(9) & \debouncer0|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(11),
	datac => \debouncer0|s_debounceCnt\(9),
	datad => \debouncer0|LessThan0~4_combout\,
	combout => \debouncer0|LessThan0~5_combout\);

-- Location: LCCOMB_X59_Y43_N30
\debouncer0|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|LessThan0~6_combout\ = (\debouncer0|s_debounceCnt\(6) & ((\debouncer0|s_debounceCnt\(0)) # ((\debouncer0|s_debounceCnt\(5)) # (!\debouncer0|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(6),
	datab => \debouncer0|s_debounceCnt\(0),
	datac => \debouncer0|s_debounceCnt\(5),
	datad => \debouncer0|s_pulsedOut~5_combout\,
	combout => \debouncer0|LessThan0~6_combout\);

-- Location: LCCOMB_X59_Y43_N12
\debouncer0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|LessThan0~1_combout\ = (\debouncer0|s_debounceCnt\(13)) # ((\debouncer0|s_debounceCnt\(12)) # ((\debouncer0|s_debounceCnt\(11) & \debouncer0|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(13),
	datab => \debouncer0|s_debounceCnt\(11),
	datac => \debouncer0|s_debounceCnt\(10),
	datad => \debouncer0|s_debounceCnt\(12),
	combout => \debouncer0|LessThan0~1_combout\);

-- Location: LCCOMB_X59_Y43_N18
\debouncer0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|LessThan0~2_combout\ = (\debouncer0|s_debounceCnt\(15)) # ((\debouncer0|s_debounceCnt\(16)) # ((\debouncer0|LessThan0~1_combout\ & \debouncer0|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|LessThan0~1_combout\,
	datab => \debouncer0|s_debounceCnt\(14),
	datac => \debouncer0|s_debounceCnt\(15),
	datad => \debouncer0|s_debounceCnt\(16),
	combout => \debouncer0|LessThan0~2_combout\);

-- Location: LCCOMB_X59_Y43_N28
\debouncer0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|LessThan0~3_combout\ = (\debouncer0|s_debounceCnt\(19) & (\debouncer0|s_debounceCnt\(18) & ((\debouncer0|s_debounceCnt\(17)) # (\debouncer0|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(19),
	datab => \debouncer0|s_debounceCnt\(18),
	datac => \debouncer0|s_debounceCnt\(17),
	datad => \debouncer0|LessThan0~2_combout\,
	combout => \debouncer0|LessThan0~3_combout\);

-- Location: LCCOMB_X59_Y43_N24
\debouncer0|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|LessThan0~7_combout\ = (\debouncer0|LessThan0~3_combout\) # ((\debouncer0|LessThan0~5_combout\ & ((\debouncer0|s_debounceCnt\(7)) # (\debouncer0|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(7),
	datab => \debouncer0|LessThan0~5_combout\,
	datac => \debouncer0|LessThan0~6_combout\,
	datad => \debouncer0|LessThan0~3_combout\,
	combout => \debouncer0|LessThan0~7_combout\);

-- Location: LCCOMB_X61_Y43_N10
\debouncer0|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_pulsedOut~2_combout\ = (!\debouncer0|s_debounceCnt\(8) & (!\debouncer0|s_debounceCnt\(7) & (!\debouncer0|s_debounceCnt\(9) & !\debouncer0|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(8),
	datab => \debouncer0|s_debounceCnt\(7),
	datac => \debouncer0|s_debounceCnt\(9),
	datad => \debouncer0|s_debounceCnt\(10),
	combout => \debouncer0|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X61_Y43_N8
\debouncer0|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_pulsedOut~0_combout\ = (!\debouncer0|s_debounceCnt\(17) & (!\debouncer0|s_debounceCnt\(6) & (!\debouncer0|s_debounceCnt\(15) & !\debouncer0|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(17),
	datab => \debouncer0|s_debounceCnt\(6),
	datac => \debouncer0|s_debounceCnt\(15),
	datad => \debouncer0|s_debounceCnt\(16),
	combout => \debouncer0|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X60_Y43_N18
\debouncer0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~40_combout\ = (\debouncer0|s_debounceCnt\(20) & ((GND) # (!\debouncer0|Add0~39\))) # (!\debouncer0|s_debounceCnt\(20) & (\debouncer0|Add0~39\ $ (GND)))
-- \debouncer0|Add0~41\ = CARRY((\debouncer0|s_debounceCnt\(20)) # (!\debouncer0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(20),
	datad => VCC,
	cin => \debouncer0|Add0~39\,
	combout => \debouncer0|Add0~40_combout\,
	cout => \debouncer0|Add0~41\);

-- Location: LCCOMB_X60_Y43_N20
\debouncer0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~42_combout\ = (\debouncer0|s_debounceCnt\(21) & (\debouncer0|Add0~41\ & VCC)) # (!\debouncer0|s_debounceCnt\(21) & (!\debouncer0|Add0~41\))
-- \debouncer0|Add0~43\ = CARRY((!\debouncer0|s_debounceCnt\(21) & !\debouncer0|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(21),
	datad => VCC,
	cin => \debouncer0|Add0~41\,
	combout => \debouncer0|Add0~42_combout\,
	cout => \debouncer0|Add0~43\);

-- Location: LCCOMB_X60_Y43_N26
\debouncer0|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[21]~10_combout\ = (\debouncer0|s_previousIn~q\ & (\debouncer0|s_debounceCnt[20]~3_combout\ & (\debouncer0|s_debounceCnt[20]~0_combout\ & \debouncer0|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_previousIn~q\,
	datab => \debouncer0|s_debounceCnt[20]~3_combout\,
	datac => \debouncer0|s_debounceCnt[20]~0_combout\,
	datad => \debouncer0|Add0~42_combout\,
	combout => \debouncer0|s_debounceCnt[21]~10_combout\);

-- Location: FF_X60_Y43_N27
\debouncer0|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(21));

-- Location: LCCOMB_X61_Y43_N14
\debouncer0|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_pulsedOut~1_combout\ = (!\debouncer0|s_debounceCnt\(12) & (!\debouncer0|s_debounceCnt\(20) & (!\debouncer0|s_debounceCnt\(21) & !\debouncer0|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(12),
	datab => \debouncer0|s_debounceCnt\(20),
	datac => \debouncer0|s_debounceCnt\(21),
	datad => \debouncer0|s_debounceCnt\(13),
	combout => \debouncer0|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X61_Y43_N28
\debouncer0|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_pulsedOut~3_combout\ = (!\debouncer0|s_debounceCnt\(14) & (!\debouncer0|s_debounceCnt\(19) & (!\debouncer0|s_debounceCnt\(11) & !\debouncer0|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(14),
	datab => \debouncer0|s_debounceCnt\(19),
	datac => \debouncer0|s_debounceCnt\(11),
	datad => \debouncer0|s_debounceCnt\(18),
	combout => \debouncer0|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X61_Y43_N2
\debouncer0|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_pulsedOut~4_combout\ = (\debouncer0|s_pulsedOut~2_combout\ & (\debouncer0|s_pulsedOut~0_combout\ & (\debouncer0|s_pulsedOut~1_combout\ & \debouncer0|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_pulsedOut~2_combout\,
	datab => \debouncer0|s_pulsedOut~0_combout\,
	datac => \debouncer0|s_pulsedOut~1_combout\,
	datad => \debouncer0|s_pulsedOut~3_combout\,
	combout => \debouncer0|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X61_Y43_N18
\debouncer0|s_debounceCnt[20]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[20]~2_combout\ = (\debouncer0|s_debounceCnt\(0)) # ((\debouncer0|s_debounceCnt\(5)) # ((!\debouncer0|s_pulsedOut~4_combout\) # (!\debouncer0|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(0),
	datab => \debouncer0|s_debounceCnt\(5),
	datac => \debouncer0|s_pulsedOut~5_combout\,
	datad => \debouncer0|s_pulsedOut~4_combout\,
	combout => \debouncer0|s_debounceCnt[20]~2_combout\);

-- Location: LCCOMB_X59_Y43_N20
\debouncer0|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[22]~24_combout\ = (\debouncer0|s_debounceCnt\(22) & (\debouncer0|LessThan0~0_combout\ & (!\debouncer0|LessThan0~7_combout\))) # (!\debouncer0|s_debounceCnt\(22) & (((\debouncer0|s_debounceCnt[20]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|LessThan0~0_combout\,
	datab => \debouncer0|s_debounceCnt\(22),
	datac => \debouncer0|LessThan0~7_combout\,
	datad => \debouncer0|s_debounceCnt[20]~2_combout\,
	combout => \debouncer0|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X59_Y43_N22
\debouncer0|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[22]~25_combout\ = (\debouncer0|s_dirtyIn~q\ & \debouncer0|s_debounceCnt[22]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer0|s_dirtyIn~q\,
	datad => \debouncer0|s_debounceCnt[22]~24_combout\,
	combout => \debouncer0|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X60_Y43_N22
\debouncer0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~44_combout\ = \debouncer0|Add0~43\ $ (\debouncer0|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debouncer0|s_debounceCnt\(22),
	cin => \debouncer0|Add0~43\,
	combout => \debouncer0|Add0~44_combout\);

-- Location: LCCOMB_X59_Y43_N14
\debouncer0|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[22]~26_combout\ = (\debouncer0|s_previousIn~q\ & (((\debouncer0|s_debounceCnt[22]~25_combout\ & \debouncer0|Add0~44_combout\)))) # (!\debouncer0|s_previousIn~q\ & (\debouncer0|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt[20]~0_combout\,
	datab => \debouncer0|s_previousIn~q\,
	datac => \debouncer0|s_debounceCnt[22]~25_combout\,
	datad => \debouncer0|Add0~44_combout\,
	combout => \debouncer0|s_debounceCnt[22]~26_combout\);

-- Location: FF_X59_Y43_N15
\debouncer0|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(22));

-- Location: LCCOMB_X61_Y43_N22
\debouncer0|s_debounceCnt[20]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[20]~3_combout\ = ((\debouncer0|s_debounceCnt\(22)) # ((\debouncer0|s_debounceCnt[20]~2_combout\) # (!\debouncer0|s_previousIn~q\))) # (!\debouncer0|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_dirtyIn~q\,
	datab => \debouncer0|s_debounceCnt\(22),
	datac => \debouncer0|s_previousIn~q\,
	datad => \debouncer0|s_debounceCnt[20]~2_combout\,
	combout => \debouncer0|s_debounceCnt[20]~3_combout\);

-- Location: LCCOMB_X60_Y43_N28
\debouncer0|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[20]~9_combout\ = (\debouncer0|s_previousIn~q\ & (\debouncer0|s_debounceCnt[20]~3_combout\ & (\debouncer0|s_debounceCnt[20]~0_combout\ & \debouncer0|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_previousIn~q\,
	datab => \debouncer0|s_debounceCnt[20]~3_combout\,
	datac => \debouncer0|s_debounceCnt[20]~0_combout\,
	datad => \debouncer0|Add0~40_combout\,
	combout => \debouncer0|s_debounceCnt[20]~9_combout\);

-- Location: FF_X60_Y43_N29
\debouncer0|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(20));

-- Location: LCCOMB_X58_Y43_N16
\debouncer0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|LessThan0~0_combout\ = (!\debouncer0|s_debounceCnt\(20) & !\debouncer0|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer0|s_debounceCnt\(20),
	datad => \debouncer0|s_debounceCnt\(21),
	combout => \debouncer0|LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y43_N6
\debouncer0|s_debounceCnt[20]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[20]~0_combout\ = (\debouncer0|s_dirtyIn~q\ & (((\debouncer0|LessThan0~0_combout\ & !\debouncer0|LessThan0~7_combout\)) # (!\debouncer0|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|LessThan0~0_combout\,
	datab => \debouncer0|s_debounceCnt\(22),
	datac => \debouncer0|s_dirtyIn~q\,
	datad => \debouncer0|LessThan0~7_combout\,
	combout => \debouncer0|s_debounceCnt[20]~0_combout\);

-- Location: LCCOMB_X61_Y43_N0
\debouncer0|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~23_combout\ = (\debouncer0|s_previousIn~q\ & (\debouncer0|Add0~0_combout\ & \debouncer0|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_previousIn~q\,
	datac => \debouncer0|Add0~0_combout\,
	datad => \debouncer0|s_debounceCnt[20]~0_combout\,
	combout => \debouncer0|s_debounceCnt~23_combout\);

-- Location: FF_X61_Y43_N1
\debouncer0|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~23_combout\,
	ena => \debouncer0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(0));

-- Location: LCCOMB_X60_Y44_N12
\debouncer0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~2_combout\ = (\debouncer0|s_debounceCnt\(1) & (\debouncer0|Add0~1\ & VCC)) # (!\debouncer0|s_debounceCnt\(1) & (!\debouncer0|Add0~1\))
-- \debouncer0|Add0~3\ = CARRY((!\debouncer0|s_debounceCnt\(1) & !\debouncer0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(1),
	datad => VCC,
	cin => \debouncer0|Add0~1\,
	combout => \debouncer0|Add0~2_combout\,
	cout => \debouncer0|Add0~3\);

-- Location: LCCOMB_X60_Y44_N4
\debouncer0|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~19_combout\ = (\debouncer0|Add0~2_combout\ & (\debouncer0|s_previousIn~q\ & \debouncer0|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|Add0~2_combout\,
	datac => \debouncer0|s_previousIn~q\,
	datad => \debouncer0|s_debounceCnt[20]~0_combout\,
	combout => \debouncer0|s_debounceCnt~19_combout\);

-- Location: FF_X60_Y44_N5
\debouncer0|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~19_combout\,
	ena => \debouncer0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(1));

-- Location: LCCOMB_X60_Y44_N14
\debouncer0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~4_combout\ = (\debouncer0|s_debounceCnt\(2) & ((GND) # (!\debouncer0|Add0~3\))) # (!\debouncer0|s_debounceCnt\(2) & (\debouncer0|Add0~3\ $ (GND)))
-- \debouncer0|Add0~5\ = CARRY((\debouncer0|s_debounceCnt\(2)) # (!\debouncer0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(2),
	datad => VCC,
	cin => \debouncer0|Add0~3\,
	combout => \debouncer0|Add0~4_combout\,
	cout => \debouncer0|Add0~5\);

-- Location: LCCOMB_X60_Y44_N2
\debouncer0|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~20_combout\ = (\debouncer0|Add0~4_combout\ & (\debouncer0|s_previousIn~q\ & \debouncer0|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|Add0~4_combout\,
	datac => \debouncer0|s_previousIn~q\,
	datad => \debouncer0|s_debounceCnt[20]~0_combout\,
	combout => \debouncer0|s_debounceCnt~20_combout\);

-- Location: FF_X60_Y44_N3
\debouncer0|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~20_combout\,
	ena => \debouncer0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(2));

-- Location: LCCOMB_X60_Y44_N16
\debouncer0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~6_combout\ = (\debouncer0|s_debounceCnt\(3) & (\debouncer0|Add0~5\ & VCC)) # (!\debouncer0|s_debounceCnt\(3) & (!\debouncer0|Add0~5\))
-- \debouncer0|Add0~7\ = CARRY((!\debouncer0|s_debounceCnt\(3) & !\debouncer0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(3),
	datad => VCC,
	cin => \debouncer0|Add0~5\,
	combout => \debouncer0|Add0~6_combout\,
	cout => \debouncer0|Add0~7\);

-- Location: LCCOMB_X60_Y44_N8
\debouncer0|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~21_combout\ = (\debouncer0|Add0~6_combout\ & (\debouncer0|s_previousIn~q\ & \debouncer0|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|Add0~6_combout\,
	datac => \debouncer0|s_previousIn~q\,
	datad => \debouncer0|s_debounceCnt[20]~0_combout\,
	combout => \debouncer0|s_debounceCnt~21_combout\);

-- Location: FF_X60_Y44_N9
\debouncer0|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~21_combout\,
	ena => \debouncer0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(3));

-- Location: LCCOMB_X60_Y44_N6
\debouncer0|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~22_combout\ = (\debouncer0|Add0~8_combout\ & (\debouncer0|s_previousIn~q\ & \debouncer0|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|Add0~8_combout\,
	datac => \debouncer0|s_previousIn~q\,
	datad => \debouncer0|s_debounceCnt[20]~0_combout\,
	combout => \debouncer0|s_debounceCnt~22_combout\);

-- Location: FF_X60_Y44_N7
\debouncer0|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~22_combout\,
	ena => \debouncer0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(4));

-- Location: LCCOMB_X60_Y44_N0
\debouncer0|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_pulsedOut~5_combout\ = (!\debouncer0|s_debounceCnt\(4) & (!\debouncer0|s_debounceCnt\(3) & (!\debouncer0|s_debounceCnt\(1) & !\debouncer0|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(4),
	datab => \debouncer0|s_debounceCnt\(3),
	datac => \debouncer0|s_debounceCnt\(1),
	datad => \debouncer0|s_debounceCnt\(2),
	combout => \debouncer0|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X60_Y40_N4
\debouncer0|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_pulsedOut~6_combout\ = (\debouncer0|s_debounceCnt\(0) & (\debouncer0|s_dirtyIn~q\ & (!\debouncer0|s_debounceCnt\(22) & \debouncer0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(0),
	datab => \debouncer0|s_dirtyIn~q\,
	datac => \debouncer0|s_debounceCnt\(22),
	datad => \debouncer0|s_previousIn~q\,
	combout => \debouncer0|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X60_Y40_N14
\debouncer0|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_pulsedOut~7_combout\ = (\debouncer0|s_pulsedOut~5_combout\ & (!\debouncer0|s_debounceCnt\(5) & (\debouncer0|s_pulsedOut~6_combout\ & \debouncer0|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_pulsedOut~5_combout\,
	datab => \debouncer0|s_debounceCnt\(5),
	datac => \debouncer0|s_pulsedOut~6_combout\,
	datad => \debouncer0|s_pulsedOut~4_combout\,
	combout => \debouncer0|s_pulsedOut~7_combout\);

-- Location: FF_X60_Y40_N15
\debouncer0|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_pulsedOut~q\);

-- Location: LCCOMB_X52_Y34_N6
\FSM|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|Selector0~0_combout\ = ((\debouncer2|s_pulsedOut~q\) # ((\debouncer1|s_pulsedOut~q\) # (\debouncer3|s_pulsedOut~q\))) # (!\debouncer0|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_pulsedOut~q\,
	datab => \debouncer2|s_pulsedOut~q\,
	datac => \debouncer1|s_pulsedOut~q\,
	datad => \debouncer3|s_pulsedOut~q\,
	combout => \FSM|Selector0~0_combout\);

-- Location: LCCOMB_X53_Y34_N10
\FSM|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|Selector0~1_combout\ = ((\FSM|Selector0~0_combout\ & \FSM|s_currentState.PG~q\)) # (!\FSM|s_currentState.RESETMOD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|Selector0~0_combout\,
	datac => \FSM|s_currentState.PG~q\,
	datad => \FSM|s_currentState.RESETMOD~q\,
	combout => \FSM|Selector0~1_combout\);

-- Location: CLKCTRL_G19
\FSM|Selector0~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FSM|Selector0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FSM|Selector0~1clkctrl_outclk\);

-- Location: LCCOMB_X53_Y34_N18
\FSM|s_nextState.PG_334\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|s_nextState.PG_334~combout\ = (GLOBAL(\FSM|Selector0~1clkctrl_outclk\) & ((\FSM|Selector4~0_combout\))) # (!GLOBAL(\FSM|Selector0~1clkctrl_outclk\) & (\FSM|s_nextState.PG_334~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|s_nextState.PG_334~combout\,
	datac => \FSM|Selector4~0_combout\,
	datad => \FSM|Selector0~1clkctrl_outclk\,
	combout => \FSM|s_nextState.PG_334~combout\);

-- Location: LCCOMB_X53_Y34_N8
\FSM|s_currentState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|s_currentState~7_combout\ = (!\SW[17]~input_o\ & \FSM|s_nextState.PG_334~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \FSM|s_nextState.PG_334~combout\,
	combout => \FSM|s_currentState~7_combout\);

-- Location: FF_X53_Y34_N9
\FSM|s_currentState.PG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FSM|s_currentState~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|s_currentState.PG~q\);

-- Location: LCCOMB_X57_Y34_N4
\FSM|Modo[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|Modo\(3) = (\FSM|s_currentState.PG~q\) # (!\FSM|s_currentState.RESETMOD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|s_currentState.RESETMOD~q\,
	datad => \FSM|s_currentState.PG~q\,
	combout => \FSM|Modo\(3));

-- Location: LCCOMB_X53_Y34_N20
\FSM|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|Selector1~0_combout\ = (!\debouncer1|s_pulsedOut~q\ & (\FSM|s_currentState.PG~q\ & (\debouncer3|s_pulsedOut~q\ & !\debouncer2|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_pulsedOut~q\,
	datab => \FSM|s_currentState.PG~q\,
	datac => \debouncer3|s_pulsedOut~q\,
	datad => \debouncer2|s_pulsedOut~q\,
	combout => \FSM|Selector1~0_combout\);

-- Location: LCCOMB_X53_Y34_N24
\FSM|s_nextState.PG3_268\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|s_nextState.PG3_268~combout\ = (GLOBAL(\FSM|Selector0~1clkctrl_outclk\) & (\FSM|Selector1~0_combout\)) # (!GLOBAL(\FSM|Selector0~1clkctrl_outclk\) & ((\FSM|s_nextState.PG3_268~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|Selector1~0_combout\,
	datac => \FSM|s_nextState.PG3_268~combout\,
	datad => \FSM|Selector0~1clkctrl_outclk\,
	combout => \FSM|s_nextState.PG3_268~combout\);

-- Location: LCCOMB_X53_Y34_N28
\FSM|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|s_currentState~9_combout\ = (!\SW[17]~input_o\ & \FSM|s_nextState.PG3_268~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \FSM|s_nextState.PG3_268~combout\,
	combout => \FSM|s_currentState~9_combout\);

-- Location: FF_X53_Y34_N29
\FSM|s_currentState.PG3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSM|s_currentState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|s_currentState.PG3~q\);

-- Location: LCCOMB_X53_Y34_N2
\FSM|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|Selector2~0_combout\ = (!\debouncer1|s_pulsedOut~q\ & (\FSM|s_currentState.PG~q\ & \debouncer2|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_pulsedOut~q\,
	datab => \FSM|s_currentState.PG~q\,
	datad => \debouncer2|s_pulsedOut~q\,
	combout => \FSM|Selector2~0_combout\);

-- Location: LCCOMB_X53_Y34_N12
\FSM|s_nextState.PG2_290\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|s_nextState.PG2_290~combout\ = (GLOBAL(\FSM|Selector0~1clkctrl_outclk\) & ((\FSM|Selector2~0_combout\))) # (!GLOBAL(\FSM|Selector0~1clkctrl_outclk\) & (\FSM|s_nextState.PG2_290~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|s_nextState.PG2_290~combout\,
	datac => \FSM|Selector2~0_combout\,
	datad => \FSM|Selector0~1clkctrl_outclk\,
	combout => \FSM|s_nextState.PG2_290~combout\);

-- Location: LCCOMB_X53_Y34_N4
\FSM|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|s_currentState~8_combout\ = (!\SW[17]~input_o\ & \FSM|s_nextState.PG2_290~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \FSM|s_nextState.PG2_290~combout\,
	combout => \FSM|s_currentState~8_combout\);

-- Location: FF_X53_Y34_N5
\FSM|s_currentState.PG2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSM|s_currentState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|s_currentState.PG2~q\);

-- Location: LCCOMB_X107_Y30_N0
\hexdisplay0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay0|Mux6~0_combout\ = (\FSM|s_currentState.PG3~q\) # (\FSM|s_currentState.PG2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|s_currentState.PG3~q\,
	datad => \FSM|s_currentState.PG2~q\,
	combout => \hexdisplay0|Mux6~0_combout\);

-- Location: LCCOMB_X53_Y34_N30
\FSM|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|Selector3~0_combout\ = (\debouncer1|s_pulsedOut~q\ & \FSM|s_currentState.PG~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_pulsedOut~q\,
	datab => \FSM|s_currentState.PG~q\,
	combout => \FSM|Selector3~0_combout\);

-- Location: LCCOMB_X53_Y34_N6
\FSM|s_nextState.PG1_312\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|s_nextState.PG1_312~combout\ = (GLOBAL(\FSM|Selector0~1clkctrl_outclk\) & ((\FSM|Selector3~0_combout\))) # (!GLOBAL(\FSM|Selector0~1clkctrl_outclk\) & (\FSM|s_nextState.PG1_312~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|s_nextState.PG1_312~combout\,
	datac => \FSM|Selector3~0_combout\,
	datad => \FSM|Selector0~1clkctrl_outclk\,
	combout => \FSM|s_nextState.PG1_312~combout\);

-- Location: LCCOMB_X53_Y34_N26
\FSM|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|s_currentState~10_combout\ = (!\SW[17]~input_o\ & \FSM|s_nextState.PG1_312~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \FSM|s_nextState.PG1_312~combout\,
	combout => \FSM|s_currentState~10_combout\);

-- Location: FF_X53_Y34_N27
\FSM|s_currentState.PG1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSM|s_currentState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|s_currentState.PG1~q\);

-- Location: LCCOMB_X107_Y30_N18
\hexdisplay0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay0|Mux5~0_combout\ = (\FSM|s_currentState.PG3~q\) # ((\FSM|s_currentState.PG1~q\) # (\FSM|s_currentState.PG2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|s_currentState.PG3~q\,
	datab => \FSM|s_currentState.PG1~q\,
	datad => \FSM|s_currentState.PG2~q\,
	combout => \hexdisplay0|Mux5~0_combout\);

-- Location: LCCOMB_X107_Y30_N24
\hexdisplay0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay0|Mux4~0_combout\ = (\FSM|s_currentState.PG1~q\) # (\FSM|s_currentState.PG3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|s_currentState.PG1~q\,
	datad => \FSM|s_currentState.PG3~q\,
	combout => \hexdisplay0|Mux4~0_combout\);

-- Location: LCCOMB_X53_Y34_N22
\hexdisplay2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay2|Mux5~0_combout\ = (\FSM|s_currentState.RESETMOD~q\ & (!\FSM|s_currentState.PG~q\ & ((\FSM|s_currentState.PG3~q\) # (\FSM|s_currentState.PG2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|s_currentState.RESETMOD~q\,
	datab => \FSM|s_currentState.PG~q\,
	datac => \FSM|s_currentState.PG3~q\,
	datad => \FSM|s_currentState.PG2~q\,
	combout => \hexdisplay2|Mux5~0_combout\);

-- Location: LCCOMB_X107_Y30_N14
\hexdisplay2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay2|Mux2~0_combout\ = (!\FSM|s_currentState.PG2~q\ & (\FSM|s_currentState.PG3~q\ $ (\FSM|s_currentState.PG1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|s_currentState.PG3~q\,
	datab => \FSM|s_currentState.PG1~q\,
	datad => \FSM|s_currentState.PG2~q\,
	combout => \hexdisplay2|Mux2~0_combout\);

-- Location: LCCOMB_X53_Y34_N14
\hexdisplay2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay2|Mux0~0_combout\ = (!\FSM|s_currentState.PG~q\ & (\FSM|s_currentState.RESETMOD~q\ & ((\FSM|s_currentState.PG1~q\) # (\FSM|s_currentState.PG2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|s_currentState.PG1~q\,
	datab => \FSM|s_currentState.PG2~q\,
	datac => \FSM|s_currentState.PG~q\,
	datad => \FSM|s_currentState.RESETMOD~q\,
	combout => \hexdisplay2|Mux0~0_combout\);

-- Location: LCCOMB_X107_Y30_N4
\FSM|Modo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|Modo~1_combout\ = (\FSM|s_currentState.PG1~q\) # (\FSM|s_currentState.PG2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|s_currentState.PG1~q\,
	datad => \FSM|s_currentState.PG2~q\,
	combout => \FSM|Modo~1_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


