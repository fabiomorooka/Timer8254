-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/12/2019 15:03:24"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_DE10 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LED : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END top_DE10;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[4]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[8]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[9]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_DE10 IS
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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LED : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \timer1|GD|latch_d~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \LED[8]~output_o\ : std_logic;
SIGNAL \LED[9]~output_o\ : std_logic;
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
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\ : std_logic;
SIGNAL \timer1|D1|resetChargement|resetCharge_d~q\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \timer1|GD|Mux0~0_combout\ : std_logic;
SIGNAL \timer1|GD|process_0~0_combout\ : std_logic;
SIGNAL \timer1|GD|sortie~0_combout\ : std_logic;
SIGNAL \timer1|GD|sortie~1_combout\ : std_logic;
SIGNAL \timer1|GD|sortie~q\ : std_logic;
SIGNAL \timer1|GD|D_RW.LeastMost~5_combout\ : std_logic;
SIGNAL \timer1|GD|D_RW.Latch~q\ : std_logic;
SIGNAL \timer1|GD|RW_op.LeastMost~0_combout\ : std_logic;
SIGNAL \timer1|GD|Mux2~1_combout\ : std_logic;
SIGNAL \timer1|GD|D_RW.LeastMost~q\ : std_logic;
SIGNAL \timer1|GD|RW_op.LeastMost~1_combout\ : std_logic;
SIGNAL \timer1|GD|RW_op.LeastMost~q\ : std_logic;
SIGNAL \timer1|GD|D_RW.LeastMost~4_combout\ : std_logic;
SIGNAL \timer1|GD|Mux2~0_combout\ : std_logic;
SIGNAL \timer1|GD|D_RW.Most~q\ : std_logic;
SIGNAL \timer1|GD|Etat_w~0_combout\ : std_logic;
SIGNAL \timer1|GD|Etat_w~1_combout\ : std_logic;
SIGNAL \timer1|GD|Etat_w~q\ : std_logic;
SIGNAL \timer1|GD|charg_d~0_combout\ : std_logic;
SIGNAL \timer1|GD|charg_d~1_combout\ : std_logic;
SIGNAL \timer1|GD|charg_d~q\ : std_logic;
SIGNAL \timer1|varPartagee_charg_d|Q~1_combout\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[0]~16_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[9]~18_combout\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[0]~17\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[1]~19_combout\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[1]~20\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[2]~21_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \timer1|GD|d_buf_sortie~0_combout\ : std_logic;
SIGNAL \timer1|GD|d_buf_sortie[2]~1_combout\ : std_logic;
SIGNAL \timer1|GD|d_buf_sortie[2]~2_combout\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[2]~22\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[3]~23_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \timer1|GD|d_buf_sortie~3_combout\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[3]~24\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[4]~25_combout\ : std_logic;
SIGNAL \timer1|GD|d_buf_sortie~4_combout\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[4]~26\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[5]~27_combout\ : std_logic;
SIGNAL \timer1|GD|d_buf_sortie~5_combout\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[5]~28\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[6]~29_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \timer1|GD|d_buf_sortie~6_combout\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[6]~30\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[7]~31_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \timer1|GD|d_buf_sortie~7_combout\ : std_logic;
SIGNAL \timer1|D1|zeroDetection|Equal0~1_combout\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[7]~32\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[8]~33_combout\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[8]~34\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[9]~35_combout\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[9]~36\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[10]~37_combout\ : std_logic;
SIGNAL \timer1|GD|d_buf_sortie~8_combout\ : std_logic;
SIGNAL \timer1|GD|d_buf_sortie[10]~9_combout\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[10]~38\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[11]~39_combout\ : std_logic;
SIGNAL \timer1|GD|d_buf_sortie~10_combout\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[11]~40\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[12]~41_combout\ : std_logic;
SIGNAL \timer1|GD|d_buf_sortie~11_combout\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[12]~42\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[13]~43_combout\ : std_logic;
SIGNAL \timer1|GD|d_buf_sortie~12_combout\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[13]~44\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[14]~45_combout\ : std_logic;
SIGNAL \timer1|GD|d_buf_sortie~13_combout\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[14]~46\ : std_logic;
SIGNAL \timer1|D1|dec1|count_val[15]~47_combout\ : std_logic;
SIGNAL \timer1|GD|d_buf_sortie~14_combout\ : std_logic;
SIGNAL \timer1|D1|zeroDetection|Equal0~3_combout\ : std_logic;
SIGNAL \timer1|D1|zeroDetection|Equal0~2_combout\ : std_logic;
SIGNAL \timer1|D1|zeroDetection|Equal0~0_combout\ : std_logic;
SIGNAL \timer1|D1|zeroDetection|Equal0~4_combout\ : std_logic;
SIGNAL \timer1|varPartagee_sortie_out|Q~1_combout\ : std_logic;
SIGNAL \timer1|GD|latch_d~0_combout\ : std_logic;
SIGNAL \timer1|GD|DOUT[3]~5_combout\ : std_logic;
SIGNAL \timer1|GD|Etat_r~0_combout\ : std_logic;
SIGNAL \timer1|GD|Etat_r~1_combout\ : std_logic;
SIGNAL \timer1|GD|Etat_r~2_combout\ : std_logic;
SIGNAL \timer1|GD|Etat_r~q\ : std_logic;
SIGNAL \timer1|GD|latch_d~1_combout\ : std_logic;
SIGNAL \timer1|GD|latch_d~2_combout\ : std_logic;
SIGNAL \timer1|GD|latch_d~feeder_combout\ : std_logic;
SIGNAL \timer1|GD|latch_d~q\ : std_logic;
SIGNAL \timer1|GD|latch_d~clkctrl_outclk\ : std_logic;
SIGNAL \timer1|GD|DOUT~8_combout\ : std_logic;
SIGNAL \timer1|GD|DOUT[3]~13_combout\ : std_logic;
SIGNAL \timer1|GD|DOUT~4_combout\ : std_logic;
SIGNAL \timer1|GD|DOUT~6_combout\ : std_logic;
SIGNAL \timer1|GD|DOUT~7_combout\ : std_logic;
SIGNAL \DCB1|Mux6~0_combout\ : std_logic;
SIGNAL \DCB1|Mux5~0_combout\ : std_logic;
SIGNAL \DCB1|Mux4~0_combout\ : std_logic;
SIGNAL \DCB1|Mux3~0_combout\ : std_logic;
SIGNAL \DCB1|Mux2~0_combout\ : std_logic;
SIGNAL \DCB1|Mux1~0_combout\ : std_logic;
SIGNAL \DCB1|Mux0~0_combout\ : std_logic;
SIGNAL \timer1|GD|DOUT~10_combout\ : std_logic;
SIGNAL \timer1|GD|DOUT~11_combout\ : std_logic;
SIGNAL \timer1|GD|DOUT~9_combout\ : std_logic;
SIGNAL \timer1|GD|DOUT~12_combout\ : std_logic;
SIGNAL \DCB2|Mux6~0_combout\ : std_logic;
SIGNAL \DCB2|Mux5~0_combout\ : std_logic;
SIGNAL \DCB2|Mux4~0_combout\ : std_logic;
SIGNAL \DCB2|Mux3~0_combout\ : std_logic;
SIGNAL \DCB2|Mux2~0_combout\ : std_logic;
SIGNAL \DCB2|Mux1~0_combout\ : std_logic;
SIGNAL \DCB2|Mux0~0_combout\ : std_logic;
SIGNAL \DCB6|Mux6~0_combout\ : std_logic;
SIGNAL \DCB6|Mux5~0_combout\ : std_logic;
SIGNAL \DCB6|Mux4~0_combout\ : std_logic;
SIGNAL \DCB6|Mux3~0_combout\ : std_logic;
SIGNAL \DCB6|Mux2~0_combout\ : std_logic;
SIGNAL \DCB6|Mux1~0_combout\ : std_logic;
SIGNAL \DCB6|Mux0~0_combout\ : std_logic;
SIGNAL \DCB5|Mux6~0_combout\ : std_logic;
SIGNAL \DCB5|Mux5~0_combout\ : std_logic;
SIGNAL \DCB5|Mux4~0_combout\ : std_logic;
SIGNAL \DCB5|Mux3~0_combout\ : std_logic;
SIGNAL \DCB5|Mux2~0_combout\ : std_logic;
SIGNAL \DCB5|Mux1~0_combout\ : std_logic;
SIGNAL \DCB5|Mux0~0_combout\ : std_logic;
SIGNAL \DCB4|Mux6~0_combout\ : std_logic;
SIGNAL \DCB4|Mux5~0_combout\ : std_logic;
SIGNAL \DCB4|Mux4~0_combout\ : std_logic;
SIGNAL \DCB4|Mux3~0_combout\ : std_logic;
SIGNAL \DCB4|Mux2~0_combout\ : std_logic;
SIGNAL \DCB4|Mux1~0_combout\ : std_logic;
SIGNAL \DCB4|Mux0~0_combout\ : std_logic;
SIGNAL \DCB3|Mux6~0_combout\ : std_logic;
SIGNAL \DCB3|Mux5~0_combout\ : std_logic;
SIGNAL \DCB3|Mux4~0_combout\ : std_logic;
SIGNAL \DCB3|Mux3~0_combout\ : std_logic;
SIGNAL \DCB3|Mux2~0_combout\ : std_logic;
SIGNAL \DCB3|Mux1~0_combout\ : std_logic;
SIGNAL \DCB3|Mux0~0_combout\ : std_logic;
SIGNAL \Divide|inst|auto_generated|counter_reg_bit\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \timer1|D1|dec1|count_val\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \timer1|GD|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \timer1|GD|d_buf_sortie\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \timer1|GB|d_buf_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \timer1|varPartagee_sortie_out|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \timer1|GD|ALT_INV_sortie~q\ : std_logic;
SIGNAL \timer1|GD|ALT_INV_charg_d~q\ : std_logic;
SIGNAL \DCB3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DCB4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DCB5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DCB6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DCB2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DCB1|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LED <= ww_LED;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\timer1|GD|latch_d~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \timer1|GD|latch_d~q\);

\Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Divide|inst|auto_generated|counter_reg_bit\(23));

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\timer1|varPartagee_sortie_out|ALT_INV_Q~1_combout\ <= NOT \timer1|varPartagee_sortie_out|Q~1_combout\;
\timer1|GD|ALT_INV_sortie~q\ <= NOT \timer1|GD|sortie~q\;
\timer1|GD|ALT_INV_charg_d~q\ <= NOT \timer1|GD|charg_d~q\;
\DCB3|ALT_INV_Mux0~0_combout\ <= NOT \DCB3|Mux0~0_combout\;
\DCB4|ALT_INV_Mux0~0_combout\ <= NOT \DCB4|Mux0~0_combout\;
\DCB5|ALT_INV_Mux0~0_combout\ <= NOT \DCB5|Mux0~0_combout\;
\DCB6|ALT_INV_Mux0~0_combout\ <= NOT \DCB6|Mux0~0_combout\;
\DCB2|ALT_INV_Mux0~0_combout\ <= NOT \DCB2|Mux0~0_combout\;
\DCB1|ALT_INV_Mux0~0_combout\ <= NOT \DCB1|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X46_Y54_N2
\LED[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LED[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LED[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LED[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LED[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY[0]~input_o\,
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LED[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LED[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LED[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timer1|varPartagee_charg_d|Q~1_combout\,
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LED[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timer1|varPartagee_sortie_out|ALT_INV_Q~1_combout\,
	devoe => ww_devoe,
	o => \LED[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LED[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Divide|inst|auto_generated|counter_reg_bit\(23),
	devoe => ww_devoe,
	o => \LED[9]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB6|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB6|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB6|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB6|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB6|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB6|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DCB3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLOCK_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G19
\CLOCK_50~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: LCCOMB_X1_Y38_N8
\Divide|inst|auto_generated|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita0~combout\ = \Divide|inst|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \Divide|inst|auto_generated|counter_comb_bita0~COUT\ = CARRY(\Divide|inst|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divide|inst|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \Divide|inst|auto_generated|counter_comb_bita0~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X1_Y38_N9
\Divide|inst|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X1_Y38_N10
\Divide|inst|auto_generated|counter_comb_bita1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita1~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(1) & (!\Divide|inst|auto_generated|counter_comb_bita0~COUT\)) # (!\Divide|inst|auto_generated|counter_reg_bit\(1) & 
-- ((\Divide|inst|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \Divide|inst|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\Divide|inst|auto_generated|counter_comb_bita0~COUT\) # (!\Divide|inst|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divide|inst|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita0~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita1~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X1_Y38_N11
\Divide|inst|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X1_Y38_N12
\Divide|inst|auto_generated|counter_comb_bita2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita2~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(2) & (\Divide|inst|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\Divide|inst|auto_generated|counter_reg_bit\(2) & 
-- (!\Divide|inst|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \Divide|inst|auto_generated|counter_comb_bita2~COUT\ = CARRY((\Divide|inst|auto_generated|counter_reg_bit\(2) & !\Divide|inst|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divide|inst|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita1~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita2~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X1_Y38_N13
\Divide|inst|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X1_Y38_N14
\Divide|inst|auto_generated|counter_comb_bita3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita3~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(3) & (!\Divide|inst|auto_generated|counter_comb_bita2~COUT\)) # (!\Divide|inst|auto_generated|counter_reg_bit\(3) & 
-- ((\Divide|inst|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \Divide|inst|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\Divide|inst|auto_generated|counter_comb_bita2~COUT\) # (!\Divide|inst|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divide|inst|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita2~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita3~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X1_Y38_N15
\Divide|inst|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X1_Y38_N16
\Divide|inst|auto_generated|counter_comb_bita4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita4~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(4) & (\Divide|inst|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\Divide|inst|auto_generated|counter_reg_bit\(4) & 
-- (!\Divide|inst|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \Divide|inst|auto_generated|counter_comb_bita4~COUT\ = CARRY((\Divide|inst|auto_generated|counter_reg_bit\(4) & !\Divide|inst|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divide|inst|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita3~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita4~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X1_Y38_N17
\Divide|inst|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X1_Y38_N18
\Divide|inst|auto_generated|counter_comb_bita5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita5~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(5) & (!\Divide|inst|auto_generated|counter_comb_bita4~COUT\)) # (!\Divide|inst|auto_generated|counter_reg_bit\(5) & 
-- ((\Divide|inst|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \Divide|inst|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\Divide|inst|auto_generated|counter_comb_bita4~COUT\) # (!\Divide|inst|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divide|inst|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita4~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita5~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X1_Y38_N19
\Divide|inst|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X1_Y38_N20
\Divide|inst|auto_generated|counter_comb_bita6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita6~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(6) & (\Divide|inst|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\Divide|inst|auto_generated|counter_reg_bit\(6) & 
-- (!\Divide|inst|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \Divide|inst|auto_generated|counter_comb_bita6~COUT\ = CARRY((\Divide|inst|auto_generated|counter_reg_bit\(6) & !\Divide|inst|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divide|inst|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita5~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita6~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X1_Y38_N21
\Divide|inst|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X1_Y38_N22
\Divide|inst|auto_generated|counter_comb_bita7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita7~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(7) & (!\Divide|inst|auto_generated|counter_comb_bita6~COUT\)) # (!\Divide|inst|auto_generated|counter_reg_bit\(7) & 
-- ((\Divide|inst|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \Divide|inst|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\Divide|inst|auto_generated|counter_comb_bita6~COUT\) # (!\Divide|inst|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divide|inst|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita6~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita7~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X1_Y38_N23
\Divide|inst|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X1_Y38_N24
\Divide|inst|auto_generated|counter_comb_bita8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita8~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(8) & (\Divide|inst|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\Divide|inst|auto_generated|counter_reg_bit\(8) & 
-- (!\Divide|inst|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \Divide|inst|auto_generated|counter_comb_bita8~COUT\ = CARRY((\Divide|inst|auto_generated|counter_reg_bit\(8) & !\Divide|inst|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divide|inst|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita7~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita8~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X1_Y38_N25
\Divide|inst|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X1_Y38_N26
\Divide|inst|auto_generated|counter_comb_bita9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita9~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(9) & (!\Divide|inst|auto_generated|counter_comb_bita8~COUT\)) # (!\Divide|inst|auto_generated|counter_reg_bit\(9) & 
-- ((\Divide|inst|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \Divide|inst|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\Divide|inst|auto_generated|counter_comb_bita8~COUT\) # (!\Divide|inst|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divide|inst|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita8~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita9~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X1_Y38_N27
\Divide|inst|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X1_Y38_N28
\Divide|inst|auto_generated|counter_comb_bita10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita10~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(10) & (\Divide|inst|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # (!\Divide|inst|auto_generated|counter_reg_bit\(10) & 
-- (!\Divide|inst|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \Divide|inst|auto_generated|counter_comb_bita10~COUT\ = CARRY((\Divide|inst|auto_generated|counter_reg_bit\(10) & !\Divide|inst|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divide|inst|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita9~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita10~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X1_Y38_N29
\Divide|inst|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X1_Y38_N30
\Divide|inst|auto_generated|counter_comb_bita11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita11~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(11) & (!\Divide|inst|auto_generated|counter_comb_bita10~COUT\)) # (!\Divide|inst|auto_generated|counter_reg_bit\(11) & 
-- ((\Divide|inst|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \Divide|inst|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\Divide|inst|auto_generated|counter_comb_bita10~COUT\) # (!\Divide|inst|auto_generated|counter_reg_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divide|inst|auto_generated|counter_reg_bit\(11),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita10~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita11~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X1_Y38_N31
\Divide|inst|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(11));

-- Location: LCCOMB_X1_Y37_N0
\Divide|inst|auto_generated|counter_comb_bita12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita12~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(12) & (\Divide|inst|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # (!\Divide|inst|auto_generated|counter_reg_bit\(12) & 
-- (!\Divide|inst|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \Divide|inst|auto_generated|counter_comb_bita12~COUT\ = CARRY((\Divide|inst|auto_generated|counter_reg_bit\(12) & !\Divide|inst|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divide|inst|auto_generated|counter_reg_bit\(12),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita11~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita12~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X1_Y37_N1
\Divide|inst|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(12));

-- Location: LCCOMB_X1_Y37_N2
\Divide|inst|auto_generated|counter_comb_bita13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita13~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(13) & (!\Divide|inst|auto_generated|counter_comb_bita12~COUT\)) # (!\Divide|inst|auto_generated|counter_reg_bit\(13) & 
-- ((\Divide|inst|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \Divide|inst|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\Divide|inst|auto_generated|counter_comb_bita12~COUT\) # (!\Divide|inst|auto_generated|counter_reg_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divide|inst|auto_generated|counter_reg_bit\(13),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita12~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita13~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X1_Y37_N3
\Divide|inst|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(13));

-- Location: LCCOMB_X1_Y37_N4
\Divide|inst|auto_generated|counter_comb_bita14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita14~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(14) & (\Divide|inst|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # (!\Divide|inst|auto_generated|counter_reg_bit\(14) & 
-- (!\Divide|inst|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \Divide|inst|auto_generated|counter_comb_bita14~COUT\ = CARRY((\Divide|inst|auto_generated|counter_reg_bit\(14) & !\Divide|inst|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divide|inst|auto_generated|counter_reg_bit\(14),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita13~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita14~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X1_Y37_N5
\Divide|inst|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(14));

-- Location: LCCOMB_X1_Y37_N6
\Divide|inst|auto_generated|counter_comb_bita15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita15~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(15) & (!\Divide|inst|auto_generated|counter_comb_bita14~COUT\)) # (!\Divide|inst|auto_generated|counter_reg_bit\(15) & 
-- ((\Divide|inst|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \Divide|inst|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\Divide|inst|auto_generated|counter_comb_bita14~COUT\) # (!\Divide|inst|auto_generated|counter_reg_bit\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divide|inst|auto_generated|counter_reg_bit\(15),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita14~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita15~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita15~COUT\);

-- Location: FF_X1_Y37_N7
\Divide|inst|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(15));

-- Location: LCCOMB_X1_Y37_N8
\Divide|inst|auto_generated|counter_comb_bita16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita16~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(16) & (\Divide|inst|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # (!\Divide|inst|auto_generated|counter_reg_bit\(16) & 
-- (!\Divide|inst|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \Divide|inst|auto_generated|counter_comb_bita16~COUT\ = CARRY((\Divide|inst|auto_generated|counter_reg_bit\(16) & !\Divide|inst|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divide|inst|auto_generated|counter_reg_bit\(16),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita15~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita16~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita16~COUT\);

-- Location: FF_X1_Y37_N9
\Divide|inst|auto_generated|counter_reg_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(16));

-- Location: LCCOMB_X1_Y37_N10
\Divide|inst|auto_generated|counter_comb_bita17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita17~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(17) & (!\Divide|inst|auto_generated|counter_comb_bita16~COUT\)) # (!\Divide|inst|auto_generated|counter_reg_bit\(17) & 
-- ((\Divide|inst|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \Divide|inst|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\Divide|inst|auto_generated|counter_comb_bita16~COUT\) # (!\Divide|inst|auto_generated|counter_reg_bit\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divide|inst|auto_generated|counter_reg_bit\(17),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita16~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita17~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita17~COUT\);

-- Location: FF_X1_Y37_N11
\Divide|inst|auto_generated|counter_reg_bit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(17));

-- Location: LCCOMB_X1_Y37_N12
\Divide|inst|auto_generated|counter_comb_bita18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita18~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(18) & (\Divide|inst|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # (!\Divide|inst|auto_generated|counter_reg_bit\(18) & 
-- (!\Divide|inst|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \Divide|inst|auto_generated|counter_comb_bita18~COUT\ = CARRY((\Divide|inst|auto_generated|counter_reg_bit\(18) & !\Divide|inst|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divide|inst|auto_generated|counter_reg_bit\(18),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita17~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita18~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita18~COUT\);

-- Location: FF_X1_Y37_N13
\Divide|inst|auto_generated|counter_reg_bit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(18));

-- Location: LCCOMB_X1_Y37_N14
\Divide|inst|auto_generated|counter_comb_bita19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita19~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(19) & (!\Divide|inst|auto_generated|counter_comb_bita18~COUT\)) # (!\Divide|inst|auto_generated|counter_reg_bit\(19) & 
-- ((\Divide|inst|auto_generated|counter_comb_bita18~COUT\) # (GND)))
-- \Divide|inst|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\Divide|inst|auto_generated|counter_comb_bita18~COUT\) # (!\Divide|inst|auto_generated|counter_reg_bit\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divide|inst|auto_generated|counter_reg_bit\(19),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita18~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita19~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita19~COUT\);

-- Location: FF_X1_Y37_N15
\Divide|inst|auto_generated|counter_reg_bit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(19));

-- Location: LCCOMB_X1_Y37_N16
\Divide|inst|auto_generated|counter_comb_bita20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita20~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(20) & (\Divide|inst|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # (!\Divide|inst|auto_generated|counter_reg_bit\(20) & 
-- (!\Divide|inst|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \Divide|inst|auto_generated|counter_comb_bita20~COUT\ = CARRY((\Divide|inst|auto_generated|counter_reg_bit\(20) & !\Divide|inst|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divide|inst|auto_generated|counter_reg_bit\(20),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita19~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita20~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita20~COUT\);

-- Location: FF_X1_Y37_N17
\Divide|inst|auto_generated|counter_reg_bit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(20));

-- Location: LCCOMB_X1_Y37_N18
\Divide|inst|auto_generated|counter_comb_bita21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita21~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(21) & (!\Divide|inst|auto_generated|counter_comb_bita20~COUT\)) # (!\Divide|inst|auto_generated|counter_reg_bit\(21) & 
-- ((\Divide|inst|auto_generated|counter_comb_bita20~COUT\) # (GND)))
-- \Divide|inst|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\Divide|inst|auto_generated|counter_comb_bita20~COUT\) # (!\Divide|inst|auto_generated|counter_reg_bit\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divide|inst|auto_generated|counter_reg_bit\(21),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita20~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita21~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita21~COUT\);

-- Location: FF_X1_Y37_N19
\Divide|inst|auto_generated|counter_reg_bit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(21));

-- Location: LCCOMB_X1_Y37_N20
\Divide|inst|auto_generated|counter_comb_bita22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita22~combout\ = (\Divide|inst|auto_generated|counter_reg_bit\(22) & (\Divide|inst|auto_generated|counter_comb_bita21~COUT\ $ (GND))) # (!\Divide|inst|auto_generated|counter_reg_bit\(22) & 
-- (!\Divide|inst|auto_generated|counter_comb_bita21~COUT\ & VCC))
-- \Divide|inst|auto_generated|counter_comb_bita22~COUT\ = CARRY((\Divide|inst|auto_generated|counter_reg_bit\(22) & !\Divide|inst|auto_generated|counter_comb_bita21~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divide|inst|auto_generated|counter_reg_bit\(22),
	datad => VCC,
	cin => \Divide|inst|auto_generated|counter_comb_bita21~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita22~combout\,
	cout => \Divide|inst|auto_generated|counter_comb_bita22~COUT\);

-- Location: FF_X1_Y37_N21
\Divide|inst|auto_generated|counter_reg_bit[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(22));

-- Location: LCCOMB_X1_Y37_N22
\Divide|inst|auto_generated|counter_comb_bita23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Divide|inst|auto_generated|counter_comb_bita23~combout\ = \Divide|inst|auto_generated|counter_comb_bita22~COUT\ $ (\Divide|inst|auto_generated|counter_reg_bit\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Divide|inst|auto_generated|counter_reg_bit\(23),
	cin => \Divide|inst|auto_generated|counter_comb_bita22~COUT\,
	combout => \Divide|inst|auto_generated|counter_comb_bita23~combout\);

-- Location: FF_X1_Y37_N23
\Divide|inst|auto_generated|counter_reg_bit[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Divide|inst|auto_generated|counter_comb_bita23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divide|inst|auto_generated|counter_reg_bit\(23));

-- Location: CLKCTRL_G4
\Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\);

-- Location: FF_X55_Y52_N25
\timer1|D1|resetChargement|resetCharge_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	asdata => \timer1|varPartagee_charg_d|Q~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|D1|resetChargement|resetCharge_d~q\);

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X47_Y52_N30
\timer1|GD|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|Mux0~0_combout\ = (\SW[7]~input_o\) # (\SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	combout => \timer1|GD|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y52_N18
\timer1|GD|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|process_0~0_combout\ = (\SW[1]~input_o\ & (\SW[2]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \timer1|GD|process_0~0_combout\);

-- Location: LCCOMB_X46_Y52_N22
\timer1|GD|sortie~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|sortie~0_combout\ = (!\SW[0]~input_o\ & (\SW[1]~input_o\ & ((\timer1|GD|D_RW.Latch~q\) # (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \timer1|GD|D_RW.Latch~q\,
	datad => \SW[1]~input_o\,
	combout => \timer1|GD|sortie~0_combout\);

-- Location: LCCOMB_X46_Y52_N4
\timer1|GD|sortie~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|sortie~1_combout\ = (\timer1|GD|sortie~0_combout\ & ((\timer1|GD|sortie~q\) # (!\timer1|GD|charg_d~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GD|sortie~0_combout\,
	datac => \timer1|GD|sortie~q\,
	datad => \timer1|GD|charg_d~q\,
	combout => \timer1|GD|sortie~1_combout\);

-- Location: FF_X46_Y52_N5
\timer1|GD|sortie\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|sortie~1_combout\,
	clrn => \timer1|GD|ALT_INV_sortie~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|sortie~q\);

-- Location: LCCOMB_X47_Y52_N26
\timer1|GD|D_RW.LeastMost~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|D_RW.LeastMost~5_combout\ = (\timer1|GD|process_0~0_combout\ & (!\timer1|GD|sortie~q\ & !\timer1|GD|charg_d~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GD|process_0~0_combout\,
	datac => \timer1|GD|sortie~q\,
	datad => \timer1|GD|charg_d~q\,
	combout => \timer1|GD|D_RW.LeastMost~5_combout\);

-- Location: FF_X46_Y52_N23
\timer1|GD|D_RW.Latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \timer1|GD|Mux0~0_combout\,
	sload => VCC,
	ena => \timer1|GD|D_RW.LeastMost~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|D_RW.Latch~q\);

-- Location: LCCOMB_X46_Y52_N30
\timer1|GD|RW_op.LeastMost~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|RW_op.LeastMost~0_combout\ = (\timer1|GD|D_RW.Latch~q\ & (\timer1|GD|process_0~0_combout\ & (!\timer1|GD|sortie~q\ & !\timer1|GD|charg_d~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|D_RW.Latch~q\,
	datab => \timer1|GD|process_0~0_combout\,
	datac => \timer1|GD|sortie~q\,
	datad => \timer1|GD|charg_d~q\,
	combout => \timer1|GD|RW_op.LeastMost~0_combout\);

-- Location: LCCOMB_X47_Y52_N4
\timer1|GD|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|Mux2~1_combout\ = (\SW[7]~input_o\ & \SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	combout => \timer1|GD|Mux2~1_combout\);

-- Location: FF_X47_Y52_N5
\timer1|GD|D_RW.LeastMost\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|Mux2~1_combout\,
	ena => \timer1|GD|D_RW.LeastMost~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|D_RW.LeastMost~q\);

-- Location: LCCOMB_X46_Y52_N10
\timer1|GD|RW_op.LeastMost~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|RW_op.LeastMost~1_combout\ = (\timer1|GD|RW_op.LeastMost~0_combout\ & ((\timer1|GD|D_RW.LeastMost~q\))) # (!\timer1|GD|RW_op.LeastMost~0_combout\ & (\timer1|GD|RW_op.LeastMost~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|RW_op.LeastMost~0_combout\,
	datac => \timer1|GD|RW_op.LeastMost~q\,
	datad => \timer1|GD|D_RW.LeastMost~q\,
	combout => \timer1|GD|RW_op.LeastMost~1_combout\);

-- Location: FF_X46_Y52_N11
\timer1|GD|RW_op.LeastMost\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|RW_op.LeastMost~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|RW_op.LeastMost~q\);

-- Location: LCCOMB_X46_Y52_N28
\timer1|GD|D_RW.LeastMost~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|D_RW.LeastMost~4_combout\ = (!\timer1|GD|sortie~q\ & !\timer1|GD|charg_d~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer1|GD|sortie~q\,
	datad => \timer1|GD|charg_d~q\,
	combout => \timer1|GD|D_RW.LeastMost~4_combout\);

-- Location: LCCOMB_X47_Y52_N24
\timer1|GD|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|Mux2~0_combout\ = (\SW[7]~input_o\ & !\SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	combout => \timer1|GD|Mux2~0_combout\);

-- Location: FF_X47_Y52_N25
\timer1|GD|D_RW.Most\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|Mux2~0_combout\,
	ena => \timer1|GD|D_RW.LeastMost~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|D_RW.Most~q\);

-- Location: LCCOMB_X46_Y52_N24
\timer1|GD|Etat_w~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|Etat_w~0_combout\ = (\timer1|GD|process_0~0_combout\ & (((\timer1|GD|D_RW.Most~q\)))) # (!\timer1|GD|process_0~0_combout\ & (\timer1|GD|RW_op.LeastMost~q\ $ ((\timer1|GD|Etat_w~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|RW_op.LeastMost~q\,
	datab => \timer1|GD|Etat_w~q\,
	datac => \timer1|GD|process_0~0_combout\,
	datad => \timer1|GD|D_RW.Most~q\,
	combout => \timer1|GD|Etat_w~0_combout\);

-- Location: LCCOMB_X46_Y52_N8
\timer1|GD|Etat_w~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|Etat_w~1_combout\ = (\timer1|GD|sortie~0_combout\ & ((\timer1|GD|D_RW.LeastMost~4_combout\ & ((\timer1|GD|Etat_w~0_combout\))) # (!\timer1|GD|D_RW.LeastMost~4_combout\ & (\timer1|GD|Etat_w~q\)))) # (!\timer1|GD|sortie~0_combout\ & 
-- (((\timer1|GD|Etat_w~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|sortie~0_combout\,
	datab => \timer1|GD|D_RW.LeastMost~4_combout\,
	datac => \timer1|GD|Etat_w~q\,
	datad => \timer1|GD|Etat_w~0_combout\,
	combout => \timer1|GD|Etat_w~1_combout\);

-- Location: FF_X46_Y52_N9
\timer1|GD|Etat_w\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|Etat_w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|Etat_w~q\);

-- Location: LCCOMB_X47_Y52_N10
\timer1|GD|charg_d~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|charg_d~0_combout\ = (!\SW[0]~input_o\ & (!\SW[2]~input_o\ & (!\timer1|GD|sortie~q\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \timer1|GD|sortie~q\,
	datad => \SW[1]~input_o\,
	combout => \timer1|GD|charg_d~0_combout\);

-- Location: LCCOMB_X47_Y52_N28
\timer1|GD|charg_d~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|charg_d~1_combout\ = (\timer1|GD|charg_d~0_combout\ & ((\timer1|GD|Etat_w~q\) # (!\timer1|GD|RW_op.LeastMost~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|RW_op.LeastMost~q\,
	datac => \timer1|GD|Etat_w~q\,
	datad => \timer1|GD|charg_d~0_combout\,
	combout => \timer1|GD|charg_d~1_combout\);

-- Location: FF_X47_Y52_N29
\timer1|GD|charg_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|charg_d~1_combout\,
	clrn => \timer1|GD|ALT_INV_charg_d~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|charg_d~q\);

-- Location: LCCOMB_X54_Y52_N0
\timer1|varPartagee_charg_d|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|varPartagee_charg_d|Q~1_combout\ = (!\timer1|D1|resetChargement|resetCharge_d~q\ & ((\timer1|varPartagee_charg_d|Q~1_combout\) # (\timer1|GD|charg_d~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|D1|resetChargement|resetCharge_d~q\,
	datac => \timer1|varPartagee_charg_d|Q~1_combout\,
	datad => \timer1|GD|charg_d~q\,
	combout => \timer1|varPartagee_charg_d|Q~1_combout\);

-- Location: LCCOMB_X51_Y52_N0
\timer1|D1|dec1|count_val[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|dec1|count_val[0]~16_combout\ = \timer1|D1|dec1|count_val\(0) $ (VCC)
-- \timer1|D1|dec1|count_val[0]~17\ = CARRY(\timer1|D1|dec1|count_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|D1|dec1|count_val\(0),
	datad => VCC,
	combout => \timer1|D1|dec1|count_val[0]~16_combout\,
	cout => \timer1|D1|dec1|count_val[0]~17\);

-- Location: LCCOMB_X46_Y50_N16
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X51_Y53_N16
\timer1|D1|dec1|count_val[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|dec1|count_val[9]~18_combout\ = (\timer1|varPartagee_charg_d|Q~1_combout\) # (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer1|varPartagee_charg_d|Q~1_combout\,
	datad => \SW[3]~input_o\,
	combout => \timer1|D1|dec1|count_val[9]~18_combout\);

-- Location: FF_X51_Y52_N1
\timer1|D1|dec1|count_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \timer1|D1|dec1|count_val[0]~16_combout\,
	asdata => \~GND~combout\,
	sload => \timer1|varPartagee_charg_d|Q~1_combout\,
	ena => \timer1|D1|dec1|count_val[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|D1|dec1|count_val\(0));

-- Location: LCCOMB_X51_Y52_N2
\timer1|D1|dec1|count_val[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|dec1|count_val[1]~19_combout\ = (\timer1|D1|dec1|count_val\(1) & (\timer1|D1|dec1|count_val[0]~17\ & VCC)) # (!\timer1|D1|dec1|count_val\(1) & (!\timer1|D1|dec1|count_val[0]~17\))
-- \timer1|D1|dec1|count_val[1]~20\ = CARRY((!\timer1|D1|dec1|count_val\(1) & !\timer1|D1|dec1|count_val[0]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer1|D1|dec1|count_val\(1),
	datad => VCC,
	cin => \timer1|D1|dec1|count_val[0]~17\,
	combout => \timer1|D1|dec1|count_val[1]~19_combout\,
	cout => \timer1|D1|dec1|count_val[1]~20\);

-- Location: FF_X51_Y52_N3
\timer1|D1|dec1|count_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \timer1|D1|dec1|count_val[1]~19_combout\,
	asdata => \~GND~combout\,
	sload => \timer1|varPartagee_charg_d|Q~1_combout\,
	ena => \timer1|D1|dec1|count_val[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|D1|dec1|count_val\(1));

-- Location: LCCOMB_X51_Y52_N4
\timer1|D1|dec1|count_val[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|dec1|count_val[2]~21_combout\ = (\timer1|D1|dec1|count_val\(2) & ((GND) # (!\timer1|D1|dec1|count_val[1]~20\))) # (!\timer1|D1|dec1|count_val\(2) & (\timer1|D1|dec1|count_val[1]~20\ $ (GND)))
-- \timer1|D1|dec1|count_val[2]~22\ = CARRY((\timer1|D1|dec1|count_val\(2)) # (!\timer1|D1|dec1|count_val[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer1|D1|dec1|count_val\(2),
	datad => VCC,
	cin => \timer1|D1|dec1|count_val[1]~20\,
	combout => \timer1|D1|dec1|count_val[2]~21_combout\,
	cout => \timer1|D1|dec1|count_val[2]~22\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X50_Y52_N6
\timer1|GD|d_buf_sortie~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|d_buf_sortie~0_combout\ = (!\timer1|GD|Etat_w~q\ & \SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GD|Etat_w~q\,
	datac => \SW[4]~input_o\,
	combout => \timer1|GD|d_buf_sortie~0_combout\);

-- Location: LCCOMB_X50_Y52_N30
\timer1|GD|d_buf_sortie[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|d_buf_sortie[2]~1_combout\ = (\SW[1]~input_o\ & (!\SW[2]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \timer1|GD|d_buf_sortie[2]~1_combout\);

-- Location: LCCOMB_X50_Y52_N12
\timer1|GD|d_buf_sortie[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|d_buf_sortie[2]~2_combout\ = (\timer1|GD|d_buf_sortie[2]~1_combout\ & (\timer1|GD|D_RW.LeastMost~4_combout\ & ((!\timer1|GD|Etat_w~q\) # (!\timer1|GD|RW_op.LeastMost~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|d_buf_sortie[2]~1_combout\,
	datab => \timer1|GD|RW_op.LeastMost~q\,
	datac => \timer1|GD|Etat_w~q\,
	datad => \timer1|GD|D_RW.LeastMost~4_combout\,
	combout => \timer1|GD|d_buf_sortie[2]~2_combout\);

-- Location: FF_X50_Y52_N7
\timer1|GD|d_buf_sortie[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|d_buf_sortie~0_combout\,
	ena => \timer1|GD|d_buf_sortie[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|d_buf_sortie\(2));

-- Location: FF_X51_Y52_N5
\timer1|D1|dec1|count_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \timer1|D1|dec1|count_val[2]~21_combout\,
	asdata => \timer1|GD|d_buf_sortie\(2),
	sload => \timer1|varPartagee_charg_d|Q~1_combout\,
	ena => \timer1|D1|dec1|count_val[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|D1|dec1|count_val\(2));

-- Location: LCCOMB_X51_Y52_N6
\timer1|D1|dec1|count_val[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|dec1|count_val[3]~23_combout\ = (\timer1|D1|dec1|count_val\(3) & (\timer1|D1|dec1|count_val[2]~22\ & VCC)) # (!\timer1|D1|dec1|count_val\(3) & (!\timer1|D1|dec1|count_val[2]~22\))
-- \timer1|D1|dec1|count_val[3]~24\ = CARRY((!\timer1|D1|dec1|count_val\(3) & !\timer1|D1|dec1|count_val[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|D1|dec1|count_val\(3),
	datad => VCC,
	cin => \timer1|D1|dec1|count_val[2]~22\,
	combout => \timer1|D1|dec1|count_val[3]~23_combout\,
	cout => \timer1|D1|dec1|count_val[3]~24\);

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X50_Y52_N0
\timer1|GD|d_buf_sortie~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|d_buf_sortie~3_combout\ = (!\timer1|GD|Etat_w~q\ & \SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GD|Etat_w~q\,
	datac => \SW[5]~input_o\,
	combout => \timer1|GD|d_buf_sortie~3_combout\);

-- Location: FF_X50_Y52_N1
\timer1|GD|d_buf_sortie[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|d_buf_sortie~3_combout\,
	ena => \timer1|GD|d_buf_sortie[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|d_buf_sortie\(3));

-- Location: FF_X51_Y52_N7
\timer1|D1|dec1|count_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \timer1|D1|dec1|count_val[3]~23_combout\,
	asdata => \timer1|GD|d_buf_sortie\(3),
	sload => \timer1|varPartagee_charg_d|Q~1_combout\,
	ena => \timer1|D1|dec1|count_val[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|D1|dec1|count_val\(3));

-- Location: LCCOMB_X51_Y52_N8
\timer1|D1|dec1|count_val[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|dec1|count_val[4]~25_combout\ = (\timer1|D1|dec1|count_val\(4) & ((GND) # (!\timer1|D1|dec1|count_val[3]~24\))) # (!\timer1|D1|dec1|count_val\(4) & (\timer1|D1|dec1|count_val[3]~24\ $ (GND)))
-- \timer1|D1|dec1|count_val[4]~26\ = CARRY((\timer1|D1|dec1|count_val\(4)) # (!\timer1|D1|dec1|count_val[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer1|D1|dec1|count_val\(4),
	datad => VCC,
	cin => \timer1|D1|dec1|count_val[3]~24\,
	combout => \timer1|D1|dec1|count_val[4]~25_combout\,
	cout => \timer1|D1|dec1|count_val[4]~26\);

-- Location: LCCOMB_X50_Y52_N2
\timer1|GD|d_buf_sortie~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|d_buf_sortie~4_combout\ = (!\timer1|GD|Etat_w~q\ & \SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer1|GD|Etat_w~q\,
	datad => \SW[6]~input_o\,
	combout => \timer1|GD|d_buf_sortie~4_combout\);

-- Location: FF_X50_Y52_N3
\timer1|GD|d_buf_sortie[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|d_buf_sortie~4_combout\,
	ena => \timer1|GD|d_buf_sortie[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|d_buf_sortie\(4));

-- Location: FF_X51_Y52_N9
\timer1|D1|dec1|count_val[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \timer1|D1|dec1|count_val[4]~25_combout\,
	asdata => \timer1|GD|d_buf_sortie\(4),
	sload => \timer1|varPartagee_charg_d|Q~1_combout\,
	ena => \timer1|D1|dec1|count_val[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|D1|dec1|count_val\(4));

-- Location: LCCOMB_X51_Y52_N10
\timer1|D1|dec1|count_val[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|dec1|count_val[5]~27_combout\ = (\timer1|D1|dec1|count_val\(5) & (\timer1|D1|dec1|count_val[4]~26\ & VCC)) # (!\timer1|D1|dec1|count_val\(5) & (!\timer1|D1|dec1|count_val[4]~26\))
-- \timer1|D1|dec1|count_val[5]~28\ = CARRY((!\timer1|D1|dec1|count_val\(5) & !\timer1|D1|dec1|count_val[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|D1|dec1|count_val\(5),
	datad => VCC,
	cin => \timer1|D1|dec1|count_val[4]~26\,
	combout => \timer1|D1|dec1|count_val[5]~27_combout\,
	cout => \timer1|D1|dec1|count_val[5]~28\);

-- Location: LCCOMB_X50_Y52_N16
\timer1|GD|d_buf_sortie~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|d_buf_sortie~5_combout\ = (\SW[7]~input_o\ & !\timer1|GD|Etat_w~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datac => \timer1|GD|Etat_w~q\,
	combout => \timer1|GD|d_buf_sortie~5_combout\);

-- Location: FF_X50_Y52_N17
\timer1|GD|d_buf_sortie[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|d_buf_sortie~5_combout\,
	ena => \timer1|GD|d_buf_sortie[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|d_buf_sortie\(5));

-- Location: FF_X51_Y52_N11
\timer1|D1|dec1|count_val[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \timer1|D1|dec1|count_val[5]~27_combout\,
	asdata => \timer1|GD|d_buf_sortie\(5),
	sload => \timer1|varPartagee_charg_d|Q~1_combout\,
	ena => \timer1|D1|dec1|count_val[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|D1|dec1|count_val\(5));

-- Location: LCCOMB_X51_Y52_N12
\timer1|D1|dec1|count_val[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|dec1|count_val[6]~29_combout\ = (\timer1|D1|dec1|count_val\(6) & ((GND) # (!\timer1|D1|dec1|count_val[5]~28\))) # (!\timer1|D1|dec1|count_val\(6) & (\timer1|D1|dec1|count_val[5]~28\ $ (GND)))
-- \timer1|D1|dec1|count_val[6]~30\ = CARRY((\timer1|D1|dec1|count_val\(6)) # (!\timer1|D1|dec1|count_val[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|D1|dec1|count_val\(6),
	datad => VCC,
	cin => \timer1|D1|dec1|count_val[5]~28\,
	combout => \timer1|D1|dec1|count_val[6]~29_combout\,
	cout => \timer1|D1|dec1|count_val[6]~30\);

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X50_Y52_N26
\timer1|GD|d_buf_sortie~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|d_buf_sortie~6_combout\ = (!\timer1|GD|Etat_w~q\ & \SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GD|Etat_w~q\,
	datac => \SW[8]~input_o\,
	combout => \timer1|GD|d_buf_sortie~6_combout\);

-- Location: FF_X50_Y52_N27
\timer1|GD|d_buf_sortie[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|d_buf_sortie~6_combout\,
	ena => \timer1|GD|d_buf_sortie[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|d_buf_sortie\(6));

-- Location: FF_X51_Y52_N13
\timer1|D1|dec1|count_val[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \timer1|D1|dec1|count_val[6]~29_combout\,
	asdata => \timer1|GD|d_buf_sortie\(6),
	sload => \timer1|varPartagee_charg_d|Q~1_combout\,
	ena => \timer1|D1|dec1|count_val[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|D1|dec1|count_val\(6));

-- Location: LCCOMB_X51_Y52_N14
\timer1|D1|dec1|count_val[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|dec1|count_val[7]~31_combout\ = (\timer1|D1|dec1|count_val\(7) & (\timer1|D1|dec1|count_val[6]~30\ & VCC)) # (!\timer1|D1|dec1|count_val\(7) & (!\timer1|D1|dec1|count_val[6]~30\))
-- \timer1|D1|dec1|count_val[7]~32\ = CARRY((!\timer1|D1|dec1|count_val\(7) & !\timer1|D1|dec1|count_val[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer1|D1|dec1|count_val\(7),
	datad => VCC,
	cin => \timer1|D1|dec1|count_val[6]~30\,
	combout => \timer1|D1|dec1|count_val[7]~31_combout\,
	cout => \timer1|D1|dec1|count_val[7]~32\);

-- Location: IOIBUF_X69_Y54_N1
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X50_Y52_N28
\timer1|GD|d_buf_sortie~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|d_buf_sortie~7_combout\ = (!\timer1|GD|Etat_w~q\ & \SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GD|Etat_w~q\,
	datac => \SW[9]~input_o\,
	combout => \timer1|GD|d_buf_sortie~7_combout\);

-- Location: FF_X50_Y52_N29
\timer1|GD|d_buf_sortie[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|d_buf_sortie~7_combout\,
	ena => \timer1|GD|d_buf_sortie[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|d_buf_sortie\(7));

-- Location: FF_X51_Y52_N15
\timer1|D1|dec1|count_val[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \timer1|D1|dec1|count_val[7]~31_combout\,
	asdata => \timer1|GD|d_buf_sortie\(7),
	sload => \timer1|varPartagee_charg_d|Q~1_combout\,
	ena => \timer1|D1|dec1|count_val[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|D1|dec1|count_val\(7));

-- Location: LCCOMB_X52_Y52_N26
\timer1|D1|zeroDetection|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|zeroDetection|Equal0~1_combout\ = (!\timer1|D1|dec1|count_val\(6) & (!\timer1|D1|dec1|count_val\(7) & (!\timer1|D1|dec1|count_val\(5) & !\timer1|D1|dec1|count_val\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|D1|dec1|count_val\(6),
	datab => \timer1|D1|dec1|count_val\(7),
	datac => \timer1|D1|dec1|count_val\(5),
	datad => \timer1|D1|dec1|count_val\(4),
	combout => \timer1|D1|zeroDetection|Equal0~1_combout\);

-- Location: LCCOMB_X51_Y52_N16
\timer1|D1|dec1|count_val[8]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|dec1|count_val[8]~33_combout\ = (\timer1|D1|dec1|count_val\(8) & ((GND) # (!\timer1|D1|dec1|count_val[7]~32\))) # (!\timer1|D1|dec1|count_val\(8) & (\timer1|D1|dec1|count_val[7]~32\ $ (GND)))
-- \timer1|D1|dec1|count_val[8]~34\ = CARRY((\timer1|D1|dec1|count_val\(8)) # (!\timer1|D1|dec1|count_val[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer1|D1|dec1|count_val\(8),
	datad => VCC,
	cin => \timer1|D1|dec1|count_val[7]~32\,
	combout => \timer1|D1|dec1|count_val[8]~33_combout\,
	cout => \timer1|D1|dec1|count_val[8]~34\);

-- Location: FF_X51_Y52_N17
\timer1|D1|dec1|count_val[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \timer1|D1|dec1|count_val[8]~33_combout\,
	asdata => \~GND~combout\,
	sload => \timer1|varPartagee_charg_d|Q~1_combout\,
	ena => \timer1|D1|dec1|count_val[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|D1|dec1|count_val\(8));

-- Location: LCCOMB_X51_Y52_N18
\timer1|D1|dec1|count_val[9]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|dec1|count_val[9]~35_combout\ = (\timer1|D1|dec1|count_val\(9) & (\timer1|D1|dec1|count_val[8]~34\ & VCC)) # (!\timer1|D1|dec1|count_val\(9) & (!\timer1|D1|dec1|count_val[8]~34\))
-- \timer1|D1|dec1|count_val[9]~36\ = CARRY((!\timer1|D1|dec1|count_val\(9) & !\timer1|D1|dec1|count_val[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer1|D1|dec1|count_val\(9),
	datad => VCC,
	cin => \timer1|D1|dec1|count_val[8]~34\,
	combout => \timer1|D1|dec1|count_val[9]~35_combout\,
	cout => \timer1|D1|dec1|count_val[9]~36\);

-- Location: FF_X51_Y52_N19
\timer1|D1|dec1|count_val[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \timer1|D1|dec1|count_val[9]~35_combout\,
	asdata => \~GND~combout\,
	sload => \timer1|varPartagee_charg_d|Q~1_combout\,
	ena => \timer1|D1|dec1|count_val[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|D1|dec1|count_val\(9));

-- Location: LCCOMB_X51_Y52_N20
\timer1|D1|dec1|count_val[10]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|dec1|count_val[10]~37_combout\ = (\timer1|D1|dec1|count_val\(10) & ((GND) # (!\timer1|D1|dec1|count_val[9]~36\))) # (!\timer1|D1|dec1|count_val\(10) & (\timer1|D1|dec1|count_val[9]~36\ $ (GND)))
-- \timer1|D1|dec1|count_val[10]~38\ = CARRY((\timer1|D1|dec1|count_val\(10)) # (!\timer1|D1|dec1|count_val[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer1|D1|dec1|count_val\(10),
	datad => VCC,
	cin => \timer1|D1|dec1|count_val[9]~36\,
	combout => \timer1|D1|dec1|count_val[10]~37_combout\,
	cout => \timer1|D1|dec1|count_val[10]~38\);

-- Location: LCCOMB_X50_Y52_N14
\timer1|GD|d_buf_sortie~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|d_buf_sortie~8_combout\ = (\timer1|GD|Etat_w~q\ & \SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GD|Etat_w~q\,
	datac => \SW[4]~input_o\,
	combout => \timer1|GD|d_buf_sortie~8_combout\);

-- Location: LCCOMB_X50_Y52_N18
\timer1|GD|d_buf_sortie[10]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|d_buf_sortie[10]~9_combout\ = (\timer1|GD|d_buf_sortie[2]~1_combout\ & (\timer1|GD|D_RW.LeastMost~4_combout\ & ((\timer1|GD|Etat_w~q\) # (!\timer1|GD|RW_op.LeastMost~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|d_buf_sortie[2]~1_combout\,
	datab => \timer1|GD|RW_op.LeastMost~q\,
	datac => \timer1|GD|Etat_w~q\,
	datad => \timer1|GD|D_RW.LeastMost~4_combout\,
	combout => \timer1|GD|d_buf_sortie[10]~9_combout\);

-- Location: FF_X50_Y52_N15
\timer1|GD|d_buf_sortie[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|d_buf_sortie~8_combout\,
	ena => \timer1|GD|d_buf_sortie[10]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|d_buf_sortie\(10));

-- Location: FF_X51_Y52_N21
\timer1|D1|dec1|count_val[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \timer1|D1|dec1|count_val[10]~37_combout\,
	asdata => \timer1|GD|d_buf_sortie\(10),
	sload => \timer1|varPartagee_charg_d|Q~1_combout\,
	ena => \timer1|D1|dec1|count_val[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|D1|dec1|count_val\(10));

-- Location: LCCOMB_X51_Y52_N22
\timer1|D1|dec1|count_val[11]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|dec1|count_val[11]~39_combout\ = (\timer1|D1|dec1|count_val\(11) & (\timer1|D1|dec1|count_val[10]~38\ & VCC)) # (!\timer1|D1|dec1|count_val\(11) & (!\timer1|D1|dec1|count_val[10]~38\))
-- \timer1|D1|dec1|count_val[11]~40\ = CARRY((!\timer1|D1|dec1|count_val\(11) & !\timer1|D1|dec1|count_val[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|D1|dec1|count_val\(11),
	datad => VCC,
	cin => \timer1|D1|dec1|count_val[10]~38\,
	combout => \timer1|D1|dec1|count_val[11]~39_combout\,
	cout => \timer1|D1|dec1|count_val[11]~40\);

-- Location: LCCOMB_X50_Y52_N4
\timer1|GD|d_buf_sortie~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|d_buf_sortie~10_combout\ = (\timer1|GD|Etat_w~q\ & \SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GD|Etat_w~q\,
	datac => \SW[5]~input_o\,
	combout => \timer1|GD|d_buf_sortie~10_combout\);

-- Location: FF_X50_Y52_N5
\timer1|GD|d_buf_sortie[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|d_buf_sortie~10_combout\,
	ena => \timer1|GD|d_buf_sortie[10]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|d_buf_sortie\(11));

-- Location: FF_X51_Y52_N23
\timer1|D1|dec1|count_val[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \timer1|D1|dec1|count_val[11]~39_combout\,
	asdata => \timer1|GD|d_buf_sortie\(11),
	sload => \timer1|varPartagee_charg_d|Q~1_combout\,
	ena => \timer1|D1|dec1|count_val[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|D1|dec1|count_val\(11));

-- Location: LCCOMB_X51_Y52_N24
\timer1|D1|dec1|count_val[12]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|dec1|count_val[12]~41_combout\ = (\timer1|D1|dec1|count_val\(12) & ((GND) # (!\timer1|D1|dec1|count_val[11]~40\))) # (!\timer1|D1|dec1|count_val\(12) & (\timer1|D1|dec1|count_val[11]~40\ $ (GND)))
-- \timer1|D1|dec1|count_val[12]~42\ = CARRY((\timer1|D1|dec1|count_val\(12)) # (!\timer1|D1|dec1|count_val[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer1|D1|dec1|count_val\(12),
	datad => VCC,
	cin => \timer1|D1|dec1|count_val[11]~40\,
	combout => \timer1|D1|dec1|count_val[12]~41_combout\,
	cout => \timer1|D1|dec1|count_val[12]~42\);

-- Location: LCCOMB_X50_Y52_N22
\timer1|GD|d_buf_sortie~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|d_buf_sortie~11_combout\ = (\timer1|GD|Etat_w~q\ & \SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer1|GD|Etat_w~q\,
	datad => \SW[6]~input_o\,
	combout => \timer1|GD|d_buf_sortie~11_combout\);

-- Location: FF_X50_Y52_N23
\timer1|GD|d_buf_sortie[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|d_buf_sortie~11_combout\,
	ena => \timer1|GD|d_buf_sortie[10]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|d_buf_sortie\(12));

-- Location: FF_X51_Y52_N25
\timer1|D1|dec1|count_val[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \timer1|D1|dec1|count_val[12]~41_combout\,
	asdata => \timer1|GD|d_buf_sortie\(12),
	sload => \timer1|varPartagee_charg_d|Q~1_combout\,
	ena => \timer1|D1|dec1|count_val[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|D1|dec1|count_val\(12));

-- Location: LCCOMB_X51_Y52_N26
\timer1|D1|dec1|count_val[13]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|dec1|count_val[13]~43_combout\ = (\timer1|D1|dec1|count_val\(13) & (\timer1|D1|dec1|count_val[12]~42\ & VCC)) # (!\timer1|D1|dec1|count_val\(13) & (!\timer1|D1|dec1|count_val[12]~42\))
-- \timer1|D1|dec1|count_val[13]~44\ = CARRY((!\timer1|D1|dec1|count_val\(13) & !\timer1|D1|dec1|count_val[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|D1|dec1|count_val\(13),
	datad => VCC,
	cin => \timer1|D1|dec1|count_val[12]~42\,
	combout => \timer1|D1|dec1|count_val[13]~43_combout\,
	cout => \timer1|D1|dec1|count_val[13]~44\);

-- Location: LCCOMB_X50_Y52_N20
\timer1|GD|d_buf_sortie~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|d_buf_sortie~12_combout\ = (\SW[7]~input_o\ & \timer1|GD|Etat_w~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datac => \timer1|GD|Etat_w~q\,
	combout => \timer1|GD|d_buf_sortie~12_combout\);

-- Location: FF_X50_Y52_N21
\timer1|GD|d_buf_sortie[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|d_buf_sortie~12_combout\,
	ena => \timer1|GD|d_buf_sortie[10]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|d_buf_sortie\(13));

-- Location: FF_X51_Y52_N27
\timer1|D1|dec1|count_val[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \timer1|D1|dec1|count_val[13]~43_combout\,
	asdata => \timer1|GD|d_buf_sortie\(13),
	sload => \timer1|varPartagee_charg_d|Q~1_combout\,
	ena => \timer1|D1|dec1|count_val[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|D1|dec1|count_val\(13));

-- Location: LCCOMB_X51_Y52_N28
\timer1|D1|dec1|count_val[14]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|dec1|count_val[14]~45_combout\ = (\timer1|D1|dec1|count_val\(14) & ((GND) # (!\timer1|D1|dec1|count_val[13]~44\))) # (!\timer1|D1|dec1|count_val\(14) & (\timer1|D1|dec1|count_val[13]~44\ $ (GND)))
-- \timer1|D1|dec1|count_val[14]~46\ = CARRY((\timer1|D1|dec1|count_val\(14)) # (!\timer1|D1|dec1|count_val[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer1|D1|dec1|count_val\(14),
	datad => VCC,
	cin => \timer1|D1|dec1|count_val[13]~44\,
	combout => \timer1|D1|dec1|count_val[14]~45_combout\,
	cout => \timer1|D1|dec1|count_val[14]~46\);

-- Location: LCCOMB_X50_Y52_N10
\timer1|GD|d_buf_sortie~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|d_buf_sortie~13_combout\ = (\timer1|GD|Etat_w~q\ & \SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GD|Etat_w~q\,
	datac => \SW[8]~input_o\,
	combout => \timer1|GD|d_buf_sortie~13_combout\);

-- Location: FF_X50_Y52_N11
\timer1|GD|d_buf_sortie[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|d_buf_sortie~13_combout\,
	ena => \timer1|GD|d_buf_sortie[10]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|d_buf_sortie\(14));

-- Location: FF_X51_Y52_N29
\timer1|D1|dec1|count_val[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \timer1|D1|dec1|count_val[14]~45_combout\,
	asdata => \timer1|GD|d_buf_sortie\(14),
	sload => \timer1|varPartagee_charg_d|Q~1_combout\,
	ena => \timer1|D1|dec1|count_val[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|D1|dec1|count_val\(14));

-- Location: LCCOMB_X51_Y52_N30
\timer1|D1|dec1|count_val[15]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|dec1|count_val[15]~47_combout\ = \timer1|D1|dec1|count_val\(15) $ (!\timer1|D1|dec1|count_val[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|D1|dec1|count_val\(15),
	cin => \timer1|D1|dec1|count_val[14]~46\,
	combout => \timer1|D1|dec1|count_val[15]~47_combout\);

-- Location: LCCOMB_X50_Y52_N24
\timer1|GD|d_buf_sortie~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|d_buf_sortie~14_combout\ = (\timer1|GD|Etat_w~q\ & \SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GD|Etat_w~q\,
	datac => \SW[9]~input_o\,
	combout => \timer1|GD|d_buf_sortie~14_combout\);

-- Location: FF_X50_Y52_N25
\timer1|GD|d_buf_sortie[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|d_buf_sortie~14_combout\,
	ena => \timer1|GD|d_buf_sortie[10]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|d_buf_sortie\(15));

-- Location: FF_X51_Y52_N31
\timer1|D1|dec1|count_val[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divide|inst|auto_generated|counter_reg_bit[23]~clkctrl_outclk\,
	d => \timer1|D1|dec1|count_val[15]~47_combout\,
	asdata => \timer1|GD|d_buf_sortie\(15),
	sload => \timer1|varPartagee_charg_d|Q~1_combout\,
	ena => \timer1|D1|dec1|count_val[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|D1|dec1|count_val\(15));

-- Location: LCCOMB_X52_Y52_N20
\timer1|D1|zeroDetection|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|zeroDetection|Equal0~3_combout\ = (!\timer1|D1|dec1|count_val\(12) & (!\timer1|D1|dec1|count_val\(14) & (!\timer1|D1|dec1|count_val\(13) & !\timer1|D1|dec1|count_val\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|D1|dec1|count_val\(12),
	datab => \timer1|D1|dec1|count_val\(14),
	datac => \timer1|D1|dec1|count_val\(13),
	datad => \timer1|D1|dec1|count_val\(15),
	combout => \timer1|D1|zeroDetection|Equal0~3_combout\);

-- Location: LCCOMB_X54_Y52_N8
\timer1|D1|zeroDetection|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|zeroDetection|Equal0~2_combout\ = (!\timer1|D1|dec1|count_val\(9) & (!\timer1|D1|dec1|count_val\(11) & (!\timer1|D1|dec1|count_val\(8) & !\timer1|D1|dec1|count_val\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|D1|dec1|count_val\(9),
	datab => \timer1|D1|dec1|count_val\(11),
	datac => \timer1|D1|dec1|count_val\(8),
	datad => \timer1|D1|dec1|count_val\(10),
	combout => \timer1|D1|zeroDetection|Equal0~2_combout\);

-- Location: LCCOMB_X54_Y52_N22
\timer1|D1|zeroDetection|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|zeroDetection|Equal0~0_combout\ = (!\timer1|D1|dec1|count_val\(0) & (!\timer1|D1|dec1|count_val\(1) & (!\timer1|D1|dec1|count_val\(3) & !\timer1|D1|dec1|count_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|D1|dec1|count_val\(0),
	datab => \timer1|D1|dec1|count_val\(1),
	datac => \timer1|D1|dec1|count_val\(3),
	datad => \timer1|D1|dec1|count_val\(2),
	combout => \timer1|D1|zeroDetection|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y52_N22
\timer1|D1|zeroDetection|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|D1|zeroDetection|Equal0~4_combout\ = (\timer1|D1|zeroDetection|Equal0~1_combout\ & (\timer1|D1|zeroDetection|Equal0~3_combout\ & (\timer1|D1|zeroDetection|Equal0~2_combout\ & \timer1|D1|zeroDetection|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|D1|zeroDetection|Equal0~1_combout\,
	datab => \timer1|D1|zeroDetection|Equal0~3_combout\,
	datac => \timer1|D1|zeroDetection|Equal0~2_combout\,
	datad => \timer1|D1|zeroDetection|Equal0~0_combout\,
	combout => \timer1|D1|zeroDetection|Equal0~4_combout\);

-- Location: LCCOMB_X52_Y53_N24
\timer1|varPartagee_sortie_out|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|varPartagee_sortie_out|Q~1_combout\ = (\timer1|GD|sortie~q\) # ((!\timer1|D1|zeroDetection|Equal0~4_combout\ & \timer1|varPartagee_sortie_out|Q~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|D1|zeroDetection|Equal0~4_combout\,
	datac => \timer1|GD|sortie~q\,
	datad => \timer1|varPartagee_sortie_out|Q~1_combout\,
	combout => \timer1|varPartagee_sortie_out|Q~1_combout\);

-- Location: LCCOMB_X46_Y52_N16
\timer1|GD|latch_d~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|latch_d~0_combout\ = (\timer1|GD|D_RW.LeastMost~4_combout\ & (\timer1|GD|process_0~0_combout\ & ((!\timer1|GD|D_RW.Latch~q\)))) # (!\timer1|GD|D_RW.LeastMost~4_combout\ & (((\timer1|GD|latch_d~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|process_0~0_combout\,
	datab => \timer1|GD|latch_d~q\,
	datac => \timer1|GD|D_RW.Latch~q\,
	datad => \timer1|GD|D_RW.LeastMost~4_combout\,
	combout => \timer1|GD|latch_d~0_combout\);

-- Location: LCCOMB_X50_Y52_N8
\timer1|GD|DOUT[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|DOUT[3]~5_combout\ = (!\SW[1]~input_o\ & (!\SW[2]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \timer1|GD|DOUT[3]~5_combout\);

-- Location: LCCOMB_X46_Y52_N20
\timer1|GD|Etat_r~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|Etat_r~0_combout\ = (\SW[0]~input_o\ & (!\SW[1]~input_o\ & (!\SW[2]~input_o\ & \timer1|GD|RW_op.LeastMost~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \timer1|GD|RW_op.LeastMost~q\,
	combout => \timer1|GD|Etat_r~0_combout\);

-- Location: LCCOMB_X46_Y52_N12
\timer1|GD|Etat_r~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|Etat_r~1_combout\ = (\timer1|GD|D_RW.LeastMost~4_combout\ & ((\timer1|GD|Etat_r~0_combout\) # ((\timer1|GD|process_0~0_combout\ & \timer1|GD|D_RW.Latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|process_0~0_combout\,
	datab => \timer1|GD|Etat_r~0_combout\,
	datac => \timer1|GD|D_RW.Latch~q\,
	datad => \timer1|GD|D_RW.LeastMost~4_combout\,
	combout => \timer1|GD|Etat_r~1_combout\);

-- Location: LCCOMB_X46_Y52_N26
\timer1|GD|Etat_r~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|Etat_r~2_combout\ = (\timer1|GD|Etat_r~1_combout\ & ((\timer1|GD|process_0~0_combout\ & (\timer1|GD|D_RW.Most~q\)) # (!\timer1|GD|process_0~0_combout\ & ((!\timer1|GD|Etat_r~q\))))) # (!\timer1|GD|Etat_r~1_combout\ & (((\timer1|GD|Etat_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|process_0~0_combout\,
	datab => \timer1|GD|D_RW.Most~q\,
	datac => \timer1|GD|Etat_r~q\,
	datad => \timer1|GD|Etat_r~1_combout\,
	combout => \timer1|GD|Etat_r~2_combout\);

-- Location: FF_X46_Y52_N27
\timer1|GD|Etat_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|Etat_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|Etat_r~q\);

-- Location: LCCOMB_X46_Y52_N18
\timer1|GD|latch_d~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|latch_d~1_combout\ = ((!\timer1|GD|Etat_r~q\ & \timer1|GD|RW_op.LeastMost~q\)) # (!\timer1|GD|DOUT[3]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GD|DOUT[3]~5_combout\,
	datac => \timer1|GD|Etat_r~q\,
	datad => \timer1|GD|RW_op.LeastMost~q\,
	combout => \timer1|GD|latch_d~1_combout\);

-- Location: LCCOMB_X46_Y52_N14
\timer1|GD|latch_d~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|latch_d~2_combout\ = (\timer1|GD|latch_d~0_combout\) # ((!\timer1|GD|process_0~0_combout\ & (\timer1|GD|latch_d~q\ & \timer1|GD|latch_d~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|latch_d~0_combout\,
	datab => \timer1|GD|process_0~0_combout\,
	datac => \timer1|GD|latch_d~q\,
	datad => \timer1|GD|latch_d~1_combout\,
	combout => \timer1|GD|latch_d~2_combout\);

-- Location: LCCOMB_X46_Y52_N2
\timer1|GD|latch_d~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|latch_d~feeder_combout\ = \timer1|GD|latch_d~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer1|GD|latch_d~2_combout\,
	combout => \timer1|GD|latch_d~feeder_combout\);

-- Location: FF_X46_Y52_N3
\timer1|GD|latch_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|latch_d~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|latch_d~q\);

-- Location: CLKCTRL_G11
\timer1|GD|latch_d~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \timer1|GD|latch_d~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \timer1|GD|latch_d~clkctrl_outclk\);

-- Location: LCCOMB_X54_Y52_N20
\timer1|GB|d_buf_out[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GB|d_buf_out\(11) = (GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & (\timer1|GB|d_buf_out\(11))) # (!GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & ((\timer1|D1|dec1|count_val\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GB|d_buf_out\(11),
	datac => \timer1|GD|latch_d~clkctrl_outclk\,
	datad => \timer1|D1|dec1|count_val\(11),
	combout => \timer1|GB|d_buf_out\(11));

-- Location: LCCOMB_X54_Y52_N16
\timer1|GB|d_buf_out[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GB|d_buf_out\(3) = (GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & (\timer1|GB|d_buf_out\(3))) # (!GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & ((\timer1|D1|dec1|count_val\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GB|d_buf_out\(3),
	datac => \timer1|GD|latch_d~clkctrl_outclk\,
	datad => \timer1|D1|dec1|count_val\(3),
	combout => \timer1|GB|d_buf_out\(3));

-- Location: LCCOMB_X54_Y52_N14
\timer1|GD|DOUT~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|DOUT~8_combout\ = (\timer1|GD|Etat_r~q\ & (\timer1|GB|d_buf_out\(11))) # (!\timer1|GD|Etat_r~q\ & ((\timer1|GB|d_buf_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(11),
	datac => \timer1|GB|d_buf_out\(3),
	datad => \timer1|GD|Etat_r~q\,
	combout => \timer1|GD|DOUT~8_combout\);

-- Location: LCCOMB_X47_Y52_N20
\timer1|GD|DOUT[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|DOUT[3]~13_combout\ = (\timer1|GD|DOUT[3]~5_combout\ & (!\timer1|GD|sortie~q\ & !\timer1|GD|charg_d~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GD|DOUT[3]~5_combout\,
	datac => \timer1|GD|sortie~q\,
	datad => \timer1|GD|charg_d~q\,
	combout => \timer1|GD|DOUT[3]~13_combout\);

-- Location: FF_X54_Y52_N15
\timer1|GD|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|DOUT~8_combout\,
	ena => \timer1|GD|DOUT[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|DOUT\(3));

-- Location: LCCOMB_X54_Y52_N10
\timer1|GB|d_buf_out[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GB|d_buf_out\(8) = (GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & (\timer1|GB|d_buf_out\(8))) # (!GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & ((\timer1|D1|dec1|count_val\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(8),
	datac => \timer1|GD|latch_d~clkctrl_outclk\,
	datad => \timer1|D1|dec1|count_val\(8),
	combout => \timer1|GB|d_buf_out\(8));

-- Location: LCCOMB_X54_Y52_N18
\timer1|GB|d_buf_out[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GB|d_buf_out\(0) = (GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & (\timer1|GB|d_buf_out\(0))) # (!GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & ((\timer1|D1|dec1|count_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GB|d_buf_out\(0),
	datac => \timer1|GD|latch_d~clkctrl_outclk\,
	datad => \timer1|D1|dec1|count_val\(0),
	combout => \timer1|GB|d_buf_out\(0));

-- Location: LCCOMB_X54_Y52_N12
\timer1|GD|DOUT~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|DOUT~4_combout\ = (\timer1|GD|Etat_r~q\ & (\timer1|GB|d_buf_out\(8))) # (!\timer1|GD|Etat_r~q\ & ((\timer1|GB|d_buf_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GB|d_buf_out\(8),
	datac => \timer1|GB|d_buf_out\(0),
	datad => \timer1|GD|Etat_r~q\,
	combout => \timer1|GD|DOUT~4_combout\);

-- Location: FF_X54_Y52_N13
\timer1|GD|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|DOUT~4_combout\,
	ena => \timer1|GD|DOUT[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|DOUT\(0));

-- Location: LCCOMB_X54_Y52_N28
\timer1|GB|d_buf_out[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GB|d_buf_out\(9) = (GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & (\timer1|GB|d_buf_out\(9))) # (!GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & ((\timer1|D1|dec1|count_val\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GB|d_buf_out\(9),
	datac => \timer1|GD|latch_d~clkctrl_outclk\,
	datad => \timer1|D1|dec1|count_val\(9),
	combout => \timer1|GB|d_buf_out\(9));

-- Location: LCCOMB_X54_Y52_N4
\timer1|GB|d_buf_out[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GB|d_buf_out\(1) = (GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & (\timer1|GB|d_buf_out\(1))) # (!GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & ((\timer1|D1|dec1|count_val\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GB|d_buf_out\(1),
	datac => \timer1|D1|dec1|count_val\(1),
	datad => \timer1|GD|latch_d~clkctrl_outclk\,
	combout => \timer1|GB|d_buf_out\(1));

-- Location: LCCOMB_X54_Y52_N26
\timer1|GD|DOUT~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|DOUT~6_combout\ = (\timer1|GD|Etat_r~q\ & (\timer1|GB|d_buf_out\(9))) # (!\timer1|GD|Etat_r~q\ & ((\timer1|GB|d_buf_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(9),
	datac => \timer1|GB|d_buf_out\(1),
	datad => \timer1|GD|Etat_r~q\,
	combout => \timer1|GD|DOUT~6_combout\);

-- Location: FF_X54_Y52_N27
\timer1|GD|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|DOUT~6_combout\,
	ena => \timer1|GD|DOUT[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|DOUT\(1));

-- Location: LCCOMB_X54_Y52_N6
\timer1|GB|d_buf_out[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GB|d_buf_out\(10) = (GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & (\timer1|GB|d_buf_out\(10))) # (!GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & ((\timer1|D1|dec1|count_val\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(10),
	datac => \timer1|GD|latch_d~clkctrl_outclk\,
	datad => \timer1|D1|dec1|count_val\(10),
	combout => \timer1|GB|d_buf_out\(10));

-- Location: LCCOMB_X54_Y52_N2
\timer1|GB|d_buf_out[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GB|d_buf_out\(2) = (GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & (\timer1|GB|d_buf_out\(2))) # (!GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & ((\timer1|D1|dec1|count_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GB|d_buf_out\(2),
	datac => \timer1|GD|latch_d~clkctrl_outclk\,
	datad => \timer1|D1|dec1|count_val\(2),
	combout => \timer1|GB|d_buf_out\(2));

-- Location: LCCOMB_X54_Y52_N24
\timer1|GD|DOUT~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|DOUT~7_combout\ = (\timer1|GD|Etat_r~q\ & (\timer1|GB|d_buf_out\(10))) # (!\timer1|GD|Etat_r~q\ & ((\timer1|GB|d_buf_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GB|d_buf_out\(10),
	datac => \timer1|GB|d_buf_out\(2),
	datad => \timer1|GD|Etat_r~q\,
	combout => \timer1|GD|DOUT~7_combout\);

-- Location: FF_X54_Y52_N25
\timer1|GD|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|DOUT~7_combout\,
	ena => \timer1|GD|DOUT[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|DOUT\(2));

-- Location: LCCOMB_X59_Y52_N28
\DCB1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB1|Mux6~0_combout\ = (\timer1|GD|DOUT\(3) & (\timer1|GD|DOUT\(0) & (\timer1|GD|DOUT\(1) $ (\timer1|GD|DOUT\(2))))) # (!\timer1|GD|DOUT\(3) & (!\timer1|GD|DOUT\(1) & (\timer1|GD|DOUT\(0) $ (\timer1|GD|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|DOUT\(3),
	datab => \timer1|GD|DOUT\(0),
	datac => \timer1|GD|DOUT\(1),
	datad => \timer1|GD|DOUT\(2),
	combout => \DCB1|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y52_N4
\DCB1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB1|Mux5~0_combout\ = (\timer1|GD|DOUT\(1) & ((\timer1|GD|DOUT\(0) & ((\timer1|GD|DOUT\(3)))) # (!\timer1|GD|DOUT\(0) & (\timer1|GD|DOUT\(2))))) # (!\timer1|GD|DOUT\(1) & (\timer1|GD|DOUT\(2) & (\timer1|GD|DOUT\(3) $ (\timer1|GD|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|DOUT\(2),
	datab => \timer1|GD|DOUT\(1),
	datac => \timer1|GD|DOUT\(3),
	datad => \timer1|GD|DOUT\(0),
	combout => \DCB1|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y52_N6
\DCB1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB1|Mux4~0_combout\ = (\timer1|GD|DOUT\(2) & (\timer1|GD|DOUT\(3) & ((\timer1|GD|DOUT\(1)) # (!\timer1|GD|DOUT\(0))))) # (!\timer1|GD|DOUT\(2) & (\timer1|GD|DOUT\(1) & (!\timer1|GD|DOUT\(3) & !\timer1|GD|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|DOUT\(2),
	datab => \timer1|GD|DOUT\(1),
	datac => \timer1|GD|DOUT\(3),
	datad => \timer1|GD|DOUT\(0),
	combout => \DCB1|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y52_N8
\DCB1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB1|Mux3~0_combout\ = (\timer1|GD|DOUT\(0) & (\timer1|GD|DOUT\(2) $ ((!\timer1|GD|DOUT\(1))))) # (!\timer1|GD|DOUT\(0) & ((\timer1|GD|DOUT\(2) & (!\timer1|GD|DOUT\(1) & !\timer1|GD|DOUT\(3))) # (!\timer1|GD|DOUT\(2) & (\timer1|GD|DOUT\(1) & 
-- \timer1|GD|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|DOUT\(2),
	datab => \timer1|GD|DOUT\(1),
	datac => \timer1|GD|DOUT\(3),
	datad => \timer1|GD|DOUT\(0),
	combout => \DCB1|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y52_N22
\DCB1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB1|Mux2~0_combout\ = (\timer1|GD|DOUT\(1) & (((!\timer1|GD|DOUT\(3) & \timer1|GD|DOUT\(0))))) # (!\timer1|GD|DOUT\(1) & ((\timer1|GD|DOUT\(2) & (!\timer1|GD|DOUT\(3))) # (!\timer1|GD|DOUT\(2) & ((\timer1|GD|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|DOUT\(2),
	datab => \timer1|GD|DOUT\(1),
	datac => \timer1|GD|DOUT\(3),
	datad => \timer1|GD|DOUT\(0),
	combout => \DCB1|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y52_N12
\DCB1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB1|Mux1~0_combout\ = (\timer1|GD|DOUT\(2) & (\timer1|GD|DOUT\(0) & (\timer1|GD|DOUT\(1) $ (\timer1|GD|DOUT\(3))))) # (!\timer1|GD|DOUT\(2) & (!\timer1|GD|DOUT\(3) & ((\timer1|GD|DOUT\(1)) # (\timer1|GD|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|DOUT\(2),
	datab => \timer1|GD|DOUT\(1),
	datac => \timer1|GD|DOUT\(3),
	datad => \timer1|GD|DOUT\(0),
	combout => \DCB1|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y52_N10
\DCB1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB1|Mux0~0_combout\ = (\timer1|GD|DOUT\(0) & ((\timer1|GD|DOUT\(3)) # (\timer1|GD|DOUT\(2) $ (\timer1|GD|DOUT\(1))))) # (!\timer1|GD|DOUT\(0) & ((\timer1|GD|DOUT\(1)) # (\timer1|GD|DOUT\(2) $ (\timer1|GD|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|DOUT\(2),
	datab => \timer1|GD|DOUT\(1),
	datac => \timer1|GD|DOUT\(3),
	datad => \timer1|GD|DOUT\(0),
	combout => \DCB1|Mux0~0_combout\);

-- Location: LCCOMB_X52_Y52_N10
\timer1|GB|d_buf_out[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GB|d_buf_out\(13) = (GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & ((\timer1|GB|d_buf_out\(13)))) # (!GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & (\timer1|D1|dec1|count_val\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|D1|dec1|count_val\(13),
	datac => \timer1|GB|d_buf_out\(13),
	datad => \timer1|GD|latch_d~clkctrl_outclk\,
	combout => \timer1|GB|d_buf_out\(13));

-- Location: LCCOMB_X52_Y52_N18
\timer1|GB|d_buf_out[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GB|d_buf_out\(5) = (GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & ((\timer1|GB|d_buf_out\(5)))) # (!GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & (\timer1|D1|dec1|count_val\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|D1|dec1|count_val\(5),
	datab => \timer1|GB|d_buf_out\(5),
	datad => \timer1|GD|latch_d~clkctrl_outclk\,
	combout => \timer1|GB|d_buf_out\(5));

-- Location: LCCOMB_X52_Y52_N14
\timer1|GD|DOUT~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|DOUT~10_combout\ = (\timer1|GD|Etat_r~q\ & (\timer1|GB|d_buf_out\(13))) # (!\timer1|GD|Etat_r~q\ & ((\timer1|GB|d_buf_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GB|d_buf_out\(13),
	datac => \timer1|GB|d_buf_out\(5),
	datad => \timer1|GD|Etat_r~q\,
	combout => \timer1|GD|DOUT~10_combout\);

-- Location: FF_X52_Y52_N15
\timer1|GD|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|DOUT~10_combout\,
	ena => \timer1|GD|DOUT[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|DOUT\(5));

-- Location: LCCOMB_X52_Y52_N24
\timer1|GB|d_buf_out[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GB|d_buf_out\(14) = (GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & ((\timer1|GB|d_buf_out\(14)))) # (!GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & (\timer1|D1|dec1|count_val\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|D1|dec1|count_val\(14),
	datac => \timer1|GB|d_buf_out\(14),
	datad => \timer1|GD|latch_d~clkctrl_outclk\,
	combout => \timer1|GB|d_buf_out\(14));

-- Location: LCCOMB_X52_Y52_N16
\timer1|GB|d_buf_out[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GB|d_buf_out\(6) = (GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & ((\timer1|GB|d_buf_out\(6)))) # (!GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & (\timer1|D1|dec1|count_val\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|D1|dec1|count_val\(6),
	datab => \timer1|GB|d_buf_out\(6),
	datad => \timer1|GD|latch_d~clkctrl_outclk\,
	combout => \timer1|GB|d_buf_out\(6));

-- Location: LCCOMB_X52_Y52_N8
\timer1|GD|DOUT~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|DOUT~11_combout\ = (\timer1|GD|Etat_r~q\ & (\timer1|GB|d_buf_out\(14))) # (!\timer1|GD|Etat_r~q\ & ((\timer1|GB|d_buf_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(14),
	datac => \timer1|GB|d_buf_out\(6),
	datad => \timer1|GD|Etat_r~q\,
	combout => \timer1|GD|DOUT~11_combout\);

-- Location: FF_X52_Y52_N9
\timer1|GD|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|DOUT~11_combout\,
	ena => \timer1|GD|DOUT[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|DOUT\(6));

-- Location: LCCOMB_X52_Y52_N28
\timer1|GB|d_buf_out[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GB|d_buf_out\(12) = (GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & ((\timer1|GB|d_buf_out\(12)))) # (!GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & (\timer1|D1|dec1|count_val\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|D1|dec1|count_val\(12),
	datac => \timer1|GB|d_buf_out\(12),
	datad => \timer1|GD|latch_d~clkctrl_outclk\,
	combout => \timer1|GB|d_buf_out\(12));

-- Location: LCCOMB_X52_Y52_N4
\timer1|GB|d_buf_out[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GB|d_buf_out\(4) = (GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & ((\timer1|GB|d_buf_out\(4)))) # (!GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & (\timer1|D1|dec1|count_val\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|D1|dec1|count_val\(4),
	datac => \timer1|GB|d_buf_out\(4),
	datad => \timer1|GD|latch_d~clkctrl_outclk\,
	combout => \timer1|GB|d_buf_out\(4));

-- Location: LCCOMB_X52_Y52_N0
\timer1|GD|DOUT~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|DOUT~9_combout\ = (\timer1|GD|Etat_r~q\ & (\timer1|GB|d_buf_out\(12))) # (!\timer1|GD|Etat_r~q\ & ((\timer1|GB|d_buf_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(12),
	datac => \timer1|GB|d_buf_out\(4),
	datad => \timer1|GD|Etat_r~q\,
	combout => \timer1|GD|DOUT~9_combout\);

-- Location: FF_X52_Y52_N1
\timer1|GD|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|DOUT~9_combout\,
	ena => \timer1|GD|DOUT[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|DOUT\(4));

-- Location: LCCOMB_X52_Y52_N6
\timer1|GB|d_buf_out[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GB|d_buf_out\(15) = (GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & ((\timer1|GB|d_buf_out\(15)))) # (!GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & (\timer1|D1|dec1|count_val\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|D1|dec1|count_val\(15),
	datac => \timer1|GB|d_buf_out\(15),
	datad => \timer1|GD|latch_d~clkctrl_outclk\,
	combout => \timer1|GB|d_buf_out\(15));

-- Location: LCCOMB_X52_Y52_N2
\timer1|GB|d_buf_out[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GB|d_buf_out\(7) = (GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & ((\timer1|GB|d_buf_out\(7)))) # (!GLOBAL(\timer1|GD|latch_d~clkctrl_outclk\) & (\timer1|D1|dec1|count_val\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|D1|dec1|count_val\(7),
	datab => \timer1|GB|d_buf_out\(7),
	datad => \timer1|GD|latch_d~clkctrl_outclk\,
	combout => \timer1|GB|d_buf_out\(7));

-- Location: LCCOMB_X52_Y52_N30
\timer1|GD|DOUT~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \timer1|GD|DOUT~12_combout\ = (\timer1|GD|Etat_r~q\ & (\timer1|GB|d_buf_out\(15))) # (!\timer1|GD|Etat_r~q\ & ((\timer1|GB|d_buf_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|GB|d_buf_out\(15),
	datac => \timer1|GB|d_buf_out\(7),
	datad => \timer1|GD|Etat_r~q\,
	combout => \timer1|GD|DOUT~12_combout\);

-- Location: FF_X52_Y52_N31
\timer1|GD|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \timer1|GD|DOUT~12_combout\,
	ena => \timer1|GD|DOUT[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|GD|DOUT\(7));

-- Location: LCCOMB_X75_Y53_N0
\DCB2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB2|Mux6~0_combout\ = (\timer1|GD|DOUT\(6) & (!\timer1|GD|DOUT\(5) & (\timer1|GD|DOUT\(4) $ (!\timer1|GD|DOUT\(7))))) # (!\timer1|GD|DOUT\(6) & (\timer1|GD|DOUT\(4) & (\timer1|GD|DOUT\(5) $ (!\timer1|GD|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|DOUT\(5),
	datab => \timer1|GD|DOUT\(6),
	datac => \timer1|GD|DOUT\(4),
	datad => \timer1|GD|DOUT\(7),
	combout => \DCB2|Mux6~0_combout\);

-- Location: LCCOMB_X75_Y53_N14
\DCB2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB2|Mux5~0_combout\ = (\timer1|GD|DOUT\(5) & ((\timer1|GD|DOUT\(4) & ((\timer1|GD|DOUT\(7)))) # (!\timer1|GD|DOUT\(4) & (\timer1|GD|DOUT\(6))))) # (!\timer1|GD|DOUT\(5) & (\timer1|GD|DOUT\(6) & (\timer1|GD|DOUT\(4) $ (\timer1|GD|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|DOUT\(5),
	datab => \timer1|GD|DOUT\(6),
	datac => \timer1|GD|DOUT\(4),
	datad => \timer1|GD|DOUT\(7),
	combout => \DCB2|Mux5~0_combout\);

-- Location: LCCOMB_X75_Y53_N20
\DCB2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB2|Mux4~0_combout\ = (\timer1|GD|DOUT\(6) & (\timer1|GD|DOUT\(7) & ((\timer1|GD|DOUT\(5)) # (!\timer1|GD|DOUT\(4))))) # (!\timer1|GD|DOUT\(6) & (\timer1|GD|DOUT\(5) & (!\timer1|GD|DOUT\(4) & !\timer1|GD|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|DOUT\(5),
	datab => \timer1|GD|DOUT\(6),
	datac => \timer1|GD|DOUT\(4),
	datad => \timer1|GD|DOUT\(7),
	combout => \DCB2|Mux4~0_combout\);

-- Location: LCCOMB_X52_Y52_N12
\DCB2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB2|Mux3~0_combout\ = (\timer1|GD|DOUT\(4) & (\timer1|GD|DOUT\(6) $ ((!\timer1|GD|DOUT\(5))))) # (!\timer1|GD|DOUT\(4) & ((\timer1|GD|DOUT\(6) & (!\timer1|GD|DOUT\(5) & !\timer1|GD|DOUT\(7))) # (!\timer1|GD|DOUT\(6) & (\timer1|GD|DOUT\(5) & 
-- \timer1|GD|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|DOUT\(6),
	datab => \timer1|GD|DOUT\(5),
	datac => \timer1|GD|DOUT\(7),
	datad => \timer1|GD|DOUT\(4),
	combout => \DCB2|Mux3~0_combout\);

-- Location: LCCOMB_X75_Y53_N6
\DCB2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB2|Mux2~0_combout\ = (\timer1|GD|DOUT\(5) & (((\timer1|GD|DOUT\(4) & !\timer1|GD|DOUT\(7))))) # (!\timer1|GD|DOUT\(5) & ((\timer1|GD|DOUT\(6) & ((!\timer1|GD|DOUT\(7)))) # (!\timer1|GD|DOUT\(6) & (\timer1|GD|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|DOUT\(5),
	datab => \timer1|GD|DOUT\(6),
	datac => \timer1|GD|DOUT\(4),
	datad => \timer1|GD|DOUT\(7),
	combout => \DCB2|Mux2~0_combout\);

-- Location: LCCOMB_X75_Y53_N4
\DCB2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB2|Mux1~0_combout\ = (\timer1|GD|DOUT\(5) & (!\timer1|GD|DOUT\(7) & ((\timer1|GD|DOUT\(4)) # (!\timer1|GD|DOUT\(6))))) # (!\timer1|GD|DOUT\(5) & (\timer1|GD|DOUT\(4) & (\timer1|GD|DOUT\(6) $ (!\timer1|GD|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|DOUT\(5),
	datab => \timer1|GD|DOUT\(6),
	datac => \timer1|GD|DOUT\(4),
	datad => \timer1|GD|DOUT\(7),
	combout => \DCB2|Mux1~0_combout\);

-- Location: LCCOMB_X75_Y53_N2
\DCB2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB2|Mux0~0_combout\ = (\timer1|GD|DOUT\(4) & ((\timer1|GD|DOUT\(7)) # (\timer1|GD|DOUT\(5) $ (\timer1|GD|DOUT\(6))))) # (!\timer1|GD|DOUT\(4) & ((\timer1|GD|DOUT\(5)) # (\timer1|GD|DOUT\(6) $ (\timer1|GD|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GD|DOUT\(5),
	datab => \timer1|GD|DOUT\(6),
	datac => \timer1|GD|DOUT\(4),
	datad => \timer1|GD|DOUT\(7),
	combout => \DCB2|Mux0~0_combout\);

-- Location: LCCOMB_X75_Y48_N24
\DCB6|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB6|Mux6~0_combout\ = (\timer1|GB|d_buf_out\(3) & (\timer1|GB|d_buf_out\(0) & (\timer1|GB|d_buf_out\(2) $ (\timer1|GB|d_buf_out\(1))))) # (!\timer1|GB|d_buf_out\(3) & (!\timer1|GB|d_buf_out\(1) & (\timer1|GB|d_buf_out\(2) $ (\timer1|GB|d_buf_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(3),
	datab => \timer1|GB|d_buf_out\(2),
	datac => \timer1|GB|d_buf_out\(0),
	datad => \timer1|GB|d_buf_out\(1),
	combout => \DCB6|Mux6~0_combout\);

-- Location: LCCOMB_X75_Y48_N26
\DCB6|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB6|Mux5~0_combout\ = (\timer1|GB|d_buf_out\(3) & ((\timer1|GB|d_buf_out\(0) & ((\timer1|GB|d_buf_out\(1)))) # (!\timer1|GB|d_buf_out\(0) & (\timer1|GB|d_buf_out\(2))))) # (!\timer1|GB|d_buf_out\(3) & (\timer1|GB|d_buf_out\(2) & 
-- (\timer1|GB|d_buf_out\(0) $ (\timer1|GB|d_buf_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(3),
	datab => \timer1|GB|d_buf_out\(2),
	datac => \timer1|GB|d_buf_out\(0),
	datad => \timer1|GB|d_buf_out\(1),
	combout => \DCB6|Mux5~0_combout\);

-- Location: LCCOMB_X75_Y48_N4
\DCB6|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB6|Mux4~0_combout\ = (\timer1|GB|d_buf_out\(3) & (\timer1|GB|d_buf_out\(2) & ((\timer1|GB|d_buf_out\(1)) # (!\timer1|GB|d_buf_out\(0))))) # (!\timer1|GB|d_buf_out\(3) & (!\timer1|GB|d_buf_out\(2) & (!\timer1|GB|d_buf_out\(0) & 
-- \timer1|GB|d_buf_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(3),
	datab => \timer1|GB|d_buf_out\(2),
	datac => \timer1|GB|d_buf_out\(0),
	datad => \timer1|GB|d_buf_out\(1),
	combout => \DCB6|Mux4~0_combout\);

-- Location: LCCOMB_X75_Y48_N6
\DCB6|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB6|Mux3~0_combout\ = (\timer1|GB|d_buf_out\(0) & ((\timer1|GB|d_buf_out\(2) $ (!\timer1|GB|d_buf_out\(1))))) # (!\timer1|GB|d_buf_out\(0) & ((\timer1|GB|d_buf_out\(3) & (!\timer1|GB|d_buf_out\(2) & \timer1|GB|d_buf_out\(1))) # 
-- (!\timer1|GB|d_buf_out\(3) & (\timer1|GB|d_buf_out\(2) & !\timer1|GB|d_buf_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(3),
	datab => \timer1|GB|d_buf_out\(2),
	datac => \timer1|GB|d_buf_out\(0),
	datad => \timer1|GB|d_buf_out\(1),
	combout => \DCB6|Mux3~0_combout\);

-- Location: LCCOMB_X75_Y48_N16
\DCB6|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB6|Mux2~0_combout\ = (\timer1|GB|d_buf_out\(1) & (!\timer1|GB|d_buf_out\(3) & ((\timer1|GB|d_buf_out\(0))))) # (!\timer1|GB|d_buf_out\(1) & ((\timer1|GB|d_buf_out\(2) & (!\timer1|GB|d_buf_out\(3))) # (!\timer1|GB|d_buf_out\(2) & 
-- ((\timer1|GB|d_buf_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(3),
	datab => \timer1|GB|d_buf_out\(2),
	datac => \timer1|GB|d_buf_out\(0),
	datad => \timer1|GB|d_buf_out\(1),
	combout => \DCB6|Mux2~0_combout\);

-- Location: LCCOMB_X75_Y48_N2
\DCB6|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB6|Mux1~0_combout\ = (\timer1|GB|d_buf_out\(2) & (\timer1|GB|d_buf_out\(0) & (\timer1|GB|d_buf_out\(3) $ (\timer1|GB|d_buf_out\(1))))) # (!\timer1|GB|d_buf_out\(2) & (!\timer1|GB|d_buf_out\(3) & ((\timer1|GB|d_buf_out\(0)) # 
-- (\timer1|GB|d_buf_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(3),
	datab => \timer1|GB|d_buf_out\(2),
	datac => \timer1|GB|d_buf_out\(0),
	datad => \timer1|GB|d_buf_out\(1),
	combout => \DCB6|Mux1~0_combout\);

-- Location: LCCOMB_X75_Y48_N12
\DCB6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB6|Mux0~0_combout\ = (\timer1|GB|d_buf_out\(0) & ((\timer1|GB|d_buf_out\(3)) # (\timer1|GB|d_buf_out\(2) $ (\timer1|GB|d_buf_out\(1))))) # (!\timer1|GB|d_buf_out\(0) & ((\timer1|GB|d_buf_out\(1)) # (\timer1|GB|d_buf_out\(3) $ 
-- (\timer1|GB|d_buf_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(3),
	datab => \timer1|GB|d_buf_out\(2),
	datac => \timer1|GB|d_buf_out\(0),
	datad => \timer1|GB|d_buf_out\(1),
	combout => \DCB6|Mux0~0_combout\);

-- Location: LCCOMB_X63_Y43_N12
\DCB5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB5|Mux6~0_combout\ = (\timer1|GB|d_buf_out\(6) & (!\timer1|GB|d_buf_out\(5) & (\timer1|GB|d_buf_out\(4) $ (!\timer1|GB|d_buf_out\(7))))) # (!\timer1|GB|d_buf_out\(6) & (\timer1|GB|d_buf_out\(4) & (\timer1|GB|d_buf_out\(5) $ 
-- (!\timer1|GB|d_buf_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(5),
	datab => \timer1|GB|d_buf_out\(6),
	datac => \timer1|GB|d_buf_out\(4),
	datad => \timer1|GB|d_buf_out\(7),
	combout => \DCB5|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y43_N18
\DCB5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB5|Mux5~0_combout\ = (\timer1|GB|d_buf_out\(5) & ((\timer1|GB|d_buf_out\(4) & ((\timer1|GB|d_buf_out\(7)))) # (!\timer1|GB|d_buf_out\(4) & (\timer1|GB|d_buf_out\(6))))) # (!\timer1|GB|d_buf_out\(5) & (\timer1|GB|d_buf_out\(6) & 
-- (\timer1|GB|d_buf_out\(4) $ (\timer1|GB|d_buf_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(5),
	datab => \timer1|GB|d_buf_out\(6),
	datac => \timer1|GB|d_buf_out\(4),
	datad => \timer1|GB|d_buf_out\(7),
	combout => \DCB5|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y43_N20
\DCB5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB5|Mux4~0_combout\ = (\timer1|GB|d_buf_out\(6) & (\timer1|GB|d_buf_out\(7) & ((\timer1|GB|d_buf_out\(5)) # (!\timer1|GB|d_buf_out\(4))))) # (!\timer1|GB|d_buf_out\(6) & (\timer1|GB|d_buf_out\(5) & (!\timer1|GB|d_buf_out\(4) & 
-- !\timer1|GB|d_buf_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(5),
	datab => \timer1|GB|d_buf_out\(6),
	datac => \timer1|GB|d_buf_out\(4),
	datad => \timer1|GB|d_buf_out\(7),
	combout => \DCB5|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y43_N2
\DCB5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB5|Mux3~0_combout\ = (\timer1|GB|d_buf_out\(4) & (\timer1|GB|d_buf_out\(5) $ ((!\timer1|GB|d_buf_out\(6))))) # (!\timer1|GB|d_buf_out\(4) & ((\timer1|GB|d_buf_out\(5) & (!\timer1|GB|d_buf_out\(6) & \timer1|GB|d_buf_out\(7))) # 
-- (!\timer1|GB|d_buf_out\(5) & (\timer1|GB|d_buf_out\(6) & !\timer1|GB|d_buf_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(5),
	datab => \timer1|GB|d_buf_out\(6),
	datac => \timer1|GB|d_buf_out\(4),
	datad => \timer1|GB|d_buf_out\(7),
	combout => \DCB5|Mux3~0_combout\);

-- Location: LCCOMB_X63_Y43_N8
\DCB5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB5|Mux2~0_combout\ = (\timer1|GB|d_buf_out\(5) & (((\timer1|GB|d_buf_out\(4) & !\timer1|GB|d_buf_out\(7))))) # (!\timer1|GB|d_buf_out\(5) & ((\timer1|GB|d_buf_out\(6) & ((!\timer1|GB|d_buf_out\(7)))) # (!\timer1|GB|d_buf_out\(6) & 
-- (\timer1|GB|d_buf_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(5),
	datab => \timer1|GB|d_buf_out\(6),
	datac => \timer1|GB|d_buf_out\(4),
	datad => \timer1|GB|d_buf_out\(7),
	combout => \DCB5|Mux2~0_combout\);

-- Location: LCCOMB_X63_Y43_N10
\DCB5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB5|Mux1~0_combout\ = (\timer1|GB|d_buf_out\(5) & (!\timer1|GB|d_buf_out\(7) & ((\timer1|GB|d_buf_out\(4)) # (!\timer1|GB|d_buf_out\(6))))) # (!\timer1|GB|d_buf_out\(5) & (\timer1|GB|d_buf_out\(4) & (\timer1|GB|d_buf_out\(6) $ 
-- (!\timer1|GB|d_buf_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(5),
	datab => \timer1|GB|d_buf_out\(6),
	datac => \timer1|GB|d_buf_out\(4),
	datad => \timer1|GB|d_buf_out\(7),
	combout => \DCB5|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y43_N16
\DCB5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB5|Mux0~0_combout\ = (\timer1|GB|d_buf_out\(4) & ((\timer1|GB|d_buf_out\(7)) # (\timer1|GB|d_buf_out\(5) $ (\timer1|GB|d_buf_out\(6))))) # (!\timer1|GB|d_buf_out\(4) & ((\timer1|GB|d_buf_out\(5)) # (\timer1|GB|d_buf_out\(6) $ 
-- (\timer1|GB|d_buf_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(5),
	datab => \timer1|GB|d_buf_out\(6),
	datac => \timer1|GB|d_buf_out\(4),
	datad => \timer1|GB|d_buf_out\(7),
	combout => \DCB5|Mux0~0_combout\);

-- Location: LCCOMB_X77_Y42_N12
\DCB4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB4|Mux6~0_combout\ = (\timer1|GB|d_buf_out\(10) & (!\timer1|GB|d_buf_out\(9) & (\timer1|GB|d_buf_out\(11) $ (!\timer1|GB|d_buf_out\(8))))) # (!\timer1|GB|d_buf_out\(10) & (\timer1|GB|d_buf_out\(8) & (\timer1|GB|d_buf_out\(11) $ 
-- (!\timer1|GB|d_buf_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(10),
	datab => \timer1|GB|d_buf_out\(11),
	datac => \timer1|GB|d_buf_out\(8),
	datad => \timer1|GB|d_buf_out\(9),
	combout => \DCB4|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y42_N10
\DCB4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB4|Mux5~0_combout\ = (\timer1|GB|d_buf_out\(11) & ((\timer1|GB|d_buf_out\(8) & ((\timer1|GB|d_buf_out\(9)))) # (!\timer1|GB|d_buf_out\(8) & (\timer1|GB|d_buf_out\(10))))) # (!\timer1|GB|d_buf_out\(11) & (\timer1|GB|d_buf_out\(10) & 
-- (\timer1|GB|d_buf_out\(8) $ (\timer1|GB|d_buf_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(10),
	datab => \timer1|GB|d_buf_out\(11),
	datac => \timer1|GB|d_buf_out\(8),
	datad => \timer1|GB|d_buf_out\(9),
	combout => \DCB4|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y42_N4
\DCB4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB4|Mux4~0_combout\ = (\timer1|GB|d_buf_out\(10) & (\timer1|GB|d_buf_out\(11) & ((\timer1|GB|d_buf_out\(9)) # (!\timer1|GB|d_buf_out\(8))))) # (!\timer1|GB|d_buf_out\(10) & (!\timer1|GB|d_buf_out\(11) & (!\timer1|GB|d_buf_out\(8) & 
-- \timer1|GB|d_buf_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(10),
	datab => \timer1|GB|d_buf_out\(11),
	datac => \timer1|GB|d_buf_out\(8),
	datad => \timer1|GB|d_buf_out\(9),
	combout => \DCB4|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y42_N14
\DCB4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB4|Mux3~0_combout\ = (\timer1|GB|d_buf_out\(8) & (\timer1|GB|d_buf_out\(10) $ (((!\timer1|GB|d_buf_out\(9)))))) # (!\timer1|GB|d_buf_out\(8) & ((\timer1|GB|d_buf_out\(10) & (!\timer1|GB|d_buf_out\(11) & !\timer1|GB|d_buf_out\(9))) # 
-- (!\timer1|GB|d_buf_out\(10) & (\timer1|GB|d_buf_out\(11) & \timer1|GB|d_buf_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(10),
	datab => \timer1|GB|d_buf_out\(11),
	datac => \timer1|GB|d_buf_out\(8),
	datad => \timer1|GB|d_buf_out\(9),
	combout => \DCB4|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y42_N16
\DCB4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB4|Mux2~0_combout\ = (\timer1|GB|d_buf_out\(9) & (((!\timer1|GB|d_buf_out\(11) & \timer1|GB|d_buf_out\(8))))) # (!\timer1|GB|d_buf_out\(9) & ((\timer1|GB|d_buf_out\(10) & (!\timer1|GB|d_buf_out\(11))) # (!\timer1|GB|d_buf_out\(10) & 
-- ((\timer1|GB|d_buf_out\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(10),
	datab => \timer1|GB|d_buf_out\(11),
	datac => \timer1|GB|d_buf_out\(8),
	datad => \timer1|GB|d_buf_out\(9),
	combout => \DCB4|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y42_N30
\DCB4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB4|Mux1~0_combout\ = (\timer1|GB|d_buf_out\(10) & (\timer1|GB|d_buf_out\(8) & (\timer1|GB|d_buf_out\(11) $ (\timer1|GB|d_buf_out\(9))))) # (!\timer1|GB|d_buf_out\(10) & (!\timer1|GB|d_buf_out\(11) & ((\timer1|GB|d_buf_out\(8)) # 
-- (\timer1|GB|d_buf_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(10),
	datab => \timer1|GB|d_buf_out\(11),
	datac => \timer1|GB|d_buf_out\(8),
	datad => \timer1|GB|d_buf_out\(9),
	combout => \DCB4|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y42_N8
\DCB4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB4|Mux0~0_combout\ = (\timer1|GB|d_buf_out\(8) & ((\timer1|GB|d_buf_out\(11)) # (\timer1|GB|d_buf_out\(10) $ (\timer1|GB|d_buf_out\(9))))) # (!\timer1|GB|d_buf_out\(8) & ((\timer1|GB|d_buf_out\(9)) # (\timer1|GB|d_buf_out\(10) $ 
-- (\timer1|GB|d_buf_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(10),
	datab => \timer1|GB|d_buf_out\(11),
	datac => \timer1|GB|d_buf_out\(8),
	datad => \timer1|GB|d_buf_out\(9),
	combout => \DCB4|Mux0~0_combout\);

-- Location: LCCOMB_X75_Y41_N20
\DCB3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB3|Mux6~0_combout\ = (\timer1|GB|d_buf_out\(14) & (!\timer1|GB|d_buf_out\(13) & (\timer1|GB|d_buf_out\(15) $ (!\timer1|GB|d_buf_out\(12))))) # (!\timer1|GB|d_buf_out\(14) & (\timer1|GB|d_buf_out\(12) & (\timer1|GB|d_buf_out\(13) $ 
-- (!\timer1|GB|d_buf_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(14),
	datab => \timer1|GB|d_buf_out\(13),
	datac => \timer1|GB|d_buf_out\(15),
	datad => \timer1|GB|d_buf_out\(12),
	combout => \DCB3|Mux6~0_combout\);

-- Location: LCCOMB_X75_Y41_N6
\DCB3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB3|Mux5~0_combout\ = (\timer1|GB|d_buf_out\(13) & ((\timer1|GB|d_buf_out\(12) & ((\timer1|GB|d_buf_out\(15)))) # (!\timer1|GB|d_buf_out\(12) & (\timer1|GB|d_buf_out\(14))))) # (!\timer1|GB|d_buf_out\(13) & (\timer1|GB|d_buf_out\(14) & 
-- (\timer1|GB|d_buf_out\(15) $ (\timer1|GB|d_buf_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(14),
	datab => \timer1|GB|d_buf_out\(13),
	datac => \timer1|GB|d_buf_out\(15),
	datad => \timer1|GB|d_buf_out\(12),
	combout => \DCB3|Mux5~0_combout\);

-- Location: LCCOMB_X75_Y41_N28
\DCB3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB3|Mux4~0_combout\ = (\timer1|GB|d_buf_out\(14) & (\timer1|GB|d_buf_out\(15) & ((\timer1|GB|d_buf_out\(13)) # (!\timer1|GB|d_buf_out\(12))))) # (!\timer1|GB|d_buf_out\(14) & (\timer1|GB|d_buf_out\(13) & (!\timer1|GB|d_buf_out\(15) & 
-- !\timer1|GB|d_buf_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(14),
	datab => \timer1|GB|d_buf_out\(13),
	datac => \timer1|GB|d_buf_out\(15),
	datad => \timer1|GB|d_buf_out\(12),
	combout => \DCB3|Mux4~0_combout\);

-- Location: LCCOMB_X75_Y41_N18
\DCB3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB3|Mux3~0_combout\ = (\timer1|GB|d_buf_out\(12) & (\timer1|GB|d_buf_out\(14) $ ((!\timer1|GB|d_buf_out\(13))))) # (!\timer1|GB|d_buf_out\(12) & ((\timer1|GB|d_buf_out\(14) & (!\timer1|GB|d_buf_out\(13) & !\timer1|GB|d_buf_out\(15))) # 
-- (!\timer1|GB|d_buf_out\(14) & (\timer1|GB|d_buf_out\(13) & \timer1|GB|d_buf_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(14),
	datab => \timer1|GB|d_buf_out\(13),
	datac => \timer1|GB|d_buf_out\(15),
	datad => \timer1|GB|d_buf_out\(12),
	combout => \DCB3|Mux3~0_combout\);

-- Location: LCCOMB_X75_Y41_N4
\DCB3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB3|Mux2~0_combout\ = (\timer1|GB|d_buf_out\(13) & (((!\timer1|GB|d_buf_out\(15) & \timer1|GB|d_buf_out\(12))))) # (!\timer1|GB|d_buf_out\(13) & ((\timer1|GB|d_buf_out\(14) & (!\timer1|GB|d_buf_out\(15))) # (!\timer1|GB|d_buf_out\(14) & 
-- ((\timer1|GB|d_buf_out\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(14),
	datab => \timer1|GB|d_buf_out\(13),
	datac => \timer1|GB|d_buf_out\(15),
	datad => \timer1|GB|d_buf_out\(12),
	combout => \DCB3|Mux2~0_combout\);

-- Location: LCCOMB_X75_Y41_N10
\DCB3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB3|Mux1~0_combout\ = (\timer1|GB|d_buf_out\(14) & (\timer1|GB|d_buf_out\(12) & (\timer1|GB|d_buf_out\(13) $ (\timer1|GB|d_buf_out\(15))))) # (!\timer1|GB|d_buf_out\(14) & (!\timer1|GB|d_buf_out\(15) & ((\timer1|GB|d_buf_out\(13)) # 
-- (\timer1|GB|d_buf_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(14),
	datab => \timer1|GB|d_buf_out\(13),
	datac => \timer1|GB|d_buf_out\(15),
	datad => \timer1|GB|d_buf_out\(12),
	combout => \DCB3|Mux1~0_combout\);

-- Location: LCCOMB_X75_Y41_N12
\DCB3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DCB3|Mux0~0_combout\ = (\timer1|GB|d_buf_out\(12) & ((\timer1|GB|d_buf_out\(15)) # (\timer1|GB|d_buf_out\(14) $ (\timer1|GB|d_buf_out\(13))))) # (!\timer1|GB|d_buf_out\(12) & ((\timer1|GB|d_buf_out\(13)) # (\timer1|GB|d_buf_out\(14) $ 
-- (\timer1|GB|d_buf_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|GB|d_buf_out\(14),
	datab => \timer1|GB|d_buf_out\(13),
	datac => \timer1|GB|d_buf_out\(15),
	datad => \timer1|GB|d_buf_out\(12),
	combout => \DCB3|Mux0~0_combout\);

-- Location: IOIBUF_X49_Y54_N29
\KEY[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;

ww_LED(8) <= \LED[8]~output_o\;

ww_LED(9) <= \LED[9]~output_o\;

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


