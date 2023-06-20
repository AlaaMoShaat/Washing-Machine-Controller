-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "05/30/2023 17:37:06"

-- 
-- Device: Altera 5M570ZM100C4 Package MBGA100
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	main IS
    PORT (
	Clock : IN std_logic;
	start : IN std_logic;
	reset : IN std_logic;
	state : BUFFER std_logic_vector(1 DOWNTO 0);
	userProg : IN std_logic_vector(4 DOWNTO 0);
	SevSegData : BUFFER std_logic_vector(6 DOWNTO 0);
	SevSegDriver : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END main;

-- Design Ports Information


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_state : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_userProg : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_SevSegData : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SevSegDriver : std_logic_vector(7 DOWNTO 0);
SIGNAL \wsh|Add1~155\ : std_logic;
SIGNAL \wsh|Add2~155\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \clk|Add0~95_combout\ : std_logic;
SIGNAL \clk|Add0~97\ : std_logic;
SIGNAL \clk|Add0~97COUT1_177\ : std_logic;
SIGNAL \clk|Add0~100_combout\ : std_logic;
SIGNAL \clk|Add0~10_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \clk|Add0~12\ : std_logic;
SIGNAL \clk|Add0~0_combout\ : std_logic;
SIGNAL \clk|Add0~2\ : std_logic;
SIGNAL \clk|Add0~2COUT1_161\ : std_logic;
SIGNAL \clk|Add0~15_combout\ : std_logic;
SIGNAL \clk|Add0~17\ : std_logic;
SIGNAL \clk|Add0~17COUT1_162\ : std_logic;
SIGNAL \clk|Add0~5_combout\ : std_logic;
SIGNAL \clk|Add0~7\ : std_logic;
SIGNAL \clk|Add0~7COUT1_163\ : std_logic;
SIGNAL \clk|Add0~20_combout\ : std_logic;
SIGNAL \clk|Add0~22\ : std_logic;
SIGNAL \clk|Add0~22COUT1_164\ : std_logic;
SIGNAL \clk|Add0~25_combout\ : std_logic;
SIGNAL \clk|Add0~27\ : std_logic;
SIGNAL \clk|Add0~55_combout\ : std_logic;
SIGNAL \clk|Add0~30_combout\ : std_logic;
SIGNAL \clk|Add0~32\ : std_logic;
SIGNAL \clk|Add0~32COUT1_165\ : std_logic;
SIGNAL \clk|Add0~35_combout\ : std_logic;
SIGNAL \clk|Add0~37\ : std_logic;
SIGNAL \clk|Add0~37COUT1_166\ : std_logic;
SIGNAL \clk|Add0~40_combout\ : std_logic;
SIGNAL \clk|Add0~42\ : std_logic;
SIGNAL \clk|Add0~42COUT1_167\ : std_logic;
SIGNAL \clk|Add0~45_combout\ : std_logic;
SIGNAL \clk|Add0~47\ : std_logic;
SIGNAL \clk|Add0~47COUT1_168\ : std_logic;
SIGNAL \clk|Add0~50_combout\ : std_logic;
SIGNAL \clk|Add0~52\ : std_logic;
SIGNAL \clk|Add0~57\ : std_logic;
SIGNAL \clk|Add0~57COUT1_169\ : std_logic;
SIGNAL \clk|Add0~60_combout\ : std_logic;
SIGNAL \clk|Add0~62\ : std_logic;
SIGNAL \clk|Add0~62COUT1_170\ : std_logic;
SIGNAL \clk|Add0~65_combout\ : std_logic;
SIGNAL \clk|Add0~67\ : std_logic;
SIGNAL \clk|Add0~67COUT1_171\ : std_logic;
SIGNAL \clk|Add0~70_combout\ : std_logic;
SIGNAL \clk|Add0~72\ : std_logic;
SIGNAL \clk|Add0~72COUT1_172\ : std_logic;
SIGNAL \clk|Add0~75_combout\ : std_logic;
SIGNAL \clk|Add0~77\ : std_logic;
SIGNAL \clk|Add0~102\ : std_logic;
SIGNAL \clk|Add0~102COUT1_178\ : std_logic;
SIGNAL \clk|Add0~105_combout\ : std_logic;
SIGNAL \clk|Equal0~6\ : std_logic;
SIGNAL \clk|Add0~80_combout\ : std_logic;
SIGNAL \clk|Add0~82\ : std_logic;
SIGNAL \clk|Add0~82COUT1_173\ : std_logic;
SIGNAL \clk|Add0~85_combout\ : std_logic;
SIGNAL \clk|Add0~87\ : std_logic;
SIGNAL \clk|Add0~87COUT1_174\ : std_logic;
SIGNAL \clk|Add0~110_combout\ : std_logic;
SIGNAL \clk|Equal0~5\ : std_logic;
SIGNAL \clk|Add0~112\ : std_logic;
SIGNAL \clk|Add0~112COUT1_175\ : std_logic;
SIGNAL \clk|Add0~115_combout\ : std_logic;
SIGNAL \clk|Add0~117\ : std_logic;
SIGNAL \clk|Add0~117COUT1_176\ : std_logic;
SIGNAL \clk|Add0~90_combout\ : std_logic;
SIGNAL \clk|Add0~92\ : std_logic;
SIGNAL \clk|Add0~130_combout\ : std_logic;
SIGNAL \clk|Add0~132\ : std_logic;
SIGNAL \clk|Add0~132COUT1_181\ : std_logic;
SIGNAL \clk|Add0~135_combout\ : std_logic;
SIGNAL \clk|Add0~107\ : std_logic;
SIGNAL \clk|Add0~107COUT1_179\ : std_logic;
SIGNAL \clk|Add0~120_combout\ : std_logic;
SIGNAL \clk|Add0~122\ : std_logic;
SIGNAL \clk|Add0~122COUT1_180\ : std_logic;
SIGNAL \clk|Add0~125_combout\ : std_logic;
SIGNAL \clk|Add0~127\ : std_logic;
SIGNAL \clk|Add0~137\ : std_logic;
SIGNAL \clk|Add0~137COUT1_182\ : std_logic;
SIGNAL \clk|Add0~142COUT1_183\ : std_logic;
SIGNAL \clk|Add0~147\ : std_logic;
SIGNAL \clk|Add0~147COUT1_184\ : std_logic;
SIGNAL \clk|Add0~150_combout\ : std_logic;
SIGNAL \clk|Add0~152\ : std_logic;
SIGNAL \clk|Add0~155_combout\ : std_logic;
SIGNAL \clk|Add0~140_combout\ : std_logic;
SIGNAL \clk|Add0~142\ : std_logic;
SIGNAL \clk|Add0~145_combout\ : std_logic;
SIGNAL \clk|Equal0~9\ : std_logic;
SIGNAL \clk|Equal0~8\ : std_logic;
SIGNAL \clk|Equal0~0\ : std_logic;
SIGNAL \clk|Equal0~1_combout\ : std_logic;
SIGNAL \clk|Equal0~3\ : std_logic;
SIGNAL \clk|Equal0~2\ : std_logic;
SIGNAL \clk|Equal0~4_combout\ : std_logic;
SIGNAL \clk|Equal0~7\ : std_logic;
SIGNAL \clk|Equal0~10_combout\ : std_logic;
SIGNAL \clk|clk_out_sig~regout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \driver|Equal1~0_combout\ : std_logic;
SIGNAL \wsh|Mux0~0_combout\ : std_logic;
SIGNAL \wsh|Mux1~0_combout\ : std_logic;
SIGNAL \wsh|Mux1~1_combout\ : std_logic;
SIGNAL \wsh|Mux2~0_combout\ : std_logic;
SIGNAL \wsh|Equal1~0_combout\ : std_logic;
SIGNAL \wsh|Equal1~1_combout\ : std_logic;
SIGNAL \wsh|curState~0_combout\ : std_logic;
SIGNAL \wsh|curState~13_combout\ : std_logic;
SIGNAL \wsh|Mux4~0_combout\ : std_logic;
SIGNAL \wsh|counter~4_combout\ : std_logic;
SIGNAL \wsh|counter~16_combout\ : std_logic;
SIGNAL \wsh|process_0~2_combout\ : std_logic;
SIGNAL \wsh|process_0~1_combout\ : std_logic;
SIGNAL \wsh|counter[17]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~157_cout\ : std_logic;
SIGNAL \wsh|Mux5~0_combout\ : std_logic;
SIGNAL \wsh|counter~13_combout\ : std_logic;
SIGNAL \wsh|counter~53_combout\ : std_logic;
SIGNAL \wsh|Add2~75_combout\ : std_logic;
SIGNAL \wsh|Mux7~0_combout\ : std_logic;
SIGNAL \wsh|counter~6_combout\ : std_logic;
SIGNAL \wsh|counter~7_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~4_combout\ : std_logic;
SIGNAL \wsh|Add0~0_combout\ : std_logic;
SIGNAL \wsh|counter~39_combout\ : std_logic;
SIGNAL \wsh|Add1~2\ : std_logic;
SIGNAL \wsh|Add1~2COUT1_161\ : std_logic;
SIGNAL \wsh|Add1~7\ : std_logic;
SIGNAL \wsh|Add1~7COUT1_162\ : std_logic;
SIGNAL \wsh|Add1~12\ : std_logic;
SIGNAL \wsh|Add1~12COUT1_163\ : std_logic;
SIGNAL \wsh|Add1~17\ : std_logic;
SIGNAL \wsh|Add1~17COUT1_164\ : std_logic;
SIGNAL \wsh|Add1~22\ : std_logic;
SIGNAL \wsh|Add1~25_combout\ : std_logic;
SIGNAL \wsh|counter[6]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~100_combout\ : std_logic;
SIGNAL \wsh|Add0~2\ : std_logic;
SIGNAL \wsh|Add0~7\ : std_logic;
SIGNAL \wsh|Add0~7COUT1_161\ : std_logic;
SIGNAL \wsh|Add0~12\ : std_logic;
SIGNAL \wsh|Add0~12COUT1_162\ : std_logic;
SIGNAL \wsh|Add0~17\ : std_logic;
SIGNAL \wsh|Add0~17COUT1_163\ : std_logic;
SIGNAL \wsh|Add0~22\ : std_logic;
SIGNAL \wsh|Add0~22COUT1_164\ : std_logic;
SIGNAL \wsh|Add0~27\ : std_logic;
SIGNAL \wsh|Add0~30_combout\ : std_logic;
SIGNAL \wsh|counter~20_combout\ : std_logic;
SIGNAL \wsh|Add1~27\ : std_logic;
SIGNAL \wsh|Add1~27COUT1_165\ : std_logic;
SIGNAL \wsh|Add1~30_combout\ : std_logic;
SIGNAL \wsh|counter[7]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~102\ : std_logic;
SIGNAL \wsh|Add2~102COUT1_165\ : std_logic;
SIGNAL \wsh|Add2~105_combout\ : std_logic;
SIGNAL \wsh|Add0~32\ : std_logic;
SIGNAL \wsh|Add0~32COUT1_165\ : std_logic;
SIGNAL \wsh|Add0~35_combout\ : std_logic;
SIGNAL \wsh|counter~21_combout\ : std_logic;
SIGNAL \wsh|Add1~32\ : std_logic;
SIGNAL \wsh|Add1~32COUT1_166\ : std_logic;
SIGNAL \wsh|Add1~35_combout\ : std_logic;
SIGNAL \wsh|counter[8]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~107\ : std_logic;
SIGNAL \wsh|Add2~107COUT1_166\ : std_logic;
SIGNAL \wsh|Add2~110_combout\ : std_logic;
SIGNAL \wsh|Add0~37\ : std_logic;
SIGNAL \wsh|Add0~37COUT1_166\ : std_logic;
SIGNAL \wsh|Add0~40_combout\ : std_logic;
SIGNAL \wsh|counter~22_combout\ : std_logic;
SIGNAL \wsh|Add1~37\ : std_logic;
SIGNAL \wsh|Add1~37COUT1_167\ : std_logic;
SIGNAL \wsh|Add1~40_combout\ : std_logic;
SIGNAL \wsh|counter[9]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~112\ : std_logic;
SIGNAL \wsh|Add2~112COUT1_167\ : std_logic;
SIGNAL \wsh|Add2~115_combout\ : std_logic;
SIGNAL \wsh|Add0~42\ : std_logic;
SIGNAL \wsh|Add0~42COUT1_167\ : std_logic;
SIGNAL \wsh|Add0~45_combout\ : std_logic;
SIGNAL \wsh|counter~23_combout\ : std_logic;
SIGNAL \wsh|Add1~42\ : std_logic;
SIGNAL \wsh|Add1~42COUT1_168\ : std_logic;
SIGNAL \wsh|Add1~47\ : std_logic;
SIGNAL \wsh|Add1~50_combout\ : std_logic;
SIGNAL \wsh|counter[11]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~125_combout\ : std_logic;
SIGNAL \wsh|Add0~47\ : std_logic;
SIGNAL \wsh|Add0~47COUT1_168\ : std_logic;
SIGNAL \wsh|Add0~52\ : std_logic;
SIGNAL \wsh|Add0~55_combout\ : std_logic;
SIGNAL \wsh|counter~25_combout\ : std_logic;
SIGNAL \wsh|Add1~52\ : std_logic;
SIGNAL \wsh|Add1~52COUT1_169\ : std_logic;
SIGNAL \wsh|Add1~55_combout\ : std_logic;
SIGNAL \wsh|counter[12]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~127\ : std_logic;
SIGNAL \wsh|Add2~127COUT1_169\ : std_logic;
SIGNAL \wsh|Add2~130_combout\ : std_logic;
SIGNAL \wsh|Add0~57\ : std_logic;
SIGNAL \wsh|Add0~57COUT1_169\ : std_logic;
SIGNAL \wsh|Add0~60_combout\ : std_logic;
SIGNAL \wsh|counter~26_combout\ : std_logic;
SIGNAL \wsh|Add1~57\ : std_logic;
SIGNAL \wsh|Add1~57COUT1_170\ : std_logic;
SIGNAL \wsh|Add1~60_combout\ : std_logic;
SIGNAL \wsh|counter[13]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~132\ : std_logic;
SIGNAL \wsh|Add2~132COUT1_170\ : std_logic;
SIGNAL \wsh|Add2~135_combout\ : std_logic;
SIGNAL \wsh|Add0~62\ : std_logic;
SIGNAL \wsh|Add0~62COUT1_170\ : std_logic;
SIGNAL \wsh|Add0~65_combout\ : std_logic;
SIGNAL \wsh|counter~27_combout\ : std_logic;
SIGNAL \wsh|Add1~62\ : std_logic;
SIGNAL \wsh|Add1~62COUT1_171\ : std_logic;
SIGNAL \wsh|Add1~65_combout\ : std_logic;
SIGNAL \wsh|counter[14]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~137\ : std_logic;
SIGNAL \wsh|Add2~137COUT1_171\ : std_logic;
SIGNAL \wsh|Add2~140_combout\ : std_logic;
SIGNAL \wsh|Add0~67\ : std_logic;
SIGNAL \wsh|Add0~67COUT1_171\ : std_logic;
SIGNAL \wsh|Add0~70_combout\ : std_logic;
SIGNAL \wsh|counter~28_combout\ : std_logic;
SIGNAL \wsh|Add1~67\ : std_logic;
SIGNAL \wsh|Add1~67COUT1_172\ : std_logic;
SIGNAL \wsh|Add1~72\ : std_logic;
SIGNAL \wsh|Add1~75_combout\ : std_logic;
SIGNAL \wsh|counter[16]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~150_combout\ : std_logic;
SIGNAL \wsh|Add0~72\ : std_logic;
SIGNAL \wsh|Add0~72COUT1_172\ : std_logic;
SIGNAL \wsh|Add0~77\ : std_logic;
SIGNAL \wsh|Add0~80_combout\ : std_logic;
SIGNAL \wsh|counter~30_combout\ : std_logic;
SIGNAL \wsh|Add1~77\ : std_logic;
SIGNAL \wsh|Add1~77COUT1_173\ : std_logic;
SIGNAL \wsh|Add1~82\ : std_logic;
SIGNAL \wsh|Add1~82COUT1_174\ : std_logic;
SIGNAL \wsh|Add1~85_combout\ : std_logic;
SIGNAL \wsh|counter[18]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~152\ : std_logic;
SIGNAL \wsh|Add2~152COUT1_173\ : std_logic;
SIGNAL \wsh|Add2~2\ : std_logic;
SIGNAL \wsh|Add2~2COUT1_174\ : std_logic;
SIGNAL \wsh|Add2~5_combout\ : std_logic;
SIGNAL \wsh|Add0~82\ : std_logic;
SIGNAL \wsh|Add0~82COUT1_173\ : std_logic;
SIGNAL \wsh|Add0~87\ : std_logic;
SIGNAL \wsh|Add0~87COUT1_174\ : std_logic;
SIGNAL \wsh|Add0~90_combout\ : std_logic;
SIGNAL \wsh|counter~32_combout\ : std_logic;
SIGNAL \wsh|Add1~87\ : std_logic;
SIGNAL \wsh|Add1~87COUT1_175\ : std_logic;
SIGNAL \wsh|Add1~90_combout\ : std_logic;
SIGNAL \wsh|counter[19]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~7\ : std_logic;
SIGNAL \wsh|Add2~7COUT1_175\ : std_logic;
SIGNAL \wsh|Add2~10_combout\ : std_logic;
SIGNAL \wsh|Add0~92\ : std_logic;
SIGNAL \wsh|Add0~92COUT1_175\ : std_logic;
SIGNAL \wsh|Add0~95_combout\ : std_logic;
SIGNAL \wsh|counter~33_combout\ : std_logic;
SIGNAL \wsh|Add1~92\ : std_logic;
SIGNAL \wsh|Add1~92COUT1_176\ : std_logic;
SIGNAL \wsh|Add1~95_combout\ : std_logic;
SIGNAL \wsh|counter[20]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~12\ : std_logic;
SIGNAL \wsh|Add2~12COUT1_176\ : std_logic;
SIGNAL \wsh|Add2~15_combout\ : std_logic;
SIGNAL \wsh|Add0~97\ : std_logic;
SIGNAL \wsh|Add0~97COUT1_176\ : std_logic;
SIGNAL \wsh|Add0~100_combout\ : std_logic;
SIGNAL \wsh|counter~34_combout\ : std_logic;
SIGNAL \wsh|Add1~97\ : std_logic;
SIGNAL \wsh|Add1~100_combout\ : std_logic;
SIGNAL \wsh|counter[21]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~17\ : std_logic;
SIGNAL \wsh|Add2~20_combout\ : std_logic;
SIGNAL \wsh|Add0~102\ : std_logic;
SIGNAL \wsh|Add0~105_combout\ : std_logic;
SIGNAL \wsh|counter~35_combout\ : std_logic;
SIGNAL \wsh|Add1~102\ : std_logic;
SIGNAL \wsh|Add1~102COUT1_177\ : std_logic;
SIGNAL \wsh|Add1~105_combout\ : std_logic;
SIGNAL \wsh|counter[22]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~22\ : std_logic;
SIGNAL \wsh|Add2~22COUT1_177\ : std_logic;
SIGNAL \wsh|Add2~25_combout\ : std_logic;
SIGNAL \wsh|Add0~107\ : std_logic;
SIGNAL \wsh|Add0~107COUT1_177\ : std_logic;
SIGNAL \wsh|Add0~110_combout\ : std_logic;
SIGNAL \wsh|counter~36_combout\ : std_logic;
SIGNAL \wsh|Add1~107\ : std_logic;
SIGNAL \wsh|Add1~107COUT1_178\ : std_logic;
SIGNAL \wsh|Add1~110_combout\ : std_logic;
SIGNAL \wsh|counter[23]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~27\ : std_logic;
SIGNAL \wsh|Add2~27COUT1_178\ : std_logic;
SIGNAL \wsh|Add2~30_combout\ : std_logic;
SIGNAL \wsh|Add0~112\ : std_logic;
SIGNAL \wsh|Add0~112COUT1_178\ : std_logic;
SIGNAL \wsh|Add0~115_combout\ : std_logic;
SIGNAL \wsh|counter~37_combout\ : std_logic;
SIGNAL \wsh|Add1~112\ : std_logic;
SIGNAL \wsh|Add1~112COUT1_179\ : std_logic;
SIGNAL \wsh|Add1~115_combout\ : std_logic;
SIGNAL \wsh|counter[24]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~32\ : std_logic;
SIGNAL \wsh|Add2~32COUT1_179\ : std_logic;
SIGNAL \wsh|Add2~35_combout\ : std_logic;
SIGNAL \wsh|Add0~117\ : std_logic;
SIGNAL \wsh|Add0~117COUT1_179\ : std_logic;
SIGNAL \wsh|Add0~120_combout\ : std_logic;
SIGNAL \wsh|counter~38_combout\ : std_logic;
SIGNAL \wsh|Add1~117\ : std_logic;
SIGNAL \wsh|Add1~117COUT1_180\ : std_logic;
SIGNAL \wsh|Add1~120_combout\ : std_logic;
SIGNAL \wsh|counter[25]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~37\ : std_logic;
SIGNAL \wsh|Add2~37COUT1_180\ : std_logic;
SIGNAL \wsh|Add2~40_combout\ : std_logic;
SIGNAL \wsh|Add0~122\ : std_logic;
SIGNAL \wsh|Add0~122COUT1_180\ : std_logic;
SIGNAL \wsh|Add0~125_combout\ : std_logic;
SIGNAL \wsh|counter~40_combout\ : std_logic;
SIGNAL \wsh|Add1~122\ : std_logic;
SIGNAL \wsh|Add1~125_combout\ : std_logic;
SIGNAL \wsh|counter[26]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~42\ : std_logic;
SIGNAL \wsh|Add2~45_combout\ : std_logic;
SIGNAL \wsh|Add0~127\ : std_logic;
SIGNAL \wsh|Add0~130_combout\ : std_logic;
SIGNAL \wsh|counter~41_combout\ : std_logic;
SIGNAL \wsh|Add1~127\ : std_logic;
SIGNAL \wsh|Add1~127COUT1_181\ : std_logic;
SIGNAL \wsh|Add1~130_combout\ : std_logic;
SIGNAL \wsh|counter[27]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~47\ : std_logic;
SIGNAL \wsh|Add2~47COUT1_181\ : std_logic;
SIGNAL \wsh|Add2~50_combout\ : std_logic;
SIGNAL \wsh|Add0~132\ : std_logic;
SIGNAL \wsh|Add0~132COUT1_181\ : std_logic;
SIGNAL \wsh|Add0~135_combout\ : std_logic;
SIGNAL \wsh|Equal3~8_combout\ : std_logic;
SIGNAL \wsh|Add0~15_combout\ : std_logic;
SIGNAL \wsh|Add0~5_combout\ : std_logic;
SIGNAL \wsh|Add0~10_combout\ : std_logic;
SIGNAL \wsh|Equal3~0_combout\ : std_logic;
SIGNAL \wsh|Equal3~3_combout\ : std_logic;
SIGNAL \wsh|Add0~50_combout\ : std_logic;
SIGNAL \wsh|Equal3~2_combout\ : std_logic;
SIGNAL \wsh|Add0~25_combout\ : std_logic;
SIGNAL \wsh|Equal3~1_combout\ : std_logic;
SIGNAL \wsh|Equal3~4_combout\ : std_logic;
SIGNAL \wsh|counter~44_combout\ : std_logic;
SIGNAL \wsh|Add1~132\ : std_logic;
SIGNAL \wsh|Add1~132COUT1_182\ : std_logic;
SIGNAL \wsh|Add1~135_combout\ : std_logic;
SIGNAL \wsh|counter[28]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~52\ : std_logic;
SIGNAL \wsh|Add2~52COUT1_182\ : std_logic;
SIGNAL \wsh|Add2~55_combout\ : std_logic;
SIGNAL \wsh|Add0~137\ : std_logic;
SIGNAL \wsh|Add0~137COUT1_182\ : std_logic;
SIGNAL \wsh|Add0~140_combout\ : std_logic;
SIGNAL \wsh|counter~42_combout\ : std_logic;
SIGNAL \wsh|Add1~137\ : std_logic;
SIGNAL \wsh|Add1~137COUT1_183\ : std_logic;
SIGNAL \wsh|Add1~140_combout\ : std_logic;
SIGNAL \wsh|counter[29]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~57\ : std_logic;
SIGNAL \wsh|Add2~57COUT1_183\ : std_logic;
SIGNAL \wsh|Add2~60_combout\ : std_logic;
SIGNAL \wsh|Add0~142\ : std_logic;
SIGNAL \wsh|Add0~142COUT1_183\ : std_logic;
SIGNAL \wsh|Add0~145_combout\ : std_logic;
SIGNAL \wsh|counter~43_combout\ : std_logic;
SIGNAL \wsh|Add1~142\ : std_logic;
SIGNAL \wsh|Add1~142COUT1_184\ : std_logic;
SIGNAL \wsh|Add1~145_combout\ : std_logic;
SIGNAL \wsh|counter[30]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~62\ : std_logic;
SIGNAL \wsh|Add2~62COUT1_184\ : std_logic;
SIGNAL \wsh|Add2~65_combout\ : std_logic;
SIGNAL \wsh|Add0~147\ : std_logic;
SIGNAL \wsh|Add0~147COUT1_184\ : std_logic;
SIGNAL \wsh|Add0~150_combout\ : std_logic;
SIGNAL \wsh|counter~45_combout\ : std_logic;
SIGNAL \wsh|Add1~147\ : std_logic;
SIGNAL \wsh|Add1~150_combout\ : std_logic;
SIGNAL \wsh|counter~47_combout\ : std_logic;
SIGNAL \wsh|Add2~67\ : std_logic;
SIGNAL \wsh|Add2~70_combout\ : std_logic;
SIGNAL \wsh|Add0~152\ : std_logic;
SIGNAL \wsh|Add0~155_combout\ : std_logic;
SIGNAL \wsh|Equal3~9_combout\ : std_logic;
SIGNAL \wsh|Add0~85_combout\ : std_logic;
SIGNAL \wsh|Equal3~5_combout\ : std_logic;
SIGNAL \wsh|Equal3~6_combout\ : std_logic;
SIGNAL \wsh|Equal3~7_combout\ : std_logic;
SIGNAL \wsh|Equal3~10_combout\ : std_logic;
SIGNAL \wsh|counter~5_combout\ : std_logic;
SIGNAL \wsh|counter~8_combout\ : std_logic;
SIGNAL \wsh|Add1~157_cout\ : std_logic;
SIGNAL \wsh|Add1~0_combout\ : std_logic;
SIGNAL \wsh|Equal5~10_combout\ : std_logic;
SIGNAL \wsh|counter~48_combout\ : std_logic;
SIGNAL \wsh|counter~10_combout\ : std_logic;
SIGNAL \wsh|counter~52_combout\ : std_logic;
SIGNAL \wsh|counter~11_combout\ : std_logic;
SIGNAL \wsh|counter[1]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~77\ : std_logic;
SIGNAL \wsh|Add2~77COUT1_161\ : std_logic;
SIGNAL \wsh|Add2~80_combout\ : std_logic;
SIGNAL \wsh|counter~49_combout\ : std_logic;
SIGNAL \wsh|Add1~5_combout\ : std_logic;
SIGNAL \wsh|counter~50_combout\ : std_logic;
SIGNAL \wsh|counter~14_combout\ : std_logic;
SIGNAL \wsh|counter~12_combout\ : std_logic;
SIGNAL \wsh|counter~15_combout\ : std_logic;
SIGNAL \wsh|counter[2]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~82\ : std_logic;
SIGNAL \wsh|Add2~82COUT1_162\ : std_logic;
SIGNAL \wsh|Add2~85_combout\ : std_logic;
SIGNAL \wsh|Add1~10_combout\ : std_logic;
SIGNAL \wsh|counter~17_combout\ : std_logic;
SIGNAL \wsh|counter[3]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~87\ : std_logic;
SIGNAL \wsh|Add2~87COUT1_163\ : std_logic;
SIGNAL \wsh|Add2~90_combout\ : std_logic;
SIGNAL \wsh|Add0~20_combout\ : std_logic;
SIGNAL \wsh|counter~18_combout\ : std_logic;
SIGNAL \wsh|Add1~15_combout\ : std_logic;
SIGNAL \wsh|counter[4]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~92\ : std_logic;
SIGNAL \wsh|Add2~92COUT1_164\ : std_logic;
SIGNAL \wsh|Add2~95_combout\ : std_logic;
SIGNAL \wsh|Add1~20_combout\ : std_logic;
SIGNAL \wsh|counter~19_combout\ : std_logic;
SIGNAL \wsh|counter[5]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~97\ : std_logic;
SIGNAL \wsh|Add2~117\ : std_logic;
SIGNAL \wsh|Add2~117COUT1_168\ : std_logic;
SIGNAL \wsh|Add2~120_combout\ : std_logic;
SIGNAL \wsh|counter~24_combout\ : std_logic;
SIGNAL \wsh|Add1~45_combout\ : std_logic;
SIGNAL \wsh|counter[10]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~122\ : std_logic;
SIGNAL \wsh|Add2~142\ : std_logic;
SIGNAL \wsh|Add2~142COUT1_172\ : std_logic;
SIGNAL \wsh|Add2~145_combout\ : std_logic;
SIGNAL \wsh|Add0~75_combout\ : std_logic;
SIGNAL \wsh|counter~29_combout\ : std_logic;
SIGNAL \wsh|Add1~70_combout\ : std_logic;
SIGNAL \wsh|counter[15]~COMBOUT\ : std_logic;
SIGNAL \wsh|Add2~147\ : std_logic;
SIGNAL \wsh|Add2~0_combout\ : std_logic;
SIGNAL \wsh|counter~31_combout\ : std_logic;
SIGNAL \wsh|Add1~80_combout\ : std_logic;
SIGNAL \wsh|Equal5~5_combout\ : std_logic;
SIGNAL \wsh|Equal5~6_combout\ : std_logic;
SIGNAL \wsh|Equal5~7_combout\ : std_logic;
SIGNAL \wsh|Equal5~8_combout\ : std_logic;
SIGNAL \wsh|Equal5~0_combout\ : std_logic;
SIGNAL \wsh|Equal5~1_combout\ : std_logic;
SIGNAL \wsh|Equal5~3_combout\ : std_logic;
SIGNAL \wsh|Equal5~2_combout\ : std_logic;
SIGNAL \wsh|Equal5~4_combout\ : std_logic;
SIGNAL \wsh|Equal5~9_combout\ : std_logic;
SIGNAL \wsh|counter~9_combout\ : std_logic;
SIGNAL \wsh|curState~6_combout\ : std_logic;
SIGNAL \wsh|curState~7_combout\ : std_logic;
SIGNAL \wsh|curState~8_combout\ : std_logic;
SIGNAL \wsh|curState~9_combout\ : std_logic;
SIGNAL \wsh|curState~10_combout\ : std_logic;
SIGNAL \wsh|curState~2_combout\ : std_logic;
SIGNAL \wsh|curState~1_combout\ : std_logic;
SIGNAL \wsh|curState~4_combout\ : std_logic;
SIGNAL \wsh|curState~3_combout\ : std_logic;
SIGNAL \wsh|curState~5_combout\ : std_logic;
SIGNAL \wsh|curState~11_combout\ : std_logic;
SIGNAL \wsh|process_0~0_combout\ : std_logic;
SIGNAL \wsh|zero~0_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~5_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~6_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[3]~39_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[3]~56_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[4]~13_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[3]~28_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[3]~54_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[3]~55_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[3]~57_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[3]~44_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~12_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[3]~45_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[3]~46_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[3]~47_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[2]~48_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[3]~49_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~17_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~50_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[3]~51_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[3]~52_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[3]~53_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[3]~58_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[3]~59_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[0]~23_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[4]~40_combout\ : std_logic;
SIGNAL \wsh|Mux1~2_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~14_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[0]~72_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[0]~73_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[0]~77_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[0]~65_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[0]~78_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[0]~79_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[0]~75_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[0]~74_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[0]~76_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[0]~80_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~99_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[0]~81_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~21_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[0]~82_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[0]~83_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[0]~84_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[0]~85_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[0]~86_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[2]~95_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[2]~96_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[2]~87_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[2]~88_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[2]~89_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[2]~90_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[2]~91_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[2]~92_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[2]~93_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[2]~94_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[2]~97_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[2]~98_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[1]~61_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[1]~60_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[1]~62_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[1]~63_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[1]~69_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[1]~66_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[1]~67_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[4]~7_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~8_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[1]~64_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[1]~68_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[1]~70_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[1]~71_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[4]~38_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~37_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[4]~41_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[4]~32_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[4]~29_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[4]~27_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[4]~30_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[4]~31_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[4]~33_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[4]~34_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[4]~35_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[4]~36_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[4]~42_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[4]~43_combout\ : std_logic;
SIGNAL \bcd7seg|Mux0~2_combout\ : std_logic;
SIGNAL \bcd7seg|Mux0~1_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~9_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~10_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~11_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~20_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~22_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~24_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~18_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~15_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~16_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~19_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~25_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DATA[5]~26_combout\ : std_logic;
SIGNAL \bcd7seg|Mux0~3_combout\ : std_logic;
SIGNAL \bcd7seg|Mux1~2_combout\ : std_logic;
SIGNAL \bcd7seg|Mux0~0_combout\ : std_logic;
SIGNAL \bcd7seg|Mux0~4_combout\ : std_logic;
SIGNAL \bcd7seg|Mux7~0_combout\ : std_logic;
SIGNAL \bcd7seg|seg_out[6]~0_combout\ : std_logic;
SIGNAL \bcd7seg|Mux1~4_combout\ : std_logic;
SIGNAL \bcd7seg|Mux1~3_combout\ : std_logic;
SIGNAL \bcd7seg|Mux1~5_combout\ : std_logic;
SIGNAL \bcd7seg|Mux1~6_combout\ : std_logic;
SIGNAL \bcd7seg|Mux1~7_combout\ : std_logic;
SIGNAL \bcd7seg|Mux2~3_combout\ : std_logic;
SIGNAL \bcd7seg|Mux2~1_combout\ : std_logic;
SIGNAL \bcd7seg|Mux2~0_combout\ : std_logic;
SIGNAL \bcd7seg|Mux2~2_combout\ : std_logic;
SIGNAL \bcd7seg|Mux2~4_combout\ : std_logic;
SIGNAL \bcd7seg|Mux3~0_combout\ : std_logic;
SIGNAL \bcd7seg|Mux3~1_combout\ : std_logic;
SIGNAL \bcd7seg|Mux3~2_combout\ : std_logic;
SIGNAL \bcd7seg|Mux3~3_combout\ : std_logic;
SIGNAL \bcd7seg|Mux4~3_combout\ : std_logic;
SIGNAL \bcd7seg|Mux4~2_combout\ : std_logic;
SIGNAL \bcd7seg|Mux4~4_combout\ : std_logic;
SIGNAL \bcd7seg|Mux4~5_combout\ : std_logic;
SIGNAL \bcd7seg|Mux4~6_combout\ : std_logic;
SIGNAL \bcd7seg|Mux5~1_combout\ : std_logic;
SIGNAL \bcd7seg|Mux5~0_combout\ : std_logic;
SIGNAL \bcd7seg|Mux5~2_combout\ : std_logic;
SIGNAL \bcd7seg|Mux5~3_combout\ : std_logic;
SIGNAL \bcd7seg|Mux5~4_combout\ : std_logic;
SIGNAL \bcd7seg|Mux6~3_combout\ : std_logic;
SIGNAL \bcd7seg|Mux6~2_combout\ : std_logic;
SIGNAL \bcd7seg|Mux6~4_combout\ : std_logic;
SIGNAL \bcd7seg|Mux6~5_combout\ : std_logic;
SIGNAL \bcd7seg|Mux6~6_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DRIVER[0]~0_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DRIVER[1]~1_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DRIVER[2]~2_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DRIVER[3]~3_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DRIVER[4]~4_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DRIVER[5]~5_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DRIVER[6]~6_combout\ : std_logic;
SIGNAL \driver|SEV_SEG_DRIVER[7]~7_combout\ : std_logic;
SIGNAL \clk|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \wsh|curState\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \driver|COUNTER\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \userProg~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \bcd7seg|seg_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \wsh|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \driver|ALT_INV_SEV_SEG_DRIVER[7]~7_combout\ : std_logic;
SIGNAL \driver|ALT_INV_SEV_SEG_DRIVER[6]~6_combout\ : std_logic;
SIGNAL \driver|ALT_INV_SEV_SEG_DRIVER[5]~5_combout\ : std_logic;
SIGNAL \driver|ALT_INV_SEV_SEG_DRIVER[4]~4_combout\ : std_logic;
SIGNAL \driver|ALT_INV_SEV_SEG_DRIVER[3]~3_combout\ : std_logic;
SIGNAL \driver|ALT_INV_SEV_SEG_DRIVER[0]~0_combout\ : std_logic;
SIGNAL \wsh|ALT_INV_curState\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_Clock <= Clock;
ww_start <= start;
ww_reset <= reset;
state <= ww_state;
ww_userProg <= userProg;
SevSegData <= ww_SevSegData;
SevSegDriver <= ww_SevSegDriver;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\driver|ALT_INV_SEV_SEG_DRIVER[7]~7_combout\ <= NOT \driver|SEV_SEG_DRIVER[7]~7_combout\;
\driver|ALT_INV_SEV_SEG_DRIVER[6]~6_combout\ <= NOT \driver|SEV_SEG_DRIVER[6]~6_combout\;
\driver|ALT_INV_SEV_SEG_DRIVER[5]~5_combout\ <= NOT \driver|SEV_SEG_DRIVER[5]~5_combout\;
\driver|ALT_INV_SEV_SEG_DRIVER[4]~4_combout\ <= NOT \driver|SEV_SEG_DRIVER[4]~4_combout\;
\driver|ALT_INV_SEV_SEG_DRIVER[3]~3_combout\ <= NOT \driver|SEV_SEG_DRIVER[3]~3_combout\;
\driver|ALT_INV_SEV_SEG_DRIVER[0]~0_combout\ <= NOT \driver|SEV_SEG_DRIVER[0]~0_combout\;
\wsh|ALT_INV_curState\(1) <= NOT \wsh|curState\(1);
\wsh|ALT_INV_curState\(0) <= NOT \wsh|curState\(0);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: LC_X11_Y6_N5
\clk|Add0~95\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~95_combout\ = (\clk|counter\(21) $ ((\clk|Add0~92\)))
-- \clk|Add0~97\ = CARRY(((!\clk|Add0~92\) # (!\clk|counter\(21))))
-- \clk|Add0~97COUT1_177\ = CARRY(((!\clk|Add0~92\) # (!\clk|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(21),
	cin => \clk|Add0~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~95_combout\,
	cout0 => \clk|Add0~97\,
	cout1 => \clk|Add0~97COUT1_177\);

-- Location: LC_X11_Y7_N6
\clk|counter[21]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(21) = DFFEAS((((\clk|Add0~95_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \clk|Add0~95_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(21));

-- Location: LC_X11_Y6_N6
\clk|Add0~100\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~100_combout\ = \clk|counter\(22) $ ((((!(!\clk|Add0~92\ & \clk|Add0~97\) # (\clk|Add0~92\ & \clk|Add0~97COUT1_177\)))))
-- \clk|Add0~102\ = CARRY((\clk|counter\(22) & ((!\clk|Add0~97\))))
-- \clk|Add0~102COUT1_178\ = CARRY((\clk|counter\(22) & ((!\clk|Add0~97COUT1_177\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk|counter\(22),
	cin => \clk|Add0~92\,
	cin0 => \clk|Add0~97\,
	cin1 => \clk|Add0~97COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~100_combout\,
	cout0 => \clk|Add0~102\,
	cout1 => \clk|Add0~102COUT1_178\);

-- Location: LC_X11_Y7_N1
\clk|counter[22]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(22) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~100_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \clk|Add0~100_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(22));

-- Location: LC_X9_Y6_N4
\clk|Add0~10\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~10_combout\ = ((!\clk|counter\(0)))
-- \clk|Add0~12\ = CARRY(((\clk|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~10_combout\,
	cout => \clk|Add0~12\);

-- Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X8_Y6_N2
\clk|counter[0]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(0) = DFFEAS((\clk|Add0~10_combout\ & (((\reset~combout\) # (!\clk|Equal0~10_combout\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \clk|Add0~10_combout\,
	datac => \clk|Equal0~10_combout\,
	datad => \reset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(0));

-- Location: LC_X9_Y6_N5
\clk|Add0~0\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~0_combout\ = (\clk|counter\(1) $ ((\clk|Add0~12\)))
-- \clk|Add0~2\ = CARRY(((!\clk|Add0~12\) # (!\clk|counter\(1))))
-- \clk|Add0~2COUT1_161\ = CARRY(((!\clk|Add0~12\) # (!\clk|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(1),
	cin => \clk|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~0_combout\,
	cout0 => \clk|Add0~2\,
	cout1 => \clk|Add0~2COUT1_161\);

-- Location: LC_X9_Y6_N2
\clk|counter[1]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(1) = DFFEAS((\clk|Add0~0_combout\ & (((\reset~combout\) # (!\clk|Equal0~10_combout\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \clk|Add0~0_combout\,
	datac => \reset~combout\,
	datad => \clk|Equal0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(1));

-- Location: LC_X9_Y6_N6
\clk|Add0~15\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~15_combout\ = (\clk|counter\(2) $ ((!(!\clk|Add0~12\ & \clk|Add0~2\) # (\clk|Add0~12\ & \clk|Add0~2COUT1_161\))))
-- \clk|Add0~17\ = CARRY(((\clk|counter\(2) & !\clk|Add0~2\)))
-- \clk|Add0~17COUT1_162\ = CARRY(((\clk|counter\(2) & !\clk|Add0~2COUT1_161\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(2),
	cin => \clk|Add0~12\,
	cin0 => \clk|Add0~2\,
	cin1 => \clk|Add0~2COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~15_combout\,
	cout0 => \clk|Add0~17\,
	cout1 => \clk|Add0~17COUT1_162\);

-- Location: LC_X9_Y6_N1
\clk|counter[2]\ : maxv_lcell
-- Equation(s):
-- \clk|Equal0~0\ = (\clk|counter\(3) & (\clk|counter\(1) & (!C1_counter[2] & !\clk|counter\(0))))
-- \clk|counter\(2) = DFFEAS(\clk|Equal0~0\, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \clk|counter\(3),
	datab => \clk|counter\(1),
	datac => \clk|Add0~15_combout\,
	datad => \clk|counter\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Equal0~0\,
	regout => \clk|counter\(2));

-- Location: LC_X9_Y6_N7
\clk|Add0~5\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~5_combout\ = \clk|counter\(3) $ (((((!\clk|Add0~12\ & \clk|Add0~17\) # (\clk|Add0~12\ & \clk|Add0~17COUT1_162\)))))
-- \clk|Add0~7\ = CARRY(((!\clk|Add0~17\)) # (!\clk|counter\(3)))
-- \clk|Add0~7COUT1_163\ = CARRY(((!\clk|Add0~17COUT1_162\)) # (!\clk|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk|counter\(3),
	cin => \clk|Add0~12\,
	cin0 => \clk|Add0~17\,
	cin1 => \clk|Add0~17COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~5_combout\,
	cout0 => \clk|Add0~7\,
	cout1 => \clk|Add0~7COUT1_163\);

-- Location: LC_X8_Y6_N1
\clk|counter[3]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(3) = DFFEAS((\clk|Add0~5_combout\ & (((\reset~combout\) # (!\clk|Equal0~10_combout\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \clk|Add0~5_combout\,
	datac => \clk|Equal0~10_combout\,
	datad => \reset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(3));

-- Location: LC_X9_Y6_N8
\clk|Add0~20\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~20_combout\ = \clk|counter\(4) $ ((((!(!\clk|Add0~12\ & \clk|Add0~7\) # (\clk|Add0~12\ & \clk|Add0~7COUT1_163\)))))
-- \clk|Add0~22\ = CARRY((\clk|counter\(4) & ((!\clk|Add0~7\))))
-- \clk|Add0~22COUT1_164\ = CARRY((\clk|counter\(4) & ((!\clk|Add0~7COUT1_163\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk|counter\(4),
	cin => \clk|Add0~12\,
	cin0 => \clk|Add0~7\,
	cin1 => \clk|Add0~7COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~20_combout\,
	cout0 => \clk|Add0~22\,
	cout1 => \clk|Add0~22COUT1_164\);

-- Location: LC_X8_Y6_N9
\clk|counter[4]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(4) = DFFEAS(((\clk|Add0~20_combout\ & ((\reset~combout\) # (!\clk|Equal0~10_combout\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \clk|Add0~20_combout\,
	datac => \clk|Equal0~10_combout\,
	datad => \reset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(4));

-- Location: LC_X9_Y6_N9
\clk|Add0~25\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~25_combout\ = (\clk|counter\(5) $ (((!\clk|Add0~12\ & \clk|Add0~22\) # (\clk|Add0~12\ & \clk|Add0~22COUT1_164\))))
-- \clk|Add0~27\ = CARRY(((!\clk|Add0~22COUT1_164\) # (!\clk|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(5),
	cin => \clk|Add0~12\,
	cin0 => \clk|Add0~22\,
	cin1 => \clk|Add0~22COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~25_combout\,
	cout => \clk|Add0~27\);

-- Location: LC_X8_Y6_N4
\clk|counter[5]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(5) = DFFEAS(((\clk|Add0~25_combout\ & ((\reset~combout\) # (!\clk|Equal0~10_combout\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \clk|Add0~25_combout\,
	datac => \clk|Equal0~10_combout\,
	datad => \reset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(5));

-- Location: LC_X10_Y6_N5
\clk|Add0~55\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~55_combout\ = (\clk|counter\(11) $ ((\clk|Add0~52\)))
-- \clk|Add0~57\ = CARRY(((!\clk|Add0~52\) # (!\clk|counter\(11))))
-- \clk|Add0~57COUT1_169\ = CARRY(((!\clk|Add0~52\) # (!\clk|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(11),
	cin => \clk|Add0~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~55_combout\,
	cout0 => \clk|Add0~57\,
	cout1 => \clk|Add0~57COUT1_169\);

-- Location: LC_X11_Y2_N4
\clk|counter[11]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(11) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \clk|Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(11));

-- Location: LC_X10_Y6_N0
\clk|Add0~30\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~30_combout\ = \clk|counter\(6) $ ((((!\clk|Add0~27\))))
-- \clk|Add0~32\ = CARRY((\clk|counter\(6) & ((!\clk|Add0~27\))))
-- \clk|Add0~32COUT1_165\ = CARRY((\clk|counter\(6) & ((!\clk|Add0~27\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk|counter\(6),
	cin => \clk|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~30_combout\,
	cout0 => \clk|Add0~32\,
	cout1 => \clk|Add0~32COUT1_165\);

-- Location: LC_X9_Y6_N0
\clk|counter[6]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(6) = DFFEAS((\clk|Add0~30_combout\ & (((\reset~combout\) # (!\clk|Equal0~10_combout\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \clk|Add0~30_combout\,
	datac => \reset~combout\,
	datad => \clk|Equal0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(6));

-- Location: LC_X10_Y6_N1
\clk|Add0~35\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~35_combout\ = (\clk|counter\(7) $ (((!\clk|Add0~27\ & \clk|Add0~32\) # (\clk|Add0~27\ & \clk|Add0~32COUT1_165\))))
-- \clk|Add0~37\ = CARRY(((!\clk|Add0~32\) # (!\clk|counter\(7))))
-- \clk|Add0~37COUT1_166\ = CARRY(((!\clk|Add0~32COUT1_165\) # (!\clk|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(7),
	cin => \clk|Add0~27\,
	cin0 => \clk|Add0~32\,
	cin1 => \clk|Add0~32COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~35_combout\,
	cout0 => \clk|Add0~37\,
	cout1 => \clk|Add0~37COUT1_166\);

-- Location: LC_X9_Y6_N3
\clk|counter[7]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(7) = DFFEAS((\clk|Add0~35_combout\ & (((\reset~combout\) # (!\clk|Equal0~10_combout\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \clk|Add0~35_combout\,
	datac => \reset~combout\,
	datad => \clk|Equal0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(7));

-- Location: LC_X10_Y6_N2
\clk|Add0~40\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~40_combout\ = (\clk|counter\(8) $ ((!(!\clk|Add0~27\ & \clk|Add0~37\) # (\clk|Add0~27\ & \clk|Add0~37COUT1_166\))))
-- \clk|Add0~42\ = CARRY(((\clk|counter\(8) & !\clk|Add0~37\)))
-- \clk|Add0~42COUT1_167\ = CARRY(((\clk|counter\(8) & !\clk|Add0~37COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(8),
	cin => \clk|Add0~27\,
	cin0 => \clk|Add0~37\,
	cin1 => \clk|Add0~37COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~40_combout\,
	cout0 => \clk|Add0~42\,
	cout1 => \clk|Add0~42COUT1_167\);

-- Location: LC_X11_Y2_N8
\clk|counter[8]\ : maxv_lcell
-- Equation(s):
-- \clk|Equal0~2\ = (!\clk|counter\(10) & (!\clk|counter\(11) & (!C1_counter[8] & !\clk|counter\(9))))
-- \clk|counter\(8) = DFFEAS(\clk|Equal0~2\, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \clk|counter\(10),
	datab => \clk|counter\(11),
	datac => \clk|Add0~40_combout\,
	datad => \clk|counter\(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Equal0~2\,
	regout => \clk|counter\(8));

-- Location: LC_X10_Y6_N3
\clk|Add0~45\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~45_combout\ = (\clk|counter\(9) $ (((!\clk|Add0~27\ & \clk|Add0~42\) # (\clk|Add0~27\ & \clk|Add0~42COUT1_167\))))
-- \clk|Add0~47\ = CARRY(((!\clk|Add0~42\) # (!\clk|counter\(9))))
-- \clk|Add0~47COUT1_168\ = CARRY(((!\clk|Add0~42COUT1_167\) # (!\clk|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(9),
	cin => \clk|Add0~27\,
	cin0 => \clk|Add0~42\,
	cin1 => \clk|Add0~42COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~45_combout\,
	cout0 => \clk|Add0~47\,
	cout1 => \clk|Add0~47COUT1_168\);

-- Location: LC_X11_Y2_N2
\clk|counter[9]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(9) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \clk|Add0~45_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(9));

-- Location: LC_X10_Y6_N4
\clk|Add0~50\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~50_combout\ = (\clk|counter\(10) $ ((!(!\clk|Add0~27\ & \clk|Add0~47\) # (\clk|Add0~27\ & \clk|Add0~47COUT1_168\))))
-- \clk|Add0~52\ = CARRY(((\clk|counter\(10) & !\clk|Add0~47COUT1_168\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(10),
	cin => \clk|Add0~27\,
	cin0 => \clk|Add0~47\,
	cin1 => \clk|Add0~47COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~50_combout\,
	cout => \clk|Add0~52\);

-- Location: LC_X11_Y2_N6
\clk|counter[10]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(10) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \clk|Add0~50_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(10));

-- Location: LC_X10_Y6_N6
\clk|Add0~60\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~60_combout\ = (\clk|counter\(12) $ ((!(!\clk|Add0~52\ & \clk|Add0~57\) # (\clk|Add0~52\ & \clk|Add0~57COUT1_169\))))
-- \clk|Add0~62\ = CARRY(((\clk|counter\(12) & !\clk|Add0~57\)))
-- \clk|Add0~62COUT1_170\ = CARRY(((\clk|counter\(12) & !\clk|Add0~57COUT1_169\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(12),
	cin => \clk|Add0~52\,
	cin0 => \clk|Add0~57\,
	cin1 => \clk|Add0~57COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~60_combout\,
	cout0 => \clk|Add0~62\,
	cout1 => \clk|Add0~62COUT1_170\);

-- Location: LC_X9_Y7_N5
\clk|counter[12]\ : maxv_lcell
-- Equation(s):
-- \clk|Equal0~3\ = (!\clk|counter\(13) & (!\clk|counter\(15) & (!C1_counter[12] & !\clk|counter\(14))))
-- \clk|counter\(12) = DFFEAS(\clk|Equal0~3\, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \clk|counter\(13),
	datab => \clk|counter\(15),
	datac => \clk|Add0~60_combout\,
	datad => \clk|counter\(14),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Equal0~3\,
	regout => \clk|counter\(12));

-- Location: LC_X10_Y6_N7
\clk|Add0~65\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~65_combout\ = (\clk|counter\(13) $ (((!\clk|Add0~52\ & \clk|Add0~62\) # (\clk|Add0~52\ & \clk|Add0~62COUT1_170\))))
-- \clk|Add0~67\ = CARRY(((!\clk|Add0~62\) # (!\clk|counter\(13))))
-- \clk|Add0~67COUT1_171\ = CARRY(((!\clk|Add0~62COUT1_170\) # (!\clk|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(13),
	cin => \clk|Add0~52\,
	cin0 => \clk|Add0~62\,
	cin1 => \clk|Add0~62COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~65_combout\,
	cout0 => \clk|Add0~67\,
	cout1 => \clk|Add0~67COUT1_171\);

-- Location: LC_X9_Y7_N6
\clk|counter[13]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(13) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \clk|Add0~65_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(13));

-- Location: LC_X10_Y6_N8
\clk|Add0~70\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~70_combout\ = (\clk|counter\(14) $ ((!(!\clk|Add0~52\ & \clk|Add0~67\) # (\clk|Add0~52\ & \clk|Add0~67COUT1_171\))))
-- \clk|Add0~72\ = CARRY(((\clk|counter\(14) & !\clk|Add0~67\)))
-- \clk|Add0~72COUT1_172\ = CARRY(((\clk|counter\(14) & !\clk|Add0~67COUT1_171\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(14),
	cin => \clk|Add0~52\,
	cin0 => \clk|Add0~67\,
	cin1 => \clk|Add0~67COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~70_combout\,
	cout0 => \clk|Add0~72\,
	cout1 => \clk|Add0~72COUT1_172\);

-- Location: LC_X9_Y7_N1
\clk|counter[14]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(14) = DFFEAS((((\clk|Add0~70_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \clk|Add0~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(14));

-- Location: LC_X10_Y6_N9
\clk|Add0~75\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~75_combout\ = \clk|counter\(15) $ (((((!\clk|Add0~52\ & \clk|Add0~72\) # (\clk|Add0~52\ & \clk|Add0~72COUT1_172\)))))
-- \clk|Add0~77\ = CARRY(((!\clk|Add0~72COUT1_172\)) # (!\clk|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk|counter\(15),
	cin => \clk|Add0~52\,
	cin0 => \clk|Add0~72\,
	cin1 => \clk|Add0~72COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~75_combout\,
	cout => \clk|Add0~77\);

-- Location: LC_X9_Y7_N7
\clk|counter[15]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(15) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \clk|Add0~75_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(15));

-- Location: LC_X11_Y6_N7
\clk|Add0~105\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~105_combout\ = (\clk|counter\(23) $ (((!\clk|Add0~92\ & \clk|Add0~102\) # (\clk|Add0~92\ & \clk|Add0~102COUT1_178\))))
-- \clk|Add0~107\ = CARRY(((!\clk|Add0~102\) # (!\clk|counter\(23))))
-- \clk|Add0~107COUT1_179\ = CARRY(((!\clk|Add0~102COUT1_178\) # (!\clk|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(23),
	cin => \clk|Add0~92\,
	cin0 => \clk|Add0~102\,
	cin1 => \clk|Add0~102COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~105_combout\,
	cout0 => \clk|Add0~107\,
	cout1 => \clk|Add0~107COUT1_179\);

-- Location: LC_X11_Y7_N8
\clk|counter[23]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(23) = DFFEAS((((\clk|Add0~105_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \clk|Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(23));

-- Location: LC_X11_Y7_N0
\clk|counter[20]\ : maxv_lcell
-- Equation(s):
-- \clk|Equal0~6\ = (!\clk|counter\(21) & (!\clk|counter\(22) & (!C1_counter[20] & !\clk|counter\(23))))
-- \clk|counter\(20) = DFFEAS(\clk|Equal0~6\, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \clk|counter\(21),
	datab => \clk|counter\(22),
	datac => \clk|Add0~90_combout\,
	datad => \clk|counter\(23),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Equal0~6\,
	regout => \clk|counter\(20));

-- Location: LC_X11_Y6_N0
\clk|Add0~80\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~80_combout\ = (\clk|counter\(16) $ ((!\clk|Add0~77\)))
-- \clk|Add0~82\ = CARRY(((\clk|counter\(16) & !\clk|Add0~77\)))
-- \clk|Add0~82COUT1_173\ = CARRY(((\clk|counter\(16) & !\clk|Add0~77\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(16),
	cin => \clk|Add0~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~80_combout\,
	cout0 => \clk|Add0~82\,
	cout1 => \clk|Add0~82COUT1_173\);

-- Location: LC_X11_Y7_N3
\clk|counter[16]\ : maxv_lcell
-- Equation(s):
-- \clk|Equal0~5\ = (((!C1_counter[16] & !\clk|counter\(17))))
-- \clk|counter\(16) = DFFEAS(\clk|Equal0~5\, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \clk|Add0~80_combout\,
	datad => \clk|counter\(17),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Equal0~5\,
	regout => \clk|counter\(16));

-- Location: LC_X11_Y6_N1
\clk|Add0~85\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~85_combout\ = \clk|counter\(17) $ (((((!\clk|Add0~77\ & \clk|Add0~82\) # (\clk|Add0~77\ & \clk|Add0~82COUT1_173\)))))
-- \clk|Add0~87\ = CARRY(((!\clk|Add0~82\)) # (!\clk|counter\(17)))
-- \clk|Add0~87COUT1_174\ = CARRY(((!\clk|Add0~82COUT1_173\)) # (!\clk|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk|counter\(17),
	cin => \clk|Add0~77\,
	cin0 => \clk|Add0~82\,
	cin1 => \clk|Add0~82COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~85_combout\,
	cout0 => \clk|Add0~87\,
	cout1 => \clk|Add0~87COUT1_174\);

-- Location: LC_X11_Y7_N2
\clk|counter[17]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(17) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~85_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \clk|Add0~85_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(17));

-- Location: LC_X11_Y6_N2
\clk|Add0~110\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~110_combout\ = \clk|counter\(18) $ ((((!(!\clk|Add0~77\ & \clk|Add0~87\) # (\clk|Add0~77\ & \clk|Add0~87COUT1_174\)))))
-- \clk|Add0~112\ = CARRY((\clk|counter\(18) & ((!\clk|Add0~87\))))
-- \clk|Add0~112COUT1_175\ = CARRY((\clk|counter\(18) & ((!\clk|Add0~87COUT1_174\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk|counter\(18),
	cin => \clk|Add0~77\,
	cin0 => \clk|Add0~87\,
	cin1 => \clk|Add0~87COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~110_combout\,
	cout0 => \clk|Add0~112\,
	cout1 => \clk|Add0~112COUT1_175\);

-- Location: LC_X11_Y7_N9
\clk|counter[18]\ : maxv_lcell
-- Equation(s):
-- \clk|Equal0~7\ = (!\clk|counter\(19) & (\clk|Equal0~6\ & (!C1_counter[18] & \clk|Equal0~5\)))
-- \clk|counter\(18) = DFFEAS(\clk|Equal0~7\, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~110_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \clk|counter\(19),
	datab => \clk|Equal0~6\,
	datac => \clk|Add0~110_combout\,
	datad => \clk|Equal0~5\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Equal0~7\,
	regout => \clk|counter\(18));

-- Location: LC_X11_Y6_N3
\clk|Add0~115\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~115_combout\ = \clk|counter\(19) $ (((((!\clk|Add0~77\ & \clk|Add0~112\) # (\clk|Add0~77\ & \clk|Add0~112COUT1_175\)))))
-- \clk|Add0~117\ = CARRY(((!\clk|Add0~112\)) # (!\clk|counter\(19)))
-- \clk|Add0~117COUT1_176\ = CARRY(((!\clk|Add0~112COUT1_175\)) # (!\clk|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk|counter\(19),
	cin => \clk|Add0~77\,
	cin0 => \clk|Add0~112\,
	cin1 => \clk|Add0~112COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~115_combout\,
	cout0 => \clk|Add0~117\,
	cout1 => \clk|Add0~117COUT1_176\);

-- Location: LC_X11_Y7_N7
\clk|counter[19]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(19) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~115_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \clk|Add0~115_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(19));

-- Location: LC_X11_Y6_N4
\clk|Add0~90\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~90_combout\ = (\clk|counter\(20) $ ((!(!\clk|Add0~77\ & \clk|Add0~117\) # (\clk|Add0~77\ & \clk|Add0~117COUT1_176\))))
-- \clk|Add0~92\ = CARRY(((\clk|counter\(20) & !\clk|Add0~117COUT1_176\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(20),
	cin => \clk|Add0~77\,
	cin0 => \clk|Add0~117\,
	cin1 => \clk|Add0~117COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~90_combout\,
	cout => \clk|Add0~92\);

-- Location: LC_X12_Y6_N0
\clk|Add0~130\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~130_combout\ = \clk|counter\(26) $ ((((!\clk|Add0~127\))))
-- \clk|Add0~132\ = CARRY((\clk|counter\(26) & ((!\clk|Add0~127\))))
-- \clk|Add0~132COUT1_181\ = CARRY((\clk|counter\(26) & ((!\clk|Add0~127\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk|counter\(26),
	cin => \clk|Add0~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~130_combout\,
	cout0 => \clk|Add0~132\,
	cout1 => \clk|Add0~132COUT1_181\);

-- Location: LC_X12_Y6_N8
\clk|counter[26]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(26) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~130_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \clk|Add0~130_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(26));

-- Location: LC_X12_Y6_N1
\clk|Add0~135\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~135_combout\ = \clk|counter\(27) $ (((((!\clk|Add0~127\ & \clk|Add0~132\) # (\clk|Add0~127\ & \clk|Add0~132COUT1_181\)))))
-- \clk|Add0~137\ = CARRY(((!\clk|Add0~132\)) # (!\clk|counter\(27)))
-- \clk|Add0~137COUT1_182\ = CARRY(((!\clk|Add0~132COUT1_181\)) # (!\clk|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk|counter\(27),
	cin => \clk|Add0~127\,
	cin0 => \clk|Add0~132\,
	cin1 => \clk|Add0~132COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~135_combout\,
	cout0 => \clk|Add0~137\,
	cout1 => \clk|Add0~137COUT1_182\);

-- Location: LC_X12_Y6_N6
\clk|counter[27]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(27) = DFFEAS((((\clk|Add0~135_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \clk|Add0~135_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(27));

-- Location: LC_X11_Y6_N8
\clk|Add0~120\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~120_combout\ = (\clk|counter\(24) $ ((!(!\clk|Add0~92\ & \clk|Add0~107\) # (\clk|Add0~92\ & \clk|Add0~107COUT1_179\))))
-- \clk|Add0~122\ = CARRY(((\clk|counter\(24) & !\clk|Add0~107\)))
-- \clk|Add0~122COUT1_180\ = CARRY(((\clk|counter\(24) & !\clk|Add0~107COUT1_179\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(24),
	cin => \clk|Add0~92\,
	cin0 => \clk|Add0~107\,
	cin1 => \clk|Add0~107COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~120_combout\,
	cout0 => \clk|Add0~122\,
	cout1 => \clk|Add0~122COUT1_180\);

-- Location: LC_X11_Y7_N4
\clk|counter[24]\ : maxv_lcell
-- Equation(s):
-- \clk|Equal0~8\ = (!\clk|counter\(25) & (!\clk|counter\(27) & (!C1_counter[24] & !\clk|counter\(26))))
-- \clk|counter\(24) = DFFEAS(\clk|Equal0~8\, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \clk|counter\(25),
	datab => \clk|counter\(27),
	datac => \clk|Add0~120_combout\,
	datad => \clk|counter\(26),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Equal0~8\,
	regout => \clk|counter\(24));

-- Location: LC_X11_Y6_N9
\clk|Add0~125\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~125_combout\ = (\clk|counter\(25) $ (((!\clk|Add0~92\ & \clk|Add0~122\) # (\clk|Add0~92\ & \clk|Add0~122COUT1_180\))))
-- \clk|Add0~127\ = CARRY(((!\clk|Add0~122COUT1_180\) # (!\clk|counter\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(25),
	cin => \clk|Add0~92\,
	cin0 => \clk|Add0~122\,
	cin1 => \clk|Add0~122COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~125_combout\,
	cout => \clk|Add0~127\);

-- Location: LC_X11_Y7_N5
\clk|counter[25]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(25) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \clk|Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(25));

-- Location: LC_X12_Y6_N2
\clk|Add0~140\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~140_combout\ = (\clk|counter\(28) $ ((!(!\clk|Add0~127\ & \clk|Add0~137\) # (\clk|Add0~127\ & \clk|Add0~137COUT1_182\))))
-- \clk|Add0~142\ = CARRY(((\clk|counter\(28) & !\clk|Add0~137\)))
-- \clk|Add0~142COUT1_183\ = CARRY(((\clk|counter\(28) & !\clk|Add0~137COUT1_182\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(28),
	cin => \clk|Add0~127\,
	cin0 => \clk|Add0~137\,
	cin1 => \clk|Add0~137COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~140_combout\,
	cout0 => \clk|Add0~142\,
	cout1 => \clk|Add0~142COUT1_183\);

-- Location: LC_X12_Y6_N3
\clk|Add0~145\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~145_combout\ = \clk|counter\(29) $ (((((!\clk|Add0~127\ & \clk|Add0~142\) # (\clk|Add0~127\ & \clk|Add0~142COUT1_183\)))))
-- \clk|Add0~147\ = CARRY(((!\clk|Add0~142\)) # (!\clk|counter\(29)))
-- \clk|Add0~147COUT1_184\ = CARRY(((!\clk|Add0~142COUT1_183\)) # (!\clk|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk|counter\(29),
	cin => \clk|Add0~127\,
	cin0 => \clk|Add0~142\,
	cin1 => \clk|Add0~142COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~145_combout\,
	cout0 => \clk|Add0~147\,
	cout1 => \clk|Add0~147COUT1_184\);

-- Location: LC_X12_Y6_N4
\clk|Add0~150\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~150_combout\ = (\clk|counter\(30) $ ((!(!\clk|Add0~127\ & \clk|Add0~147\) # (\clk|Add0~127\ & \clk|Add0~147COUT1_184\))))
-- \clk|Add0~152\ = CARRY(((\clk|counter\(30) & !\clk|Add0~147COUT1_184\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(30),
	cin => \clk|Add0~127\,
	cin0 => \clk|Add0~147\,
	cin1 => \clk|Add0~147COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~150_combout\,
	cout => \clk|Add0~152\);

-- Location: LC_X12_Y6_N9
\clk|counter[30]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(30) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~150_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \clk|Add0~150_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(30));

-- Location: LC_X12_Y6_N5
\clk|Add0~155\ : maxv_lcell
-- Equation(s):
-- \clk|Add0~155_combout\ = (\clk|counter\(31) $ ((\clk|Add0~152\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk|counter\(31),
	cin => \clk|Add0~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Add0~155_combout\);

-- Location: LC_X12_Y6_N7
\clk|counter[31]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(31) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~155_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \clk|Add0~155_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(31));

-- Location: LC_X12_Y7_N5
\clk|counter[28]\ : maxv_lcell
-- Equation(s):
-- \clk|Equal0~9\ = (!\clk|counter\(29) & (!\clk|counter\(31) & (!C1_counter[28] & !\clk|counter\(30))))
-- \clk|counter\(28) = DFFEAS(\clk|Equal0~9\, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~140_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \clk|counter\(29),
	datab => \clk|counter\(31),
	datac => \clk|Add0~140_combout\,
	datad => \clk|counter\(30),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Equal0~9\,
	regout => \clk|counter\(28));

-- Location: LC_X12_Y7_N7
\clk|counter[29]\ : maxv_lcell
-- Equation(s):
-- \clk|counter\(29) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , , \clk|Add0~145_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \clk|Add0~145_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|counter\(29));

-- Location: LC_X8_Y6_N0
\clk|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \clk|Equal0~1_combout\ = (\clk|counter\(5) & (\clk|counter\(4) & (\clk|counter\(7) & \clk|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk|counter\(5),
	datab => \clk|counter\(4),
	datac => \clk|counter\(7),
	datad => \clk|counter\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Equal0~1_combout\);

-- Location: LC_X8_Y6_N6
\clk|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \clk|Equal0~4_combout\ = (\clk|Equal0~0\ & (\clk|Equal0~1_combout\ & (\clk|Equal0~3\ & \clk|Equal0~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk|Equal0~0\,
	datab => \clk|Equal0~1_combout\,
	datac => \clk|Equal0~3\,
	datad => \clk|Equal0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Equal0~4_combout\);

-- Location: LC_X8_Y6_N5
\clk|Equal0~10\ : maxv_lcell
-- Equation(s):
-- \clk|Equal0~10_combout\ = (\clk|Equal0~9\ & (\clk|Equal0~8\ & (\clk|Equal0~4_combout\ & \clk|Equal0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk|Equal0~9\,
	datab => \clk|Equal0~8\,
	datac => \clk|Equal0~4_combout\,
	datad => \clk|Equal0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk|Equal0~10_combout\);

-- Location: LC_X8_Y6_N3
\clk|clk_out_sig\ : maxv_lcell
-- Equation(s):
-- \clk|clk_out_sig~regout\ = DFFEAS(((\clk|Equal0~10_combout\ $ (\clk|clk_out_sig~regout\))), GLOBAL(\Clock~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \clk|Equal0~10_combout\,
	datad => \clk|clk_out_sig~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk|clk_out_sig~regout\);

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_start,
	combout => \start~combout\);

-- Location: LC_X1_Y5_N2
\driver|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \driver|Equal1~0_combout\ = (((\wsh|curState\(0)) # (\wsh|curState\(1))) # (!\start~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \start~combout\,
	datac => \wsh|curState\(0),
	datad => \wsh|curState\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|Equal1~0_combout\);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\userProg[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_userProg(3),
	combout => \userProg~combout\(3));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\userProg[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_userProg(2),
	combout => \userProg~combout\(2));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\userProg[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_userProg(1),
	combout => \userProg~combout\(1));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\userProg[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_userProg(4),
	combout => \userProg~combout\(4));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\userProg[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_userProg(0),
	combout => \userProg~combout\(0));

-- Location: LC_X7_Y6_N7
\wsh|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \wsh|Mux0~0_combout\ = (!\userProg~combout\(1) & ((\userProg~combout\(2) & (!\userProg~combout\(4) & !\userProg~combout\(0))) # (!\userProg~combout\(2) & (\userProg~combout\(4) $ (\userProg~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0112",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(2),
	datab => \userProg~combout\(1),
	datac => \userProg~combout\(4),
	datad => \userProg~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Mux0~0_combout\);

-- Location: LC_X7_Y6_N4
\wsh|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \wsh|Mux1~0_combout\ = (!\userProg~combout\(2) & (!\userProg~combout\(1) & (!\userProg~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(2),
	datab => \userProg~combout\(1),
	datac => \userProg~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Mux1~0_combout\);

-- Location: LC_X7_Y6_N3
\wsh|Mux1~1\ : maxv_lcell
-- Equation(s):
-- \wsh|Mux1~1_combout\ = (\wsh|Mux1~0_combout\ & (!\userProg~combout\(0) & ((\userProg~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Mux1~0_combout\,
	datab => \userProg~combout\(0),
	datad => \userProg~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Mux1~1_combout\);

-- Location: LC_X12_Y3_N2
\wsh|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \wsh|Mux2~0_combout\ = (!\userProg~combout\(3) & (!\userProg~combout\(1) & (\userProg~combout\(2) $ (\userProg~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0006",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(2),
	datab => \userProg~combout\(0),
	datac => \userProg~combout\(3),
	datad => \userProg~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Mux2~0_combout\);

-- Location: LC_X12_Y3_N4
\wsh|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal1~0_combout\ = (((\userProg~combout\(4)) # (!\wsh|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \userProg~combout\(4),
	datad => \wsh|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal1~0_combout\);

-- Location: LC_X1_Y5_N5
\wsh|Equal1~1\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal1~1_combout\ = (!\wsh|Mux1~1_combout\ & (\wsh|Equal1~0_combout\ & ((\userProg~combout\(3)) # (!\wsh|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(3),
	datab => \wsh|Mux0~0_combout\,
	datac => \wsh|Mux1~1_combout\,
	datad => \wsh|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal1~1_combout\);

-- Location: LC_X2_Y6_N9
\wsh|curState~0\ : maxv_lcell
-- Equation(s):
-- \wsh|curState~0_combout\ = (\reset~combout\) # ((\driver|Equal1~0_combout\ & (!\wsh|curState\(0))) # (!\driver|Equal1~0_combout\ & ((\wsh|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|Equal1~0_combout\,
	datab => \wsh|curState\(0),
	datac => \reset~combout\,
	datad => \wsh|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|curState~0_combout\);

-- Location: LC_X6_Y6_N3
\wsh|curState~13\ : maxv_lcell
-- Equation(s):
-- \wsh|curState~13_combout\ = (\reset~combout\) # ((!\wsh|curState\(1) & ((\wsh|curState\(0)) # (!\start~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3f1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \wsh|curState\(1),
	datac => \reset~combout\,
	datad => \wsh|curState\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|curState~13_combout\);

-- Location: LC_X8_Y7_N0
\wsh|Mux4~0\ : maxv_lcell
-- Equation(s):
-- \wsh|Mux4~0_combout\ = (!\userProg~combout\(1) & (!\userProg~combout\(0) & (\userProg~combout\(3) $ (\userProg~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0006",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(3),
	datab => \userProg~combout\(2),
	datac => \userProg~combout\(1),
	datad => \userProg~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Mux4~0_combout\);

-- Location: LC_X7_Y7_N9
\wsh|counter~4\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~4_combout\ = (((\wsh|Mux4~0_combout\ & !\userProg~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \wsh|Mux4~0_combout\,
	datad => \userProg~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~4_combout\);

-- Location: LC_X6_Y5_N1
\wsh|counter~16\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~16_combout\ = (!\reset~combout\ & ((\wsh|curState\(1)) # ((\wsh|curState\(0)) # (!\start~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|curState\(1),
	datab => \wsh|curState\(0),
	datac => \start~combout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~16_combout\);

-- Location: LC_X2_Y6_N8
\wsh|process_0~2\ : maxv_lcell
-- Equation(s):
-- \wsh|process_0~2_combout\ = (!\reset~combout\ & (\wsh|curState\(0) & ((\wsh|curState\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \wsh|curState\(0),
	datad => \wsh|curState\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|process_0~2_combout\);

-- Location: LC_X2_Y6_N7
\wsh|process_0~1\ : maxv_lcell
-- Equation(s):
-- \wsh|process_0~1_combout\ = (!\wsh|curState~0_combout\ & ((\reset~combout\) # ((\driver|Equal1~0_combout\ & !\wsh|curState\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|Equal1~0_combout\,
	datab => \wsh|curState\(1),
	datac => \reset~combout\,
	datad => \wsh|curState~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|process_0~1_combout\);

-- Location: LC_X5_Y6_N5
\wsh|counter[17]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[17]~COMBOUT\ = (\wsh|process_0~0_combout\ & (((\wsh|Add1~80_combout\)))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~31_combout\))
-- \wsh|counter\(17) = DFFEAS(\wsh|counter[17]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~0_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|process_0~0_combout\,
	datab => \wsh|counter~31_combout\,
	datac => \wsh|Add2~0_combout\,
	datad => \wsh|Add1~80_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[17]~COMBOUT\,
	regout => \wsh|counter\(17));

-- Location: LC_X7_Y5_N4
\wsh|Add2~157\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~157_cout\ = CARRY(((\wsh|counter~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~155\,
	cout => \wsh|Add2~157_cout\);

-- Location: LC_X8_Y7_N1
\wsh|Mux5~0\ : maxv_lcell
-- Equation(s):
-- \wsh|Mux5~0_combout\ = (\userProg~combout\(4) & (!\userProg~combout\(2) & (!\userProg~combout\(1) & !\userProg~combout\(0)))) # (!\userProg~combout\(4) & ((\userProg~combout\(2) & (!\userProg~combout\(1) & !\userProg~combout\(0))) # 
-- (!\userProg~combout\(2) & (\userProg~combout\(1) $ (\userProg~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0116",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(4),
	datab => \userProg~combout\(2),
	datac => \userProg~combout\(1),
	datad => \userProg~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Mux5~0_combout\);

-- Location: LC_X1_Y5_N6
\wsh|counter~13\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~13_combout\ = ((\wsh|Equal1~1_combout\ & (\wsh|Mux5~0_combout\)) # (!\wsh|Equal1~1_combout\ & ((\wsh|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Mux5~0_combout\,
	datac => \wsh|Equal1~1_combout\,
	datad => \wsh|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~13_combout\);

-- Location: LC_X2_Y6_N0
\wsh|counter~53\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~53_combout\ = (\wsh|Equal1~1_combout\ & (((!\userProg~combout\(4) & \wsh|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Equal1~1_combout\,
	datac => \userProg~combout\(4),
	datad => \wsh|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~53_combout\);

-- Location: LC_X7_Y5_N5
\wsh|Add2~75\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~75_combout\ = (\wsh|counter[1]~COMBOUT\ $ ((!\wsh|Add2~157_cout\)))
-- \wsh|Add2~77\ = CARRY(((!\wsh|counter[1]~COMBOUT\ & !\wsh|Add2~157_cout\)))
-- \wsh|Add2~77COUT1_161\ = CARRY(((!\wsh|counter[1]~COMBOUT\ & !\wsh|Add2~157_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[1]~COMBOUT\,
	cin => \wsh|Add2~157_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~75_combout\,
	cout0 => \wsh|Add2~77\,
	cout1 => \wsh|Add2~77COUT1_161\);

-- Location: LC_X8_Y7_N5
\wsh|Mux7~0\ : maxv_lcell
-- Equation(s):
-- \wsh|Mux7~0_combout\ = (!\userProg~combout\(0) & ((\userProg~combout\(4) & (!\userProg~combout\(2) & !\userProg~combout\(1))) # (!\userProg~combout\(4) & (\userProg~combout\(2) $ (\userProg~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0016",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(4),
	datab => \userProg~combout\(2),
	datac => \userProg~combout\(1),
	datad => \userProg~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Mux7~0_combout\);

-- Location: LC_X1_Y5_N8
\wsh|counter[0]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter\(0) = DFFEAS(((\wsh|process_0~1_combout\ $ (!\wsh|counter~9_combout\))), GLOBAL(\clk|clk_out_sig~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	datac => \wsh|process_0~1_combout\,
	datad => \wsh|counter~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wsh|counter\(0));

-- Location: LC_X1_Y5_N9
\wsh|counter~6\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~6_combout\ = (\wsh|Mux5~0_combout\ & (!\userProg~combout\(3) & ((!\wsh|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Mux5~0_combout\,
	datab => \userProg~combout\(3),
	datad => \wsh|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~6_combout\);

-- Location: LC_X1_Y5_N7
\wsh|counter~7\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~7_combout\ = (\driver|Equal1~0_combout\ & (!\wsh|counter\(0))) # (!\driver|Equal1~0_combout\ & (((\wsh|counter~6_combout\) # (!\wsh|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(0),
	datab => \wsh|Equal1~0_combout\,
	datac => \wsh|counter~6_combout\,
	datad => \driver|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~7_combout\);

-- Location: LC_X5_Y4_N8
\driver|SEV_SEG_DATA[5]~4\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~4_combout\ = (((\wsh|curState\(1) & \wsh|curState\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \wsh|curState\(1),
	datad => \wsh|curState\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~4_combout\);

-- Location: LC_X2_Y5_N4
\wsh|Add0~0\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~0_combout\ = (\reset~combout\) # ((!\wsh|counter~7_combout\))
-- \wsh|Add0~2\ = CARRY((!\reset~combout\ & (\wsh|counter~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb44",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \wsh|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~0_combout\,
	cout => \wsh|Add0~2\);

-- Location: LC_X8_Y7_N2
\wsh|counter~39\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~39_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~125_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter\(25) & (\wsh|counter~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(25),
	datab => \wsh|counter~16_combout\,
	datac => \wsh|process_0~2_combout\,
	datad => \wsh|Add0~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~39_combout\);

-- Location: LC_X3_Y7_N5
\wsh|Add1~0\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~0_combout\ = (\wsh|counter~11_combout\ $ ((!\wsh|Add1~157_cout\)))
-- \wsh|Add1~2\ = CARRY(((!\wsh|counter~11_combout\ & !\wsh|Add1~157_cout\)))
-- \wsh|Add1~2COUT1_161\ = CARRY(((!\wsh|counter~11_combout\ & !\wsh|Add1~157_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~11_combout\,
	cin => \wsh|Add1~157_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~0_combout\,
	cout0 => \wsh|Add1~2\,
	cout1 => \wsh|Add1~2COUT1_161\);

-- Location: LC_X3_Y7_N6
\wsh|Add1~5\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~5_combout\ = (\wsh|counter~15_combout\ $ (((!\wsh|Add1~157_cout\ & \wsh|Add1~2\) # (\wsh|Add1~157_cout\ & \wsh|Add1~2COUT1_161\))))
-- \wsh|Add1~7\ = CARRY(((\wsh|counter~15_combout\) # (!\wsh|Add1~2\)))
-- \wsh|Add1~7COUT1_162\ = CARRY(((\wsh|counter~15_combout\) # (!\wsh|Add1~2COUT1_161\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~15_combout\,
	cin => \wsh|Add1~157_cout\,
	cin0 => \wsh|Add1~2\,
	cin1 => \wsh|Add1~2COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~5_combout\,
	cout0 => \wsh|Add1~7\,
	cout1 => \wsh|Add1~7COUT1_162\);

-- Location: LC_X3_Y7_N7
\wsh|Add1~10\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~10_combout\ = (\wsh|counter~17_combout\ $ ((!(!\wsh|Add1~157_cout\ & \wsh|Add1~7\) # (\wsh|Add1~157_cout\ & \wsh|Add1~7COUT1_162\))))
-- \wsh|Add1~12\ = CARRY(((!\wsh|counter~17_combout\ & !\wsh|Add1~7\)))
-- \wsh|Add1~12COUT1_163\ = CARRY(((!\wsh|counter~17_combout\ & !\wsh|Add1~7COUT1_162\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~17_combout\,
	cin => \wsh|Add1~157_cout\,
	cin0 => \wsh|Add1~7\,
	cin1 => \wsh|Add1~7COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~10_combout\,
	cout0 => \wsh|Add1~12\,
	cout1 => \wsh|Add1~12COUT1_163\);

-- Location: LC_X3_Y7_N8
\wsh|Add1~15\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~15_combout\ = (\wsh|counter~18_combout\ $ (((!\wsh|Add1~157_cout\ & \wsh|Add1~12\) # (\wsh|Add1~157_cout\ & \wsh|Add1~12COUT1_163\))))
-- \wsh|Add1~17\ = CARRY(((\wsh|counter~18_combout\) # (!\wsh|Add1~12\)))
-- \wsh|Add1~17COUT1_164\ = CARRY(((\wsh|counter~18_combout\) # (!\wsh|Add1~12COUT1_163\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~18_combout\,
	cin => \wsh|Add1~157_cout\,
	cin0 => \wsh|Add1~12\,
	cin1 => \wsh|Add1~12COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~15_combout\,
	cout0 => \wsh|Add1~17\,
	cout1 => \wsh|Add1~17COUT1_164\);

-- Location: LC_X3_Y7_N9
\wsh|Add1~20\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~20_combout\ = (\wsh|counter~19_combout\ $ ((!(!\wsh|Add1~157_cout\ & \wsh|Add1~17\) # (\wsh|Add1~157_cout\ & \wsh|Add1~17COUT1_164\))))
-- \wsh|Add1~22\ = CARRY(((!\wsh|counter~19_combout\ & !\wsh|Add1~17COUT1_164\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~19_combout\,
	cin => \wsh|Add1~157_cout\,
	cin0 => \wsh|Add1~17\,
	cin1 => \wsh|Add1~17COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~20_combout\,
	cout => \wsh|Add1~22\);

-- Location: LC_X4_Y7_N0
\wsh|Add1~25\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~25_combout\ = (\wsh|counter~20_combout\ $ ((\wsh|Add1~22\)))
-- \wsh|Add1~27\ = CARRY(((\wsh|counter~20_combout\) # (!\wsh|Add1~22\)))
-- \wsh|Add1~27COUT1_165\ = CARRY(((\wsh|counter~20_combout\) # (!\wsh|Add1~22\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~20_combout\,
	cin => \wsh|Add1~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~25_combout\,
	cout0 => \wsh|Add1~27\,
	cout1 => \wsh|Add1~27COUT1_165\);

-- Location: LC_X8_Y7_N7
\wsh|counter[6]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[6]~COMBOUT\ = (\wsh|process_0~0_combout\ & (\wsh|Add1~25_combout\)) # (!\wsh|process_0~0_combout\ & (((\wsh|counter~20_combout\))))
-- \wsh|counter\(6) = DFFEAS(\wsh|counter[6]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~100_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|Add1~25_combout\,
	datab => \wsh|process_0~0_combout\,
	datac => \wsh|Add2~100_combout\,
	datad => \wsh|counter~20_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[6]~COMBOUT\,
	regout => \wsh|counter\(6));

-- Location: LC_X8_Y5_N0
\wsh|Add2~100\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~100_combout\ = \wsh|counter[6]~COMBOUT\ $ ((((\wsh|Add2~97\))))
-- \wsh|Add2~102\ = CARRY((\wsh|counter[6]~COMBOUT\) # ((!\wsh|Add2~97\)))
-- \wsh|Add2~102COUT1_165\ = CARRY((\wsh|counter[6]~COMBOUT\) # ((!\wsh|Add2~97\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter[6]~COMBOUT\,
	cin => \wsh|Add2~97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~100_combout\,
	cout0 => \wsh|Add2~102\,
	cout1 => \wsh|Add2~102COUT1_165\);

-- Location: LC_X2_Y5_N5
\wsh|Add0~5\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~5_combout\ = \wsh|Add0~2\ $ ((((\reset~combout\)) # (!\wsh|counter~10_combout\)))
-- \wsh|Add0~7\ = CARRY((!\wsh|Add0~2\ & ((\reset~combout\) # (!\wsh|counter~10_combout\))))
-- \wsh|Add0~7COUT1_161\ = CARRY((!\wsh|Add0~2\ & ((\reset~combout\) # (!\wsh|counter~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "2d0d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~10_combout\,
	datab => \reset~combout\,
	cin => \wsh|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~5_combout\,
	cout0 => \wsh|Add0~7\,
	cout1 => \wsh|Add0~7COUT1_161\);

-- Location: LC_X2_Y5_N6
\wsh|Add0~10\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~10_combout\ = (!\wsh|Add0~2\ & \wsh|Add0~7\) # (\wsh|Add0~2\ & \wsh|Add0~7COUT1_161\) $ (((!\reset~combout\ & (\wsh|counter~14_combout\))))
-- \wsh|Add0~12\ = CARRY(((!\reset~combout\ & \wsh|counter~14_combout\)) # (!\wsh|Add0~7\))
-- \wsh|Add0~12COUT1_162\ = CARRY(((!\reset~combout\ & \wsh|counter~14_combout\)) # (!\wsh|Add0~7COUT1_161\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "b44f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \wsh|counter~14_combout\,
	cin => \wsh|Add0~2\,
	cin0 => \wsh|Add0~7\,
	cin1 => \wsh|Add0~7COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~10_combout\,
	cout0 => \wsh|Add0~12\,
	cout1 => \wsh|Add0~12COUT1_162\);

-- Location: LC_X2_Y5_N7
\wsh|Add0~15\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~15_combout\ = (!\wsh|Add0~2\ & \wsh|Add0~12\) # (\wsh|Add0~2\ & \wsh|Add0~12COUT1_162\) $ ((((!\wsh|counter\(3))) # (!\wsh|counter~16_combout\)))
-- \wsh|Add0~17\ = CARRY((!\wsh|Add0~12\ & ((!\wsh|counter\(3)) # (!\wsh|counter~16_combout\))))
-- \wsh|Add0~17COUT1_163\ = CARRY((!\wsh|Add0~12COUT1_162\ & ((!\wsh|counter\(3)) # (!\wsh|counter~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8707",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~16_combout\,
	datab => \wsh|counter\(3),
	cin => \wsh|Add0~2\,
	cin0 => \wsh|Add0~12\,
	cin1 => \wsh|Add0~12COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~15_combout\,
	cout0 => \wsh|Add0~17\,
	cout1 => \wsh|Add0~17COUT1_163\);

-- Location: LC_X2_Y5_N8
\wsh|Add0~20\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~20_combout\ = (!\wsh|Add0~2\ & \wsh|Add0~17\) # (\wsh|Add0~2\ & \wsh|Add0~17COUT1_163\) $ (((\wsh|counter\(4) & (\wsh|counter~16_combout\))))
-- \wsh|Add0~22\ = CARRY(((\wsh|counter\(4) & \wsh|counter~16_combout\)) # (!\wsh|Add0~17\))
-- \wsh|Add0~22COUT1_164\ = CARRY(((\wsh|counter\(4) & \wsh|counter~16_combout\)) # (!\wsh|Add0~17COUT1_163\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "788f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(4),
	datab => \wsh|counter~16_combout\,
	cin => \wsh|Add0~2\,
	cin0 => \wsh|Add0~17\,
	cin1 => \wsh|Add0~17COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~20_combout\,
	cout0 => \wsh|Add0~22\,
	cout1 => \wsh|Add0~22COUT1_164\);

-- Location: LC_X2_Y5_N9
\wsh|Add0~25\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~25_combout\ = (!\wsh|Add0~2\ & \wsh|Add0~22\) # (\wsh|Add0~2\ & \wsh|Add0~22COUT1_164\) $ ((((!\wsh|counter~16_combout\)) # (!\wsh|counter\(5))))
-- \wsh|Add0~27\ = CARRY((!\wsh|Add0~22COUT1_164\ & ((!\wsh|counter~16_combout\) # (!\wsh|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8707",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(5),
	datab => \wsh|counter~16_combout\,
	cin => \wsh|Add0~2\,
	cin0 => \wsh|Add0~22\,
	cin1 => \wsh|Add0~22COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~25_combout\,
	cout => \wsh|Add0~27\);

-- Location: LC_X3_Y5_N0
\wsh|Add0~30\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~30_combout\ = \wsh|Add0~27\ $ (((\wsh|counter\(6) & (\wsh|counter~16_combout\))))
-- \wsh|Add0~32\ = CARRY(((\wsh|counter\(6) & \wsh|counter~16_combout\)) # (!\wsh|Add0~27\))
-- \wsh|Add0~32COUT1_165\ = CARRY(((\wsh|counter\(6) & \wsh|counter~16_combout\)) # (!\wsh|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "788f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(6),
	datab => \wsh|counter~16_combout\,
	cin => \wsh|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~30_combout\,
	cout0 => \wsh|Add0~32\,
	cout1 => \wsh|Add0~32COUT1_165\);

-- Location: LC_X8_Y7_N3
\wsh|counter~20\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~20_combout\ = (\wsh|process_0~2_combout\ & (\wsh|Add0~30_combout\)) # (!\wsh|process_0~2_combout\ & (((\wsh|counter\(6) & \wsh|counter~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add0~30_combout\,
	datab => \wsh|counter\(6),
	datac => \wsh|process_0~2_combout\,
	datad => \wsh|counter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~20_combout\);

-- Location: LC_X4_Y7_N1
\wsh|Add1~30\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~30_combout\ = \wsh|counter~21_combout\ $ ((((!(!\wsh|Add1~22\ & \wsh|Add1~27\) # (\wsh|Add1~22\ & \wsh|Add1~27COUT1_165\)))))
-- \wsh|Add1~32\ = CARRY((!\wsh|counter~21_combout\ & ((!\wsh|Add1~27\))))
-- \wsh|Add1~32COUT1_166\ = CARRY((!\wsh|counter~21_combout\ & ((!\wsh|Add1~27COUT1_165\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~21_combout\,
	cin => \wsh|Add1~22\,
	cin0 => \wsh|Add1~27\,
	cin1 => \wsh|Add1~27COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~30_combout\,
	cout0 => \wsh|Add1~32\,
	cout1 => \wsh|Add1~32COUT1_166\);

-- Location: LC_X8_Y7_N4
\wsh|counter[7]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[7]~COMBOUT\ = (\wsh|process_0~0_combout\ & (((\wsh|Add1~30_combout\)))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~21_combout\))
-- \wsh|counter\(7) = DFFEAS(\wsh|counter[7]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~105_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|process_0~0_combout\,
	datab => \wsh|counter~21_combout\,
	datac => \wsh|Add2~105_combout\,
	datad => \wsh|Add1~30_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[7]~COMBOUT\,
	regout => \wsh|counter\(7));

-- Location: LC_X8_Y5_N1
\wsh|Add2~105\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~105_combout\ = (\wsh|counter[7]~COMBOUT\ $ ((!(!\wsh|Add2~97\ & \wsh|Add2~102\) # (\wsh|Add2~97\ & \wsh|Add2~102COUT1_165\))))
-- \wsh|Add2~107\ = CARRY(((!\wsh|counter[7]~COMBOUT\ & !\wsh|Add2~102\)))
-- \wsh|Add2~107COUT1_166\ = CARRY(((!\wsh|counter[7]~COMBOUT\ & !\wsh|Add2~102COUT1_165\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[7]~COMBOUT\,
	cin => \wsh|Add2~97\,
	cin0 => \wsh|Add2~102\,
	cin1 => \wsh|Add2~102COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~105_combout\,
	cout0 => \wsh|Add2~107\,
	cout1 => \wsh|Add2~107COUT1_166\);

-- Location: LC_X3_Y5_N1
\wsh|Add0~35\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~35_combout\ = (!\wsh|Add0~27\ & \wsh|Add0~32\) # (\wsh|Add0~27\ & \wsh|Add0~32COUT1_165\) $ ((((!\wsh|counter~16_combout\)) # (!\wsh|counter\(7))))
-- \wsh|Add0~37\ = CARRY((!\wsh|Add0~32\ & ((!\wsh|counter~16_combout\) # (!\wsh|counter\(7)))))
-- \wsh|Add0~37COUT1_166\ = CARRY((!\wsh|Add0~32COUT1_165\ & ((!\wsh|counter~16_combout\) # (!\wsh|counter\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8707",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(7),
	datab => \wsh|counter~16_combout\,
	cin => \wsh|Add0~27\,
	cin0 => \wsh|Add0~32\,
	cin1 => \wsh|Add0~32COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~35_combout\,
	cout0 => \wsh|Add0~37\,
	cout1 => \wsh|Add0~37COUT1_166\);

-- Location: LC_X3_Y6_N5
\wsh|counter~21\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~21_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~35_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter\(7) & ((\wsh|counter~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(7),
	datab => \wsh|process_0~2_combout\,
	datac => \wsh|Add0~35_combout\,
	datad => \wsh|counter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~21_combout\);

-- Location: LC_X4_Y7_N2
\wsh|Add1~35\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~35_combout\ = \wsh|counter~22_combout\ $ (((((!\wsh|Add1~22\ & \wsh|Add1~32\) # (\wsh|Add1~22\ & \wsh|Add1~32COUT1_166\)))))
-- \wsh|Add1~37\ = CARRY((\wsh|counter~22_combout\) # ((!\wsh|Add1~32\)))
-- \wsh|Add1~37COUT1_167\ = CARRY((\wsh|counter~22_combout\) # ((!\wsh|Add1~32COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~22_combout\,
	cin => \wsh|Add1~22\,
	cin0 => \wsh|Add1~32\,
	cin1 => \wsh|Add1~32COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~35_combout\,
	cout0 => \wsh|Add1~37\,
	cout1 => \wsh|Add1~37COUT1_167\);

-- Location: LC_X8_Y7_N8
\wsh|counter[8]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[8]~COMBOUT\ = (\wsh|process_0~0_combout\ & (((\wsh|Add1~35_combout\)))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~22_combout\))
-- \wsh|counter\(8) = DFFEAS(\wsh|counter[8]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~110_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|process_0~0_combout\,
	datab => \wsh|counter~22_combout\,
	datac => \wsh|Add2~110_combout\,
	datad => \wsh|Add1~35_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[8]~COMBOUT\,
	regout => \wsh|counter\(8));

-- Location: LC_X8_Y5_N2
\wsh|Add2~110\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~110_combout\ = (\wsh|counter[8]~COMBOUT\ $ (((!\wsh|Add2~97\ & \wsh|Add2~107\) # (\wsh|Add2~97\ & \wsh|Add2~107COUT1_166\))))
-- \wsh|Add2~112\ = CARRY(((\wsh|counter[8]~COMBOUT\) # (!\wsh|Add2~107\)))
-- \wsh|Add2~112COUT1_167\ = CARRY(((\wsh|counter[8]~COMBOUT\) # (!\wsh|Add2~107COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[8]~COMBOUT\,
	cin => \wsh|Add2~97\,
	cin0 => \wsh|Add2~107\,
	cin1 => \wsh|Add2~107COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~110_combout\,
	cout0 => \wsh|Add2~112\,
	cout1 => \wsh|Add2~112COUT1_167\);

-- Location: LC_X3_Y5_N2
\wsh|Add0~40\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~40_combout\ = (!\wsh|Add0~27\ & \wsh|Add0~37\) # (\wsh|Add0~27\ & \wsh|Add0~37COUT1_166\) $ (((\wsh|counter\(8) & (\wsh|counter~16_combout\))))
-- \wsh|Add0~42\ = CARRY(((\wsh|counter\(8) & \wsh|counter~16_combout\)) # (!\wsh|Add0~37\))
-- \wsh|Add0~42COUT1_167\ = CARRY(((\wsh|counter\(8) & \wsh|counter~16_combout\)) # (!\wsh|Add0~37COUT1_166\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "788f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(8),
	datab => \wsh|counter~16_combout\,
	cin => \wsh|Add0~27\,
	cin0 => \wsh|Add0~37\,
	cin1 => \wsh|Add0~37COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~40_combout\,
	cout0 => \wsh|Add0~42\,
	cout1 => \wsh|Add0~42COUT1_167\);

-- Location: LC_X3_Y6_N4
\wsh|counter~22\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~22_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~40_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter~16_combout\ & ((\wsh|counter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~16_combout\,
	datab => \wsh|process_0~2_combout\,
	datac => \wsh|Add0~40_combout\,
	datad => \wsh|counter\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~22_combout\);

-- Location: LC_X4_Y7_N3
\wsh|Add1~40\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~40_combout\ = (\wsh|counter~23_combout\ $ ((!(!\wsh|Add1~22\ & \wsh|Add1~37\) # (\wsh|Add1~22\ & \wsh|Add1~37COUT1_167\))))
-- \wsh|Add1~42\ = CARRY(((!\wsh|counter~23_combout\ & !\wsh|Add1~37\)))
-- \wsh|Add1~42COUT1_168\ = CARRY(((!\wsh|counter~23_combout\ & !\wsh|Add1~37COUT1_167\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~23_combout\,
	cin => \wsh|Add1~22\,
	cin0 => \wsh|Add1~37\,
	cin1 => \wsh|Add1~37COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~40_combout\,
	cout0 => \wsh|Add1~42\,
	cout1 => \wsh|Add1~42COUT1_168\);

-- Location: LC_X4_Y6_N8
\wsh|counter[9]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[9]~COMBOUT\ = ((\wsh|process_0~0_combout\ & (\wsh|Add1~40_combout\)) # (!\wsh|process_0~0_combout\ & ((\wsh|counter~23_combout\))))
-- \wsh|counter\(9) = DFFEAS(\wsh|counter[9]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~115_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|Add1~40_combout\,
	datab => \wsh|counter~23_combout\,
	datac => \wsh|Add2~115_combout\,
	datad => \wsh|process_0~0_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[9]~COMBOUT\,
	regout => \wsh|counter\(9));

-- Location: LC_X8_Y5_N3
\wsh|Add2~115\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~115_combout\ = (\wsh|counter[9]~COMBOUT\ $ ((!(!\wsh|Add2~97\ & \wsh|Add2~112\) # (\wsh|Add2~97\ & \wsh|Add2~112COUT1_167\))))
-- \wsh|Add2~117\ = CARRY(((!\wsh|counter[9]~COMBOUT\ & !\wsh|Add2~112\)))
-- \wsh|Add2~117COUT1_168\ = CARRY(((!\wsh|counter[9]~COMBOUT\ & !\wsh|Add2~112COUT1_167\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[9]~COMBOUT\,
	cin => \wsh|Add2~97\,
	cin0 => \wsh|Add2~112\,
	cin1 => \wsh|Add2~112COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~115_combout\,
	cout0 => \wsh|Add2~117\,
	cout1 => \wsh|Add2~117COUT1_168\);

-- Location: LC_X3_Y5_N3
\wsh|Add0~45\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~45_combout\ = (!\wsh|Add0~27\ & \wsh|Add0~42\) # (\wsh|Add0~27\ & \wsh|Add0~42COUT1_167\) $ ((((!\wsh|counter~16_combout\)) # (!\wsh|counter\(9))))
-- \wsh|Add0~47\ = CARRY((!\wsh|Add0~42\ & ((!\wsh|counter~16_combout\) # (!\wsh|counter\(9)))))
-- \wsh|Add0~47COUT1_168\ = CARRY((!\wsh|Add0~42COUT1_167\ & ((!\wsh|counter~16_combout\) # (!\wsh|counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8707",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(9),
	datab => \wsh|counter~16_combout\,
	cin => \wsh|Add0~27\,
	cin0 => \wsh|Add0~42\,
	cin1 => \wsh|Add0~42COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~45_combout\,
	cout0 => \wsh|Add0~47\,
	cout1 => \wsh|Add0~47COUT1_168\);

-- Location: LC_X3_Y6_N7
\wsh|counter~23\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~23_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~45_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter~16_combout\ & (\wsh|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~16_combout\,
	datab => \wsh|process_0~2_combout\,
	datac => \wsh|counter\(9),
	datad => \wsh|Add0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~23_combout\);

-- Location: LC_X4_Y7_N4
\wsh|Add1~45\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~45_combout\ = (\wsh|counter~24_combout\ $ (((!\wsh|Add1~22\ & \wsh|Add1~42\) # (\wsh|Add1~22\ & \wsh|Add1~42COUT1_168\))))
-- \wsh|Add1~47\ = CARRY(((\wsh|counter~24_combout\) # (!\wsh|Add1~42COUT1_168\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~24_combout\,
	cin => \wsh|Add1~22\,
	cin0 => \wsh|Add1~42\,
	cin1 => \wsh|Add1~42COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~45_combout\,
	cout => \wsh|Add1~47\);

-- Location: LC_X4_Y7_N5
\wsh|Add1~50\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~50_combout\ = (\wsh|counter~25_combout\ $ ((!\wsh|Add1~47\)))
-- \wsh|Add1~52\ = CARRY(((!\wsh|counter~25_combout\ & !\wsh|Add1~47\)))
-- \wsh|Add1~52COUT1_169\ = CARRY(((!\wsh|counter~25_combout\ & !\wsh|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~25_combout\,
	cin => \wsh|Add1~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~50_combout\,
	cout0 => \wsh|Add1~52\,
	cout1 => \wsh|Add1~52COUT1_169\);

-- Location: LC_X4_Y6_N9
\wsh|counter[11]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[11]~COMBOUT\ = ((\wsh|process_0~0_combout\ & (\wsh|Add1~50_combout\)) # (!\wsh|process_0~0_combout\ & ((\wsh|counter~25_combout\))))
-- \wsh|counter\(11) = DFFEAS(\wsh|counter[11]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~125_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|Add1~50_combout\,
	datab => \wsh|counter~25_combout\,
	datac => \wsh|Add2~125_combout\,
	datad => \wsh|process_0~0_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[11]~COMBOUT\,
	regout => \wsh|counter\(11));

-- Location: LC_X8_Y5_N5
\wsh|Add2~125\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~125_combout\ = (\wsh|counter[11]~COMBOUT\ $ ((!\wsh|Add2~122\)))
-- \wsh|Add2~127\ = CARRY(((!\wsh|counter[11]~COMBOUT\ & !\wsh|Add2~122\)))
-- \wsh|Add2~127COUT1_169\ = CARRY(((!\wsh|counter[11]~COMBOUT\ & !\wsh|Add2~122\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[11]~COMBOUT\,
	cin => \wsh|Add2~122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~125_combout\,
	cout0 => \wsh|Add2~127\,
	cout1 => \wsh|Add2~127COUT1_169\);

-- Location: LC_X3_Y5_N4
\wsh|Add0~50\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~50_combout\ = (!\wsh|Add0~27\ & \wsh|Add0~47\) # (\wsh|Add0~27\ & \wsh|Add0~47COUT1_168\) $ (((\wsh|counter\(10) & (\wsh|counter~16_combout\))))
-- \wsh|Add0~52\ = CARRY(((\wsh|counter\(10) & \wsh|counter~16_combout\)) # (!\wsh|Add0~47COUT1_168\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "788f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(10),
	datab => \wsh|counter~16_combout\,
	cin => \wsh|Add0~27\,
	cin0 => \wsh|Add0~47\,
	cin1 => \wsh|Add0~47COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~50_combout\,
	cout => \wsh|Add0~52\);

-- Location: LC_X3_Y5_N5
\wsh|Add0~55\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~55_combout\ = \wsh|Add0~52\ $ ((((!\wsh|counter\(11))) # (!\wsh|counter~16_combout\)))
-- \wsh|Add0~57\ = CARRY((!\wsh|Add0~52\ & ((!\wsh|counter\(11)) # (!\wsh|counter~16_combout\))))
-- \wsh|Add0~57COUT1_169\ = CARRY((!\wsh|Add0~52\ & ((!\wsh|counter\(11)) # (!\wsh|counter~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "8707",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~16_combout\,
	datab => \wsh|counter\(11),
	cin => \wsh|Add0~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~55_combout\,
	cout0 => \wsh|Add0~57\,
	cout1 => \wsh|Add0~57COUT1_169\);

-- Location: LC_X3_Y6_N2
\wsh|counter~25\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~25_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~55_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter\(11) & (\wsh|counter~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(11),
	datab => \wsh|process_0~2_combout\,
	datac => \wsh|counter~16_combout\,
	datad => \wsh|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~25_combout\);

-- Location: LC_X4_Y7_N6
\wsh|Add1~55\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~55_combout\ = (\wsh|counter~26_combout\ $ (((!\wsh|Add1~47\ & \wsh|Add1~52\) # (\wsh|Add1~47\ & \wsh|Add1~52COUT1_169\))))
-- \wsh|Add1~57\ = CARRY(((\wsh|counter~26_combout\) # (!\wsh|Add1~52\)))
-- \wsh|Add1~57COUT1_170\ = CARRY(((\wsh|counter~26_combout\) # (!\wsh|Add1~52COUT1_169\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~26_combout\,
	cin => \wsh|Add1~47\,
	cin0 => \wsh|Add1~52\,
	cin1 => \wsh|Add1~52COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~55_combout\,
	cout0 => \wsh|Add1~57\,
	cout1 => \wsh|Add1~57COUT1_170\);

-- Location: LC_X4_Y6_N1
\wsh|counter[12]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[12]~COMBOUT\ = ((\wsh|process_0~0_combout\ & ((\wsh|Add1~55_combout\))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~26_combout\)))
-- \wsh|counter\(12) = DFFEAS(\wsh|counter[12]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~130_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|counter~26_combout\,
	datab => \wsh|Add1~55_combout\,
	datac => \wsh|Add2~130_combout\,
	datad => \wsh|process_0~0_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[12]~COMBOUT\,
	regout => \wsh|counter\(12));

-- Location: LC_X8_Y5_N6
\wsh|Add2~130\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~130_combout\ = (\wsh|counter[12]~COMBOUT\ $ (((!\wsh|Add2~122\ & \wsh|Add2~127\) # (\wsh|Add2~122\ & \wsh|Add2~127COUT1_169\))))
-- \wsh|Add2~132\ = CARRY(((\wsh|counter[12]~COMBOUT\) # (!\wsh|Add2~127\)))
-- \wsh|Add2~132COUT1_170\ = CARRY(((\wsh|counter[12]~COMBOUT\) # (!\wsh|Add2~127COUT1_169\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[12]~COMBOUT\,
	cin => \wsh|Add2~122\,
	cin0 => \wsh|Add2~127\,
	cin1 => \wsh|Add2~127COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~130_combout\,
	cout0 => \wsh|Add2~132\,
	cout1 => \wsh|Add2~132COUT1_170\);

-- Location: LC_X3_Y5_N6
\wsh|Add0~60\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~60_combout\ = (!\wsh|Add0~52\ & \wsh|Add0~57\) # (\wsh|Add0~52\ & \wsh|Add0~57COUT1_169\) $ (((\wsh|counter\(12) & (\wsh|counter~16_combout\))))
-- \wsh|Add0~62\ = CARRY(((\wsh|counter\(12) & \wsh|counter~16_combout\)) # (!\wsh|Add0~57\))
-- \wsh|Add0~62COUT1_170\ = CARRY(((\wsh|counter\(12) & \wsh|counter~16_combout\)) # (!\wsh|Add0~57COUT1_169\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "788f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(12),
	datab => \wsh|counter~16_combout\,
	cin => \wsh|Add0~52\,
	cin0 => \wsh|Add0~57\,
	cin1 => \wsh|Add0~57COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~60_combout\,
	cout0 => \wsh|Add0~62\,
	cout1 => \wsh|Add0~62COUT1_170\);

-- Location: LC_X4_Y6_N5
\wsh|counter~26\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~26_combout\ = (\wsh|process_0~2_combout\ & (\wsh|Add0~60_combout\)) # (!\wsh|process_0~2_combout\ & (((\wsh|counter\(12) & \wsh|counter~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add0~60_combout\,
	datab => \wsh|counter\(12),
	datac => \wsh|counter~16_combout\,
	datad => \wsh|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~26_combout\);

-- Location: LC_X4_Y7_N7
\wsh|Add1~60\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~60_combout\ = \wsh|counter~27_combout\ $ ((((!(!\wsh|Add1~47\ & \wsh|Add1~57\) # (\wsh|Add1~47\ & \wsh|Add1~57COUT1_170\)))))
-- \wsh|Add1~62\ = CARRY((!\wsh|counter~27_combout\ & ((!\wsh|Add1~57\))))
-- \wsh|Add1~62COUT1_171\ = CARRY((!\wsh|counter~27_combout\ & ((!\wsh|Add1~57COUT1_170\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~27_combout\,
	cin => \wsh|Add1~47\,
	cin0 => \wsh|Add1~57\,
	cin1 => \wsh|Add1~57COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~60_combout\,
	cout0 => \wsh|Add1~62\,
	cout1 => \wsh|Add1~62COUT1_171\);

-- Location: LC_X4_Y6_N4
\wsh|counter[13]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[13]~COMBOUT\ = ((\wsh|process_0~0_combout\ & (\wsh|Add1~60_combout\)) # (!\wsh|process_0~0_combout\ & ((\wsh|counter~27_combout\))))
-- \wsh|counter\(13) = DFFEAS(\wsh|counter[13]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~135_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|Add1~60_combout\,
	datab => \wsh|counter~27_combout\,
	datac => \wsh|Add2~135_combout\,
	datad => \wsh|process_0~0_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[13]~COMBOUT\,
	regout => \wsh|counter\(13));

-- Location: LC_X8_Y5_N7
\wsh|Add2~135\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~135_combout\ = \wsh|counter[13]~COMBOUT\ $ ((((!(!\wsh|Add2~122\ & \wsh|Add2~132\) # (\wsh|Add2~122\ & \wsh|Add2~132COUT1_170\)))))
-- \wsh|Add2~137\ = CARRY((!\wsh|counter[13]~COMBOUT\ & ((!\wsh|Add2~132\))))
-- \wsh|Add2~137COUT1_171\ = CARRY((!\wsh|counter[13]~COMBOUT\ & ((!\wsh|Add2~132COUT1_170\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter[13]~COMBOUT\,
	cin => \wsh|Add2~122\,
	cin0 => \wsh|Add2~132\,
	cin1 => \wsh|Add2~132COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~135_combout\,
	cout0 => \wsh|Add2~137\,
	cout1 => \wsh|Add2~137COUT1_171\);

-- Location: LC_X3_Y5_N7
\wsh|Add0~65\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~65_combout\ = (!\wsh|Add0~52\ & \wsh|Add0~62\) # (\wsh|Add0~52\ & \wsh|Add0~62COUT1_170\) $ ((((!\wsh|counter\(13))) # (!\wsh|counter~16_combout\)))
-- \wsh|Add0~67\ = CARRY((!\wsh|Add0~62\ & ((!\wsh|counter\(13)) # (!\wsh|counter~16_combout\))))
-- \wsh|Add0~67COUT1_171\ = CARRY((!\wsh|Add0~62COUT1_170\ & ((!\wsh|counter\(13)) # (!\wsh|counter~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8707",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~16_combout\,
	datab => \wsh|counter\(13),
	cin => \wsh|Add0~52\,
	cin0 => \wsh|Add0~62\,
	cin1 => \wsh|Add0~62COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~65_combout\,
	cout0 => \wsh|Add0~67\,
	cout1 => \wsh|Add0~67COUT1_171\);

-- Location: LC_X3_Y6_N3
\wsh|counter~27\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~27_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~65_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter~16_combout\ & (\wsh|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~16_combout\,
	datab => \wsh|process_0~2_combout\,
	datac => \wsh|counter\(13),
	datad => \wsh|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~27_combout\);

-- Location: LC_X4_Y7_N8
\wsh|Add1~65\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~65_combout\ = \wsh|counter~28_combout\ $ (((((!\wsh|Add1~47\ & \wsh|Add1~62\) # (\wsh|Add1~47\ & \wsh|Add1~62COUT1_171\)))))
-- \wsh|Add1~67\ = CARRY((\wsh|counter~28_combout\) # ((!\wsh|Add1~62\)))
-- \wsh|Add1~67COUT1_172\ = CARRY((\wsh|counter~28_combout\) # ((!\wsh|Add1~62COUT1_171\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~28_combout\,
	cin => \wsh|Add1~47\,
	cin0 => \wsh|Add1~62\,
	cin1 => \wsh|Add1~62COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~65_combout\,
	cout0 => \wsh|Add1~67\,
	cout1 => \wsh|Add1~67COUT1_172\);

-- Location: LC_X3_Y6_N8
\wsh|counter[14]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[14]~COMBOUT\ = (\wsh|process_0~0_combout\ & (\wsh|Add1~65_combout\)) # (!\wsh|process_0~0_combout\ & (((\wsh|counter~28_combout\))))
-- \wsh|counter\(14) = DFFEAS(\wsh|counter[14]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~140_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|Add1~65_combout\,
	datab => \wsh|process_0~0_combout\,
	datac => \wsh|Add2~140_combout\,
	datad => \wsh|counter~28_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[14]~COMBOUT\,
	regout => \wsh|counter\(14));

-- Location: LC_X8_Y5_N8
\wsh|Add2~140\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~140_combout\ = (\wsh|counter[14]~COMBOUT\ $ (((!\wsh|Add2~122\ & \wsh|Add2~137\) # (\wsh|Add2~122\ & \wsh|Add2~137COUT1_171\))))
-- \wsh|Add2~142\ = CARRY(((\wsh|counter[14]~COMBOUT\) # (!\wsh|Add2~137\)))
-- \wsh|Add2~142COUT1_172\ = CARRY(((\wsh|counter[14]~COMBOUT\) # (!\wsh|Add2~137COUT1_171\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[14]~COMBOUT\,
	cin => \wsh|Add2~122\,
	cin0 => \wsh|Add2~137\,
	cin1 => \wsh|Add2~137COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~140_combout\,
	cout0 => \wsh|Add2~142\,
	cout1 => \wsh|Add2~142COUT1_172\);

-- Location: LC_X3_Y5_N8
\wsh|Add0~70\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~70_combout\ = (!\wsh|Add0~52\ & \wsh|Add0~67\) # (\wsh|Add0~52\ & \wsh|Add0~67COUT1_171\) $ (((\wsh|counter~16_combout\ & (\wsh|counter\(14)))))
-- \wsh|Add0~72\ = CARRY(((\wsh|counter~16_combout\ & \wsh|counter\(14))) # (!\wsh|Add0~67\))
-- \wsh|Add0~72COUT1_172\ = CARRY(((\wsh|counter~16_combout\ & \wsh|counter\(14))) # (!\wsh|Add0~67COUT1_171\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "788f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~16_combout\,
	datab => \wsh|counter\(14),
	cin => \wsh|Add0~52\,
	cin0 => \wsh|Add0~67\,
	cin1 => \wsh|Add0~67COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~70_combout\,
	cout0 => \wsh|Add0~72\,
	cout1 => \wsh|Add0~72COUT1_172\);

-- Location: LC_X3_Y6_N9
\wsh|counter~28\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~28_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~70_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter\(14) & ((\wsh|counter~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(14),
	datab => \wsh|process_0~2_combout\,
	datac => \wsh|Add0~70_combout\,
	datad => \wsh|counter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~28_combout\);

-- Location: LC_X4_Y7_N9
\wsh|Add1~70\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~70_combout\ = (\wsh|counter~29_combout\ $ ((!(!\wsh|Add1~47\ & \wsh|Add1~67\) # (\wsh|Add1~47\ & \wsh|Add1~67COUT1_172\))))
-- \wsh|Add1~72\ = CARRY(((!\wsh|counter~29_combout\ & !\wsh|Add1~67COUT1_172\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~29_combout\,
	cin => \wsh|Add1~47\,
	cin0 => \wsh|Add1~67\,
	cin1 => \wsh|Add1~67COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~70_combout\,
	cout => \wsh|Add1~72\);

-- Location: LC_X5_Y7_N0
\wsh|Add1~75\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~75_combout\ = (\wsh|counter~30_combout\ $ ((\wsh|Add1~72\)))
-- \wsh|Add1~77\ = CARRY(((\wsh|counter~30_combout\) # (!\wsh|Add1~72\)))
-- \wsh|Add1~77COUT1_173\ = CARRY(((\wsh|counter~30_combout\) # (!\wsh|Add1~72\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~30_combout\,
	cin => \wsh|Add1~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~75_combout\,
	cout0 => \wsh|Add1~77\,
	cout1 => \wsh|Add1~77COUT1_173\);

-- Location: LC_X5_Y6_N3
\wsh|counter[16]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[16]~COMBOUT\ = (\wsh|process_0~0_combout\ & (((\wsh|Add1~75_combout\)))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~30_combout\))
-- \wsh|counter\(16) = DFFEAS(\wsh|counter[16]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~150_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|process_0~0_combout\,
	datab => \wsh|counter~30_combout\,
	datac => \wsh|Add2~150_combout\,
	datad => \wsh|Add1~75_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[16]~COMBOUT\,
	regout => \wsh|counter\(16));

-- Location: LC_X9_Y5_N0
\wsh|Add2~150\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~150_combout\ = \wsh|counter[16]~COMBOUT\ $ ((((\wsh|Add2~147\))))
-- \wsh|Add2~152\ = CARRY((\wsh|counter[16]~COMBOUT\) # ((!\wsh|Add2~147\)))
-- \wsh|Add2~152COUT1_173\ = CARRY((\wsh|counter[16]~COMBOUT\) # ((!\wsh|Add2~147\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter[16]~COMBOUT\,
	cin => \wsh|Add2~147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~150_combout\,
	cout0 => \wsh|Add2~152\,
	cout1 => \wsh|Add2~152COUT1_173\);

-- Location: LC_X3_Y5_N9
\wsh|Add0~75\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~75_combout\ = (!\wsh|Add0~52\ & \wsh|Add0~72\) # (\wsh|Add0~52\ & \wsh|Add0~72COUT1_172\) $ ((((!\wsh|counter~16_combout\)) # (!\wsh|counter\(15))))
-- \wsh|Add0~77\ = CARRY((!\wsh|Add0~72COUT1_172\ & ((!\wsh|counter~16_combout\) # (!\wsh|counter\(15)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8707",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(15),
	datab => \wsh|counter~16_combout\,
	cin => \wsh|Add0~52\,
	cin0 => \wsh|Add0~72\,
	cin1 => \wsh|Add0~72COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~75_combout\,
	cout => \wsh|Add0~77\);

-- Location: LC_X4_Y5_N0
\wsh|Add0~80\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~80_combout\ = \wsh|Add0~77\ $ (((\wsh|counter~16_combout\ & (\wsh|counter\(16)))))
-- \wsh|Add0~82\ = CARRY(((\wsh|counter~16_combout\ & \wsh|counter\(16))) # (!\wsh|Add0~77\))
-- \wsh|Add0~82COUT1_173\ = CARRY(((\wsh|counter~16_combout\ & \wsh|counter\(16))) # (!\wsh|Add0~77\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "788f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~16_combout\,
	datab => \wsh|counter\(16),
	cin => \wsh|Add0~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~80_combout\,
	cout0 => \wsh|Add0~82\,
	cout1 => \wsh|Add0~82COUT1_173\);

-- Location: LC_X5_Y6_N2
\wsh|counter~30\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~30_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~80_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter\(16) & (\wsh|counter~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(16),
	datab => \wsh|process_0~2_combout\,
	datac => \wsh|counter~16_combout\,
	datad => \wsh|Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~30_combout\);

-- Location: LC_X5_Y7_N1
\wsh|Add1~80\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~80_combout\ = \wsh|counter~31_combout\ $ ((((!(!\wsh|Add1~72\ & \wsh|Add1~77\) # (\wsh|Add1~72\ & \wsh|Add1~77COUT1_173\)))))
-- \wsh|Add1~82\ = CARRY((!\wsh|counter~31_combout\ & ((!\wsh|Add1~77\))))
-- \wsh|Add1~82COUT1_174\ = CARRY((!\wsh|counter~31_combout\ & ((!\wsh|Add1~77COUT1_173\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~31_combout\,
	cin => \wsh|Add1~72\,
	cin0 => \wsh|Add1~77\,
	cin1 => \wsh|Add1~77COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~80_combout\,
	cout0 => \wsh|Add1~82\,
	cout1 => \wsh|Add1~82COUT1_174\);

-- Location: LC_X5_Y7_N2
\wsh|Add1~85\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~85_combout\ = (\wsh|counter~32_combout\ $ (((!\wsh|Add1~72\ & \wsh|Add1~82\) # (\wsh|Add1~72\ & \wsh|Add1~82COUT1_174\))))
-- \wsh|Add1~87\ = CARRY(((\wsh|counter~32_combout\) # (!\wsh|Add1~82\)))
-- \wsh|Add1~87COUT1_175\ = CARRY(((\wsh|counter~32_combout\) # (!\wsh|Add1~82COUT1_174\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~32_combout\,
	cin => \wsh|Add1~72\,
	cin0 => \wsh|Add1~82\,
	cin1 => \wsh|Add1~82COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~85_combout\,
	cout0 => \wsh|Add1~87\,
	cout1 => \wsh|Add1~87COUT1_175\);

-- Location: LC_X5_Y6_N4
\wsh|counter[18]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[18]~COMBOUT\ = (\wsh|process_0~0_combout\ & (\wsh|Add1~85_combout\)) # (!\wsh|process_0~0_combout\ & (((\wsh|counter~32_combout\))))
-- \wsh|counter\(18) = DFFEAS(\wsh|counter[18]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~5_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|process_0~0_combout\,
	datab => \wsh|Add1~85_combout\,
	datac => \wsh|Add2~5_combout\,
	datad => \wsh|counter~32_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[18]~COMBOUT\,
	regout => \wsh|counter\(18));

-- Location: LC_X9_Y5_N1
\wsh|Add2~0\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~0_combout\ = (\wsh|counter[17]~COMBOUT\ $ ((!(!\wsh|Add2~147\ & \wsh|Add2~152\) # (\wsh|Add2~147\ & \wsh|Add2~152COUT1_173\))))
-- \wsh|Add2~2\ = CARRY(((!\wsh|counter[17]~COMBOUT\ & !\wsh|Add2~152\)))
-- \wsh|Add2~2COUT1_174\ = CARRY(((!\wsh|counter[17]~COMBOUT\ & !\wsh|Add2~152COUT1_173\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[17]~COMBOUT\,
	cin => \wsh|Add2~147\,
	cin0 => \wsh|Add2~152\,
	cin1 => \wsh|Add2~152COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~0_combout\,
	cout0 => \wsh|Add2~2\,
	cout1 => \wsh|Add2~2COUT1_174\);

-- Location: LC_X9_Y5_N2
\wsh|Add2~5\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~5_combout\ = (\wsh|counter[18]~COMBOUT\ $ (((!\wsh|Add2~147\ & \wsh|Add2~2\) # (\wsh|Add2~147\ & \wsh|Add2~2COUT1_174\))))
-- \wsh|Add2~7\ = CARRY(((\wsh|counter[18]~COMBOUT\) # (!\wsh|Add2~2\)))
-- \wsh|Add2~7COUT1_175\ = CARRY(((\wsh|counter[18]~COMBOUT\) # (!\wsh|Add2~2COUT1_174\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[18]~COMBOUT\,
	cin => \wsh|Add2~147\,
	cin0 => \wsh|Add2~2\,
	cin1 => \wsh|Add2~2COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~5_combout\,
	cout0 => \wsh|Add2~7\,
	cout1 => \wsh|Add2~7COUT1_175\);

-- Location: LC_X4_Y5_N1
\wsh|Add0~85\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~85_combout\ = (!\wsh|Add0~77\ & \wsh|Add0~82\) # (\wsh|Add0~77\ & \wsh|Add0~82COUT1_173\) $ ((((!\wsh|counter~16_combout\)) # (!\wsh|counter\(17))))
-- \wsh|Add0~87\ = CARRY((!\wsh|Add0~82\ & ((!\wsh|counter~16_combout\) # (!\wsh|counter\(17)))))
-- \wsh|Add0~87COUT1_174\ = CARRY((!\wsh|Add0~82COUT1_173\ & ((!\wsh|counter~16_combout\) # (!\wsh|counter\(17)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8707",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(17),
	datab => \wsh|counter~16_combout\,
	cin => \wsh|Add0~77\,
	cin0 => \wsh|Add0~82\,
	cin1 => \wsh|Add0~82COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~85_combout\,
	cout0 => \wsh|Add0~87\,
	cout1 => \wsh|Add0~87COUT1_174\);

-- Location: LC_X4_Y5_N2
\wsh|Add0~90\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~90_combout\ = (!\wsh|Add0~77\ & \wsh|Add0~87\) # (\wsh|Add0~77\ & \wsh|Add0~87COUT1_174\) $ (((\wsh|counter\(18) & (\wsh|counter~16_combout\))))
-- \wsh|Add0~92\ = CARRY(((\wsh|counter\(18) & \wsh|counter~16_combout\)) # (!\wsh|Add0~87\))
-- \wsh|Add0~92COUT1_175\ = CARRY(((\wsh|counter\(18) & \wsh|counter~16_combout\)) # (!\wsh|Add0~87COUT1_174\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "788f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(18),
	datab => \wsh|counter~16_combout\,
	cin => \wsh|Add0~77\,
	cin0 => \wsh|Add0~87\,
	cin1 => \wsh|Add0~87COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~90_combout\,
	cout0 => \wsh|Add0~92\,
	cout1 => \wsh|Add0~92COUT1_175\);

-- Location: LC_X5_Y6_N1
\wsh|counter~32\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~32_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~90_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter\(18) & (\wsh|counter~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(18),
	datab => \wsh|counter~16_combout\,
	datac => \wsh|process_0~2_combout\,
	datad => \wsh|Add0~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~32_combout\);

-- Location: LC_X5_Y7_N3
\wsh|Add1~90\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~90_combout\ = (\wsh|counter~33_combout\ $ ((!(!\wsh|Add1~72\ & \wsh|Add1~87\) # (\wsh|Add1~72\ & \wsh|Add1~87COUT1_175\))))
-- \wsh|Add1~92\ = CARRY(((!\wsh|counter~33_combout\ & !\wsh|Add1~87\)))
-- \wsh|Add1~92COUT1_176\ = CARRY(((!\wsh|counter~33_combout\ & !\wsh|Add1~87COUT1_175\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~33_combout\,
	cin => \wsh|Add1~72\,
	cin0 => \wsh|Add1~87\,
	cin1 => \wsh|Add1~87COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~90_combout\,
	cout0 => \wsh|Add1~92\,
	cout1 => \wsh|Add1~92COUT1_176\);

-- Location: LC_X5_Y6_N8
\wsh|counter[19]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[19]~COMBOUT\ = (\wsh|process_0~0_combout\ & (\wsh|Add1~90_combout\)) # (!\wsh|process_0~0_combout\ & (((\wsh|counter~33_combout\))))
-- \wsh|counter\(19) = DFFEAS(\wsh|counter[19]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~10_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|process_0~0_combout\,
	datab => \wsh|Add1~90_combout\,
	datac => \wsh|Add2~10_combout\,
	datad => \wsh|counter~33_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[19]~COMBOUT\,
	regout => \wsh|counter\(19));

-- Location: LC_X9_Y5_N3
\wsh|Add2~10\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~10_combout\ = (\wsh|counter[19]~COMBOUT\ $ ((!(!\wsh|Add2~147\ & \wsh|Add2~7\) # (\wsh|Add2~147\ & \wsh|Add2~7COUT1_175\))))
-- \wsh|Add2~12\ = CARRY(((!\wsh|counter[19]~COMBOUT\ & !\wsh|Add2~7\)))
-- \wsh|Add2~12COUT1_176\ = CARRY(((!\wsh|counter[19]~COMBOUT\ & !\wsh|Add2~7COUT1_175\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[19]~COMBOUT\,
	cin => \wsh|Add2~147\,
	cin0 => \wsh|Add2~7\,
	cin1 => \wsh|Add2~7COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~10_combout\,
	cout0 => \wsh|Add2~12\,
	cout1 => \wsh|Add2~12COUT1_176\);

-- Location: LC_X4_Y5_N3
\wsh|Add0~95\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~95_combout\ = (!\wsh|Add0~77\ & \wsh|Add0~92\) # (\wsh|Add0~77\ & \wsh|Add0~92COUT1_175\) $ ((((!\wsh|counter~16_combout\)) # (!\wsh|counter\(19))))
-- \wsh|Add0~97\ = CARRY((!\wsh|Add0~92\ & ((!\wsh|counter~16_combout\) # (!\wsh|counter\(19)))))
-- \wsh|Add0~97COUT1_176\ = CARRY((!\wsh|Add0~92COUT1_175\ & ((!\wsh|counter~16_combout\) # (!\wsh|counter\(19)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8707",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(19),
	datab => \wsh|counter~16_combout\,
	cin => \wsh|Add0~77\,
	cin0 => \wsh|Add0~92\,
	cin1 => \wsh|Add0~92COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~95_combout\,
	cout0 => \wsh|Add0~97\,
	cout1 => \wsh|Add0~97COUT1_176\);

-- Location: LC_X5_Y6_N7
\wsh|counter~33\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~33_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~95_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter\(19) & (\wsh|counter~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(19),
	datab => \wsh|counter~16_combout\,
	datac => \wsh|process_0~2_combout\,
	datad => \wsh|Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~33_combout\);

-- Location: LC_X5_Y7_N4
\wsh|Add1~95\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~95_combout\ = (\wsh|counter~34_combout\ $ (((!\wsh|Add1~72\ & \wsh|Add1~92\) # (\wsh|Add1~72\ & \wsh|Add1~92COUT1_176\))))
-- \wsh|Add1~97\ = CARRY(((\wsh|counter~34_combout\) # (!\wsh|Add1~92COUT1_176\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~34_combout\,
	cin => \wsh|Add1~72\,
	cin0 => \wsh|Add1~92\,
	cin1 => \wsh|Add1~92COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~95_combout\,
	cout => \wsh|Add1~97\);

-- Location: LC_X5_Y6_N9
\wsh|counter[20]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[20]~COMBOUT\ = (\wsh|process_0~0_combout\ & (((\wsh|Add1~95_combout\)))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~34_combout\))
-- \wsh|counter\(20) = DFFEAS(\wsh|counter[20]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~15_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|process_0~0_combout\,
	datab => \wsh|counter~34_combout\,
	datac => \wsh|Add2~15_combout\,
	datad => \wsh|Add1~95_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[20]~COMBOUT\,
	regout => \wsh|counter\(20));

-- Location: LC_X9_Y5_N4
\wsh|Add2~15\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~15_combout\ = (\wsh|counter[20]~COMBOUT\ $ (((!\wsh|Add2~147\ & \wsh|Add2~12\) # (\wsh|Add2~147\ & \wsh|Add2~12COUT1_176\))))
-- \wsh|Add2~17\ = CARRY(((\wsh|counter[20]~COMBOUT\) # (!\wsh|Add2~12COUT1_176\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[20]~COMBOUT\,
	cin => \wsh|Add2~147\,
	cin0 => \wsh|Add2~12\,
	cin1 => \wsh|Add2~12COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~15_combout\,
	cout => \wsh|Add2~17\);

-- Location: LC_X4_Y5_N4
\wsh|Add0~100\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~100_combout\ = (!\wsh|Add0~77\ & \wsh|Add0~97\) # (\wsh|Add0~77\ & \wsh|Add0~97COUT1_176\) $ (((\wsh|counter~16_combout\ & (\wsh|counter\(20)))))
-- \wsh|Add0~102\ = CARRY(((\wsh|counter~16_combout\ & \wsh|counter\(20))) # (!\wsh|Add0~97COUT1_176\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "788f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~16_combout\,
	datab => \wsh|counter\(20),
	cin => \wsh|Add0~77\,
	cin0 => \wsh|Add0~97\,
	cin1 => \wsh|Add0~97COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~100_combout\,
	cout => \wsh|Add0~102\);

-- Location: LC_X5_Y6_N0
\wsh|counter~34\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~34_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~100_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter~16_combout\ & ((\wsh|counter\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|process_0~2_combout\,
	datab => \wsh|counter~16_combout\,
	datac => \wsh|Add0~100_combout\,
	datad => \wsh|counter\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~34_combout\);

-- Location: LC_X5_Y7_N5
\wsh|Add1~100\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~100_combout\ = \wsh|counter~35_combout\ $ ((((!\wsh|Add1~97\))))
-- \wsh|Add1~102\ = CARRY((!\wsh|counter~35_combout\ & ((!\wsh|Add1~97\))))
-- \wsh|Add1~102COUT1_177\ = CARRY((!\wsh|counter~35_combout\ & ((!\wsh|Add1~97\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~35_combout\,
	cin => \wsh|Add1~97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~100_combout\,
	cout0 => \wsh|Add1~102\,
	cout1 => \wsh|Add1~102COUT1_177\);

-- Location: LC_X11_Y5_N8
\wsh|counter[21]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[21]~COMBOUT\ = (\wsh|process_0~0_combout\ & (\wsh|Add1~100_combout\)) # (!\wsh|process_0~0_combout\ & (((\wsh|counter~35_combout\))))
-- \wsh|counter\(21) = DFFEAS(\wsh|counter[21]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~20_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|Add1~100_combout\,
	datab => \wsh|process_0~0_combout\,
	datac => \wsh|Add2~20_combout\,
	datad => \wsh|counter~35_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[21]~COMBOUT\,
	regout => \wsh|counter\(21));

-- Location: LC_X9_Y5_N5
\wsh|Add2~20\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~20_combout\ = (\wsh|counter[21]~COMBOUT\ $ ((!\wsh|Add2~17\)))
-- \wsh|Add2~22\ = CARRY(((!\wsh|counter[21]~COMBOUT\ & !\wsh|Add2~17\)))
-- \wsh|Add2~22COUT1_177\ = CARRY(((!\wsh|counter[21]~COMBOUT\ & !\wsh|Add2~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[21]~COMBOUT\,
	cin => \wsh|Add2~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~20_combout\,
	cout0 => \wsh|Add2~22\,
	cout1 => \wsh|Add2~22COUT1_177\);

-- Location: LC_X4_Y5_N5
\wsh|Add0~105\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~105_combout\ = \wsh|Add0~102\ $ ((((!\wsh|counter\(21))) # (!\wsh|counter~16_combout\)))
-- \wsh|Add0~107\ = CARRY((!\wsh|Add0~102\ & ((!\wsh|counter\(21)) # (!\wsh|counter~16_combout\))))
-- \wsh|Add0~107COUT1_177\ = CARRY((!\wsh|Add0~102\ & ((!\wsh|counter\(21)) # (!\wsh|counter~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "8707",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~16_combout\,
	datab => \wsh|counter\(21),
	cin => \wsh|Add0~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~105_combout\,
	cout0 => \wsh|Add0~107\,
	cout1 => \wsh|Add0~107COUT1_177\);

-- Location: LC_X4_Y6_N2
\wsh|counter~35\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~35_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~105_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter\(21) & (\wsh|counter~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(21),
	datab => \wsh|process_0~2_combout\,
	datac => \wsh|counter~16_combout\,
	datad => \wsh|Add0~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~35_combout\);

-- Location: LC_X5_Y7_N6
\wsh|Add1~105\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~105_combout\ = (\wsh|counter~36_combout\ $ (((!\wsh|Add1~97\ & \wsh|Add1~102\) # (\wsh|Add1~97\ & \wsh|Add1~102COUT1_177\))))
-- \wsh|Add1~107\ = CARRY(((\wsh|counter~36_combout\) # (!\wsh|Add1~102\)))
-- \wsh|Add1~107COUT1_178\ = CARRY(((\wsh|counter~36_combout\) # (!\wsh|Add1~102COUT1_177\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~36_combout\,
	cin => \wsh|Add1~97\,
	cin0 => \wsh|Add1~102\,
	cin1 => \wsh|Add1~102COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~105_combout\,
	cout0 => \wsh|Add1~107\,
	cout1 => \wsh|Add1~107COUT1_178\);

-- Location: LC_X11_Y5_N9
\wsh|counter[22]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[22]~COMBOUT\ = ((\wsh|process_0~0_combout\ & ((\wsh|Add1~105_combout\))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~36_combout\)))
-- \wsh|counter\(22) = DFFEAS(\wsh|counter[22]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~25_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|counter~36_combout\,
	datab => \wsh|Add1~105_combout\,
	datac => \wsh|Add2~25_combout\,
	datad => \wsh|process_0~0_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[22]~COMBOUT\,
	regout => \wsh|counter\(22));

-- Location: LC_X9_Y5_N6
\wsh|Add2~25\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~25_combout\ = (\wsh|counter[22]~COMBOUT\ $ (((!\wsh|Add2~17\ & \wsh|Add2~22\) # (\wsh|Add2~17\ & \wsh|Add2~22COUT1_177\))))
-- \wsh|Add2~27\ = CARRY(((\wsh|counter[22]~COMBOUT\) # (!\wsh|Add2~22\)))
-- \wsh|Add2~27COUT1_178\ = CARRY(((\wsh|counter[22]~COMBOUT\) # (!\wsh|Add2~22COUT1_177\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[22]~COMBOUT\,
	cin => \wsh|Add2~17\,
	cin0 => \wsh|Add2~22\,
	cin1 => \wsh|Add2~22COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~25_combout\,
	cout0 => \wsh|Add2~27\,
	cout1 => \wsh|Add2~27COUT1_178\);

-- Location: LC_X4_Y5_N6
\wsh|Add0~110\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~110_combout\ = (!\wsh|Add0~102\ & \wsh|Add0~107\) # (\wsh|Add0~102\ & \wsh|Add0~107COUT1_177\) $ (((\wsh|counter\(22) & (\wsh|counter~16_combout\))))
-- \wsh|Add0~112\ = CARRY(((\wsh|counter\(22) & \wsh|counter~16_combout\)) # (!\wsh|Add0~107\))
-- \wsh|Add0~112COUT1_178\ = CARRY(((\wsh|counter\(22) & \wsh|counter~16_combout\)) # (!\wsh|Add0~107COUT1_177\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "788f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(22),
	datab => \wsh|counter~16_combout\,
	cin => \wsh|Add0~102\,
	cin0 => \wsh|Add0~107\,
	cin1 => \wsh|Add0~107COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~110_combout\,
	cout0 => \wsh|Add0~112\,
	cout1 => \wsh|Add0~112COUT1_178\);

-- Location: LC_X11_Y5_N0
\wsh|counter~36\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~36_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~110_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter\(22) & (\wsh|counter~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|process_0~2_combout\,
	datab => \wsh|counter\(22),
	datac => \wsh|counter~16_combout\,
	datad => \wsh|Add0~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~36_combout\);

-- Location: LC_X5_Y7_N7
\wsh|Add1~110\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~110_combout\ = (\wsh|counter~37_combout\ $ ((!(!\wsh|Add1~97\ & \wsh|Add1~107\) # (\wsh|Add1~97\ & \wsh|Add1~107COUT1_178\))))
-- \wsh|Add1~112\ = CARRY(((!\wsh|counter~37_combout\ & !\wsh|Add1~107\)))
-- \wsh|Add1~112COUT1_179\ = CARRY(((!\wsh|counter~37_combout\ & !\wsh|Add1~107COUT1_178\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~37_combout\,
	cin => \wsh|Add1~97\,
	cin0 => \wsh|Add1~107\,
	cin1 => \wsh|Add1~107COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~110_combout\,
	cout0 => \wsh|Add1~112\,
	cout1 => \wsh|Add1~112COUT1_179\);

-- Location: LC_X11_Y5_N3
\wsh|counter[23]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[23]~COMBOUT\ = (\wsh|process_0~0_combout\ & (((\wsh|Add1~110_combout\)))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~37_combout\))
-- \wsh|counter\(23) = DFFEAS(\wsh|counter[23]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~30_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|counter~37_combout\,
	datab => \wsh|process_0~0_combout\,
	datac => \wsh|Add2~30_combout\,
	datad => \wsh|Add1~110_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[23]~COMBOUT\,
	regout => \wsh|counter\(23));

-- Location: LC_X9_Y5_N7
\wsh|Add2~30\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~30_combout\ = (\wsh|counter[23]~COMBOUT\ $ ((!(!\wsh|Add2~17\ & \wsh|Add2~27\) # (\wsh|Add2~17\ & \wsh|Add2~27COUT1_178\))))
-- \wsh|Add2~32\ = CARRY(((!\wsh|counter[23]~COMBOUT\ & !\wsh|Add2~27\)))
-- \wsh|Add2~32COUT1_179\ = CARRY(((!\wsh|counter[23]~COMBOUT\ & !\wsh|Add2~27COUT1_178\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[23]~COMBOUT\,
	cin => \wsh|Add2~17\,
	cin0 => \wsh|Add2~27\,
	cin1 => \wsh|Add2~27COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~30_combout\,
	cout0 => \wsh|Add2~32\,
	cout1 => \wsh|Add2~32COUT1_179\);

-- Location: LC_X4_Y5_N7
\wsh|Add0~115\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~115_combout\ = (!\wsh|Add0~102\ & \wsh|Add0~112\) # (\wsh|Add0~102\ & \wsh|Add0~112COUT1_178\) $ ((((!\wsh|counter\(23))) # (!\wsh|counter~16_combout\)))
-- \wsh|Add0~117\ = CARRY((!\wsh|Add0~112\ & ((!\wsh|counter\(23)) # (!\wsh|counter~16_combout\))))
-- \wsh|Add0~117COUT1_179\ = CARRY((!\wsh|Add0~112COUT1_178\ & ((!\wsh|counter\(23)) # (!\wsh|counter~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8707",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~16_combout\,
	datab => \wsh|counter\(23),
	cin => \wsh|Add0~102\,
	cin0 => \wsh|Add0~112\,
	cin1 => \wsh|Add0~112COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~115_combout\,
	cout0 => \wsh|Add0~117\,
	cout1 => \wsh|Add0~117COUT1_179\);

-- Location: LC_X4_Y6_N6
\wsh|counter~37\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~37_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~115_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter~16_combout\ & (\wsh|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~16_combout\,
	datab => \wsh|counter\(23),
	datac => \wsh|Add0~115_combout\,
	datad => \wsh|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~37_combout\);

-- Location: LC_X5_Y7_N8
\wsh|Add1~115\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~115_combout\ = (\wsh|counter~38_combout\ $ (((!\wsh|Add1~97\ & \wsh|Add1~112\) # (\wsh|Add1~97\ & \wsh|Add1~112COUT1_179\))))
-- \wsh|Add1~117\ = CARRY(((\wsh|counter~38_combout\) # (!\wsh|Add1~112\)))
-- \wsh|Add1~117COUT1_180\ = CARRY(((\wsh|counter~38_combout\) # (!\wsh|Add1~112COUT1_179\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~38_combout\,
	cin => \wsh|Add1~97\,
	cin0 => \wsh|Add1~112\,
	cin1 => \wsh|Add1~112COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~115_combout\,
	cout0 => \wsh|Add1~117\,
	cout1 => \wsh|Add1~117COUT1_180\);

-- Location: LC_X11_Y5_N2
\wsh|counter[24]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[24]~COMBOUT\ = (\wsh|process_0~0_combout\ & (((\wsh|Add1~115_combout\)))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~38_combout\))
-- \wsh|counter\(24) = DFFEAS(\wsh|counter[24]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~35_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|counter~38_combout\,
	datab => \wsh|process_0~0_combout\,
	datac => \wsh|Add2~35_combout\,
	datad => \wsh|Add1~115_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[24]~COMBOUT\,
	regout => \wsh|counter\(24));

-- Location: LC_X9_Y5_N8
\wsh|Add2~35\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~35_combout\ = (\wsh|counter[24]~COMBOUT\ $ (((!\wsh|Add2~17\ & \wsh|Add2~32\) # (\wsh|Add2~17\ & \wsh|Add2~32COUT1_179\))))
-- \wsh|Add2~37\ = CARRY(((\wsh|counter[24]~COMBOUT\) # (!\wsh|Add2~32\)))
-- \wsh|Add2~37COUT1_180\ = CARRY(((\wsh|counter[24]~COMBOUT\) # (!\wsh|Add2~32COUT1_179\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[24]~COMBOUT\,
	cin => \wsh|Add2~17\,
	cin0 => \wsh|Add2~32\,
	cin1 => \wsh|Add2~32COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~35_combout\,
	cout0 => \wsh|Add2~37\,
	cout1 => \wsh|Add2~37COUT1_180\);

-- Location: LC_X4_Y5_N8
\wsh|Add0~120\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~120_combout\ = (!\wsh|Add0~102\ & \wsh|Add0~117\) # (\wsh|Add0~102\ & \wsh|Add0~117COUT1_179\) $ (((\wsh|counter\(24) & (\wsh|counter~16_combout\))))
-- \wsh|Add0~122\ = CARRY(((\wsh|counter\(24) & \wsh|counter~16_combout\)) # (!\wsh|Add0~117\))
-- \wsh|Add0~122COUT1_180\ = CARRY(((\wsh|counter\(24) & \wsh|counter~16_combout\)) # (!\wsh|Add0~117COUT1_179\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "788f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(24),
	datab => \wsh|counter~16_combout\,
	cin => \wsh|Add0~102\,
	cin0 => \wsh|Add0~117\,
	cin1 => \wsh|Add0~117COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~120_combout\,
	cout0 => \wsh|Add0~122\,
	cout1 => \wsh|Add0~122COUT1_180\);

-- Location: LC_X11_Y5_N6
\wsh|counter~38\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~38_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~120_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter\(24) & (\wsh|counter~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|process_0~2_combout\,
	datab => \wsh|counter\(24),
	datac => \wsh|counter~16_combout\,
	datad => \wsh|Add0~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~38_combout\);

-- Location: LC_X5_Y7_N9
\wsh|Add1~120\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~120_combout\ = (\wsh|counter~39_combout\ $ ((!(!\wsh|Add1~97\ & \wsh|Add1~117\) # (\wsh|Add1~97\ & \wsh|Add1~117COUT1_180\))))
-- \wsh|Add1~122\ = CARRY(((!\wsh|counter~39_combout\ & !\wsh|Add1~117COUT1_180\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~39_combout\,
	cin => \wsh|Add1~97\,
	cin0 => \wsh|Add1~117\,
	cin1 => \wsh|Add1~117COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~120_combout\,
	cout => \wsh|Add1~122\);

-- Location: LC_X8_Y7_N6
\wsh|counter[25]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[25]~COMBOUT\ = (\wsh|process_0~0_combout\ & (((\wsh|Add1~120_combout\)))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~39_combout\))
-- \wsh|counter\(25) = DFFEAS(\wsh|counter[25]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~40_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|process_0~0_combout\,
	datab => \wsh|counter~39_combout\,
	datac => \wsh|Add2~40_combout\,
	datad => \wsh|Add1~120_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[25]~COMBOUT\,
	regout => \wsh|counter\(25));

-- Location: LC_X9_Y5_N9
\wsh|Add2~40\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~40_combout\ = (\wsh|counter[25]~COMBOUT\ $ ((!(!\wsh|Add2~17\ & \wsh|Add2~37\) # (\wsh|Add2~17\ & \wsh|Add2~37COUT1_180\))))
-- \wsh|Add2~42\ = CARRY(((!\wsh|counter[25]~COMBOUT\ & !\wsh|Add2~37COUT1_180\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[25]~COMBOUT\,
	cin => \wsh|Add2~17\,
	cin0 => \wsh|Add2~37\,
	cin1 => \wsh|Add2~37COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~40_combout\,
	cout => \wsh|Add2~42\);

-- Location: LC_X4_Y5_N9
\wsh|Add0~125\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~125_combout\ = (!\wsh|Add0~102\ & \wsh|Add0~122\) # (\wsh|Add0~102\ & \wsh|Add0~122COUT1_180\) $ ((((!\wsh|counter~16_combout\)) # (!\wsh|counter\(25))))
-- \wsh|Add0~127\ = CARRY((!\wsh|Add0~122COUT1_180\ & ((!\wsh|counter~16_combout\) # (!\wsh|counter\(25)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8707",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(25),
	datab => \wsh|counter~16_combout\,
	cin => \wsh|Add0~102\,
	cin0 => \wsh|Add0~122\,
	cin1 => \wsh|Add0~122COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~125_combout\,
	cout => \wsh|Add0~127\);

-- Location: LC_X5_Y6_N6
\wsh|counter~40\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~40_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~130_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter\(26) & (\wsh|counter~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(26),
	datab => \wsh|counter~16_combout\,
	datac => \wsh|process_0~2_combout\,
	datad => \wsh|Add0~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~40_combout\);

-- Location: LC_X6_Y7_N0
\wsh|Add1~125\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~125_combout\ = \wsh|counter~40_combout\ $ ((((\wsh|Add1~122\))))
-- \wsh|Add1~127\ = CARRY((\wsh|counter~40_combout\) # ((!\wsh|Add1~122\)))
-- \wsh|Add1~127COUT1_181\ = CARRY((\wsh|counter~40_combout\) # ((!\wsh|Add1~122\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~40_combout\,
	cin => \wsh|Add1~122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~125_combout\,
	cout0 => \wsh|Add1~127\,
	cout1 => \wsh|Add1~127COUT1_181\);

-- Location: LC_X5_Y5_N6
\wsh|counter[26]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[26]~COMBOUT\ = (\wsh|process_0~0_combout\ & (\wsh|Add1~125_combout\)) # (!\wsh|process_0~0_combout\ & (((\wsh|counter~40_combout\))))
-- \wsh|counter\(26) = DFFEAS(\wsh|counter[26]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~45_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|Add1~125_combout\,
	datab => \wsh|process_0~0_combout\,
	datac => \wsh|Add2~45_combout\,
	datad => \wsh|counter~40_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[26]~COMBOUT\,
	regout => \wsh|counter\(26));

-- Location: LC_X10_Y5_N0
\wsh|Add2~45\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~45_combout\ = (\wsh|counter[26]~COMBOUT\ $ ((\wsh|Add2~42\)))
-- \wsh|Add2~47\ = CARRY(((\wsh|counter[26]~COMBOUT\) # (!\wsh|Add2~42\)))
-- \wsh|Add2~47COUT1_181\ = CARRY(((\wsh|counter[26]~COMBOUT\) # (!\wsh|Add2~42\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[26]~COMBOUT\,
	cin => \wsh|Add2~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~45_combout\,
	cout0 => \wsh|Add2~47\,
	cout1 => \wsh|Add2~47COUT1_181\);

-- Location: LC_X5_Y5_N0
\wsh|Add0~130\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~130_combout\ = \wsh|Add0~127\ $ (((\wsh|counter\(26) & (\wsh|counter~16_combout\))))
-- \wsh|Add0~132\ = CARRY(((\wsh|counter\(26) & \wsh|counter~16_combout\)) # (!\wsh|Add0~127\))
-- \wsh|Add0~132COUT1_181\ = CARRY(((\wsh|counter\(26) & \wsh|counter~16_combout\)) # (!\wsh|Add0~127\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "788f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(26),
	datab => \wsh|counter~16_combout\,
	cin => \wsh|Add0~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~130_combout\,
	cout0 => \wsh|Add0~132\,
	cout1 => \wsh|Add0~132COUT1_181\);

-- Location: LC_X6_Y6_N5
\wsh|counter~41\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~41_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~135_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter~16_combout\ & (\wsh|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|process_0~2_combout\,
	datab => \wsh|counter~16_combout\,
	datac => \wsh|counter\(27),
	datad => \wsh|Add0~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~41_combout\);

-- Location: LC_X6_Y7_N1
\wsh|Add1~130\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~130_combout\ = (\wsh|counter~41_combout\ $ ((!(!\wsh|Add1~122\ & \wsh|Add1~127\) # (\wsh|Add1~122\ & \wsh|Add1~127COUT1_181\))))
-- \wsh|Add1~132\ = CARRY(((!\wsh|counter~41_combout\ & !\wsh|Add1~127\)))
-- \wsh|Add1~132COUT1_182\ = CARRY(((!\wsh|counter~41_combout\ & !\wsh|Add1~127COUT1_181\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~41_combout\,
	cin => \wsh|Add1~122\,
	cin0 => \wsh|Add1~127\,
	cin1 => \wsh|Add1~127COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~130_combout\,
	cout0 => \wsh|Add1~132\,
	cout1 => \wsh|Add1~132COUT1_182\);

-- Location: LC_X6_Y7_N7
\wsh|counter[27]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[27]~COMBOUT\ = (\wsh|process_0~0_combout\ & (((\wsh|Add1~130_combout\)))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~41_combout\))
-- \wsh|counter\(27) = DFFEAS(\wsh|counter[27]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~50_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|counter~41_combout\,
	datab => \wsh|process_0~0_combout\,
	datac => \wsh|Add2~50_combout\,
	datad => \wsh|Add1~130_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[27]~COMBOUT\,
	regout => \wsh|counter\(27));

-- Location: LC_X10_Y5_N1
\wsh|Add2~50\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~50_combout\ = (\wsh|counter[27]~COMBOUT\ $ ((!(!\wsh|Add2~42\ & \wsh|Add2~47\) # (\wsh|Add2~42\ & \wsh|Add2~47COUT1_181\))))
-- \wsh|Add2~52\ = CARRY(((!\wsh|counter[27]~COMBOUT\ & !\wsh|Add2~47\)))
-- \wsh|Add2~52COUT1_182\ = CARRY(((!\wsh|counter[27]~COMBOUT\ & !\wsh|Add2~47COUT1_181\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[27]~COMBOUT\,
	cin => \wsh|Add2~42\,
	cin0 => \wsh|Add2~47\,
	cin1 => \wsh|Add2~47COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~50_combout\,
	cout0 => \wsh|Add2~52\,
	cout1 => \wsh|Add2~52COUT1_182\);

-- Location: LC_X5_Y5_N1
\wsh|Add0~135\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~135_combout\ = (!\wsh|Add0~127\ & \wsh|Add0~132\) # (\wsh|Add0~127\ & \wsh|Add0~132COUT1_181\) $ ((((!\wsh|counter~16_combout\)) # (!\wsh|counter\(27))))
-- \wsh|Add0~137\ = CARRY((!\wsh|Add0~132\ & ((!\wsh|counter~16_combout\) # (!\wsh|counter\(27)))))
-- \wsh|Add0~137COUT1_182\ = CARRY((!\wsh|Add0~132COUT1_181\ & ((!\wsh|counter~16_combout\) # (!\wsh|counter\(27)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8707",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(27),
	datab => \wsh|counter~16_combout\,
	cin => \wsh|Add0~127\,
	cin0 => \wsh|Add0~132\,
	cin1 => \wsh|Add0~132COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~135_combout\,
	cout0 => \wsh|Add0~137\,
	cout1 => \wsh|Add0~137COUT1_182\);

-- Location: LC_X5_Y5_N9
\wsh|Equal3~8\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal3~8_combout\ = (!\wsh|Add0~125_combout\ & (!\wsh|Add0~120_combout\ & (!\wsh|Add0~130_combout\ & !\wsh|Add0~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add0~125_combout\,
	datab => \wsh|Add0~120_combout\,
	datac => \wsh|Add0~130_combout\,
	datad => \wsh|Add0~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal3~8_combout\);

-- Location: LC_X2_Y5_N1
\wsh|Equal3~0\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal3~0_combout\ = (!\wsh|Add0~0_combout\ & (!\wsh|Add0~15_combout\ & (!\wsh|Add0~5_combout\ & !\wsh|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add0~0_combout\,
	datab => \wsh|Add0~15_combout\,
	datac => \wsh|Add0~5_combout\,
	datad => \wsh|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal3~0_combout\);

-- Location: LC_X2_Y5_N2
\wsh|Equal3~3\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal3~3_combout\ = (!\wsh|Add0~60_combout\ & (!\wsh|Add0~70_combout\ & (!\wsh|Add0~75_combout\ & !\wsh|Add0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add0~60_combout\,
	datab => \wsh|Add0~70_combout\,
	datac => \wsh|Add0~75_combout\,
	datad => \wsh|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal3~3_combout\);

-- Location: LC_X2_Y7_N0
\wsh|Equal3~2\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal3~2_combout\ = (!\wsh|Add0~50_combout\ & (!\wsh|Add0~55_combout\ & (!\wsh|Add0~45_combout\ & !\wsh|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add0~50_combout\,
	datab => \wsh|Add0~55_combout\,
	datac => \wsh|Add0~45_combout\,
	datad => \wsh|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal3~2_combout\);

-- Location: LC_X2_Y7_N8
\wsh|Equal3~1\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal3~1_combout\ = (!\wsh|Add0~20_combout\ & (!\wsh|Add0~35_combout\ & (!\wsh|Add0~30_combout\ & !\wsh|Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add0~20_combout\,
	datab => \wsh|Add0~35_combout\,
	datac => \wsh|Add0~30_combout\,
	datad => \wsh|Add0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal3~1_combout\);

-- Location: LC_X2_Y7_N9
\wsh|Equal3~4\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal3~4_combout\ = (\wsh|Equal3~0_combout\ & (\wsh|Equal3~3_combout\ & (\wsh|Equal3~2_combout\ & \wsh|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Equal3~0_combout\,
	datab => \wsh|Equal3~3_combout\,
	datac => \wsh|Equal3~2_combout\,
	datad => \wsh|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal3~4_combout\);

-- Location: LC_X6_Y6_N1
\wsh|counter~44\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~44_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~150_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter\(30) & (\wsh|counter~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|process_0~2_combout\,
	datab => \wsh|counter\(30),
	datac => \wsh|counter~16_combout\,
	datad => \wsh|Add0~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~44_combout\);

-- Location: LC_X6_Y7_N2
\wsh|Add1~135\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~135_combout\ = (\wsh|counter~42_combout\ $ (((!\wsh|Add1~122\ & \wsh|Add1~132\) # (\wsh|Add1~122\ & \wsh|Add1~132COUT1_182\))))
-- \wsh|Add1~137\ = CARRY(((\wsh|counter~42_combout\) # (!\wsh|Add1~132\)))
-- \wsh|Add1~137COUT1_183\ = CARRY(((\wsh|counter~42_combout\) # (!\wsh|Add1~132COUT1_182\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~42_combout\,
	cin => \wsh|Add1~122\,
	cin0 => \wsh|Add1~132\,
	cin1 => \wsh|Add1~132COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~135_combout\,
	cout0 => \wsh|Add1~137\,
	cout1 => \wsh|Add1~137COUT1_183\);

-- Location: LC_X10_Y5_N9
\wsh|counter[28]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[28]~COMBOUT\ = (\wsh|process_0~0_combout\ & (((\wsh|Add1~135_combout\)))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~42_combout\))
-- \wsh|counter\(28) = DFFEAS(\wsh|counter[28]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~55_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|process_0~0_combout\,
	datab => \wsh|counter~42_combout\,
	datac => \wsh|Add2~55_combout\,
	datad => \wsh|Add1~135_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[28]~COMBOUT\,
	regout => \wsh|counter\(28));

-- Location: LC_X10_Y5_N2
\wsh|Add2~55\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~55_combout\ = (\wsh|counter[28]~COMBOUT\ $ (((!\wsh|Add2~42\ & \wsh|Add2~52\) # (\wsh|Add2~42\ & \wsh|Add2~52COUT1_182\))))
-- \wsh|Add2~57\ = CARRY(((\wsh|counter[28]~COMBOUT\) # (!\wsh|Add2~52\)))
-- \wsh|Add2~57COUT1_183\ = CARRY(((\wsh|counter[28]~COMBOUT\) # (!\wsh|Add2~52COUT1_182\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[28]~COMBOUT\,
	cin => \wsh|Add2~42\,
	cin0 => \wsh|Add2~52\,
	cin1 => \wsh|Add2~52COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~55_combout\,
	cout0 => \wsh|Add2~57\,
	cout1 => \wsh|Add2~57COUT1_183\);

-- Location: LC_X5_Y5_N2
\wsh|Add0~140\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~140_combout\ = (!\wsh|Add0~127\ & \wsh|Add0~137\) # (\wsh|Add0~127\ & \wsh|Add0~137COUT1_182\) $ (((\wsh|counter\(28) & (\wsh|counter~16_combout\))))
-- \wsh|Add0~142\ = CARRY(((\wsh|counter\(28) & \wsh|counter~16_combout\)) # (!\wsh|Add0~137\))
-- \wsh|Add0~142COUT1_183\ = CARRY(((\wsh|counter\(28) & \wsh|counter~16_combout\)) # (!\wsh|Add0~137COUT1_182\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "788f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(28),
	datab => \wsh|counter~16_combout\,
	cin => \wsh|Add0~127\,
	cin0 => \wsh|Add0~137\,
	cin1 => \wsh|Add0~137COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~140_combout\,
	cout0 => \wsh|Add0~142\,
	cout1 => \wsh|Add0~142COUT1_183\);

-- Location: LC_X6_Y6_N0
\wsh|counter~42\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~42_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~140_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter\(28) & (\wsh|counter~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|process_0~2_combout\,
	datab => \wsh|counter\(28),
	datac => \wsh|counter~16_combout\,
	datad => \wsh|Add0~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~42_combout\);

-- Location: LC_X6_Y7_N3
\wsh|Add1~140\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~140_combout\ = (\wsh|counter~43_combout\ $ ((!(!\wsh|Add1~122\ & \wsh|Add1~137\) # (\wsh|Add1~122\ & \wsh|Add1~137COUT1_183\))))
-- \wsh|Add1~142\ = CARRY(((!\wsh|counter~43_combout\ & !\wsh|Add1~137\)))
-- \wsh|Add1~142COUT1_184\ = CARRY(((!\wsh|counter~43_combout\ & !\wsh|Add1~137COUT1_183\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~43_combout\,
	cin => \wsh|Add1~122\,
	cin0 => \wsh|Add1~137\,
	cin1 => \wsh|Add1~137COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~140_combout\,
	cout0 => \wsh|Add1~142\,
	cout1 => \wsh|Add1~142COUT1_184\);

-- Location: LC_X10_Y7_N5
\wsh|counter[29]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[29]~COMBOUT\ = (\wsh|process_0~0_combout\ & (((\wsh|Add1~140_combout\)))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~43_combout\))
-- \wsh|counter\(29) = DFFEAS(\wsh|counter[29]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~60_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|process_0~0_combout\,
	datab => \wsh|counter~43_combout\,
	datac => \wsh|Add2~60_combout\,
	datad => \wsh|Add1~140_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[29]~COMBOUT\,
	regout => \wsh|counter\(29));

-- Location: LC_X10_Y5_N3
\wsh|Add2~60\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~60_combout\ = \wsh|counter[29]~COMBOUT\ $ ((((!(!\wsh|Add2~42\ & \wsh|Add2~57\) # (\wsh|Add2~42\ & \wsh|Add2~57COUT1_183\)))))
-- \wsh|Add2~62\ = CARRY((!\wsh|counter[29]~COMBOUT\ & ((!\wsh|Add2~57\))))
-- \wsh|Add2~62COUT1_184\ = CARRY((!\wsh|counter[29]~COMBOUT\ & ((!\wsh|Add2~57COUT1_183\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter[29]~COMBOUT\,
	cin => \wsh|Add2~42\,
	cin0 => \wsh|Add2~57\,
	cin1 => \wsh|Add2~57COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~60_combout\,
	cout0 => \wsh|Add2~62\,
	cout1 => \wsh|Add2~62COUT1_184\);

-- Location: LC_X5_Y5_N3
\wsh|Add0~145\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~145_combout\ = (!\wsh|Add0~127\ & \wsh|Add0~142\) # (\wsh|Add0~127\ & \wsh|Add0~142COUT1_183\) $ ((((!\wsh|counter\(29))) # (!\wsh|counter~16_combout\)))
-- \wsh|Add0~147\ = CARRY((!\wsh|Add0~142\ & ((!\wsh|counter\(29)) # (!\wsh|counter~16_combout\))))
-- \wsh|Add0~147COUT1_184\ = CARRY((!\wsh|Add0~142COUT1_183\ & ((!\wsh|counter\(29)) # (!\wsh|counter~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8707",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~16_combout\,
	datab => \wsh|counter\(29),
	cin => \wsh|Add0~127\,
	cin0 => \wsh|Add0~142\,
	cin1 => \wsh|Add0~142COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~145_combout\,
	cout0 => \wsh|Add0~147\,
	cout1 => \wsh|Add0~147COUT1_184\);

-- Location: LC_X8_Y7_N9
\wsh|counter~43\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~43_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~145_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter\(29) & (\wsh|counter~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|process_0~2_combout\,
	datab => \wsh|counter\(29),
	datac => \wsh|counter~16_combout\,
	datad => \wsh|Add0~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~43_combout\);

-- Location: LC_X6_Y7_N4
\wsh|Add1~145\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~145_combout\ = \wsh|counter~44_combout\ $ (((((!\wsh|Add1~122\ & \wsh|Add1~142\) # (\wsh|Add1~122\ & \wsh|Add1~142COUT1_184\)))))
-- \wsh|Add1~147\ = CARRY((\wsh|counter~44_combout\) # ((!\wsh|Add1~142COUT1_184\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~44_combout\,
	cin => \wsh|Add1~122\,
	cin0 => \wsh|Add1~142\,
	cin1 => \wsh|Add1~142COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~145_combout\,
	cout => \wsh|Add1~147\);

-- Location: LC_X11_Y5_N5
\wsh|counter[30]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[30]~COMBOUT\ = (\wsh|process_0~0_combout\ & (((\wsh|Add1~145_combout\)))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~44_combout\))
-- \wsh|counter\(30) = DFFEAS(\wsh|counter[30]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~65_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|counter~44_combout\,
	datab => \wsh|process_0~0_combout\,
	datac => \wsh|Add2~65_combout\,
	datad => \wsh|Add1~145_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[30]~COMBOUT\,
	regout => \wsh|counter\(30));

-- Location: LC_X10_Y5_N4
\wsh|Add2~65\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~65_combout\ = (\wsh|counter[30]~COMBOUT\ $ (((!\wsh|Add2~42\ & \wsh|Add2~62\) # (\wsh|Add2~42\ & \wsh|Add2~62COUT1_184\))))
-- \wsh|Add2~67\ = CARRY(((\wsh|counter[30]~COMBOUT\) # (!\wsh|Add2~62COUT1_184\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[30]~COMBOUT\,
	cin => \wsh|Add2~42\,
	cin0 => \wsh|Add2~62\,
	cin1 => \wsh|Add2~62COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~65_combout\,
	cout => \wsh|Add2~67\);

-- Location: LC_X5_Y5_N4
\wsh|Add0~150\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~150_combout\ = (!\wsh|Add0~127\ & \wsh|Add0~147\) # (\wsh|Add0~127\ & \wsh|Add0~147COUT1_184\) $ (((\wsh|counter~16_combout\ & (\wsh|counter\(30)))))
-- \wsh|Add0~152\ = CARRY(((\wsh|counter~16_combout\ & \wsh|counter\(30))) # (!\wsh|Add0~147COUT1_184\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "788f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~16_combout\,
	datab => \wsh|counter\(30),
	cin => \wsh|Add0~127\,
	cin0 => \wsh|Add0~147\,
	cin1 => \wsh|Add0~147COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~150_combout\,
	cout => \wsh|Add0~152\);

-- Location: LC_X6_Y6_N6
\wsh|counter~45\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~45_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~155_combout\)))) # (!\wsh|process_0~2_combout\ & (!\wsh|counter\(31) & (\wsh|counter~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(31),
	datab => \wsh|counter~16_combout\,
	datac => \wsh|process_0~2_combout\,
	datad => \wsh|Add0~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~45_combout\);

-- Location: LC_X6_Y7_N5
\wsh|Add1~150\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~150_combout\ = ((\wsh|Add1~147\ $ (!\wsh|counter~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \wsh|counter~45_combout\,
	cin => \wsh|Add1~147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~150_combout\);

-- Location: LC_X6_Y6_N7
\wsh|counter~47\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~47_combout\ = ((\wsh|process_0~0_combout\ & ((\wsh|Add1~150_combout\))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|process_0~0_combout\,
	datac => \wsh|counter~45_combout\,
	datad => \wsh|Add1~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~47_combout\);

-- Location: LC_X10_Y5_N5
\wsh|Add2~70\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~70_combout\ = ((\wsh|Add2~67\ $ (!\wsh|counter~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \wsh|counter~47_combout\,
	cin => \wsh|Add2~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~70_combout\);

-- Location: LC_X6_Y6_N8
\wsh|counter[31]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter\(31) = DFFEAS((\wsh|curState~13_combout\ & ((\wsh|curState~0_combout\ & (!\wsh|counter~47_combout\)) # (!\wsh|curState~0_combout\ & ((!\wsh|Add2~70_combout\))))) # (!\wsh|curState~13_combout\ & (((!\wsh|counter~47_combout\)))), 
-- GLOBAL(\clk|clk_out_sig~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d2f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|curState~13_combout\,
	datab => \wsh|curState~0_combout\,
	datac => \wsh|counter~47_combout\,
	datad => \wsh|Add2~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wsh|counter\(31));

-- Location: LC_X5_Y5_N5
\wsh|Add0~155\ : maxv_lcell
-- Equation(s):
-- \wsh|Add0~155_combout\ = (\wsh|Add0~152\ $ (((\wsh|counter\(31)) # (!\wsh|counter~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0fc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~16_combout\,
	datad => \wsh|counter\(31),
	cin => \wsh|Add0~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add0~155_combout\);

-- Location: LC_X5_Y5_N8
\wsh|Equal3~9\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal3~9_combout\ = (!\wsh|Add0~150_combout\ & (!\wsh|Add0~140_combout\ & (!\wsh|Add0~155_combout\ & !\wsh|Add0~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add0~150_combout\,
	datab => \wsh|Add0~140_combout\,
	datac => \wsh|Add0~155_combout\,
	datad => \wsh|Add0~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal3~9_combout\);

-- Location: LC_X1_Y5_N4
\wsh|Equal3~5\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal3~5_combout\ = (!\wsh|Add0~95_combout\ & (!\wsh|Add0~90_combout\ & (!\wsh|Add0~85_combout\ & !\wsh|Add0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add0~95_combout\,
	datab => \wsh|Add0~90_combout\,
	datac => \wsh|Add0~85_combout\,
	datad => \wsh|Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal3~5_combout\);

-- Location: LC_X1_Y5_N0
\wsh|Equal3~6\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal3~6_combout\ = (((!\wsh|Add0~100_combout\ & !\wsh|Add0~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \wsh|Add0~100_combout\,
	datad => \wsh|Add0~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal3~6_combout\);

-- Location: LC_X1_Y5_N1
\wsh|Equal3~7\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal3~7_combout\ = (!\wsh|Add0~110_combout\ & (!\wsh|Add0~115_combout\ & (\wsh|Equal3~5_combout\ & \wsh|Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add0~110_combout\,
	datab => \wsh|Add0~115_combout\,
	datac => \wsh|Equal3~5_combout\,
	datad => \wsh|Equal3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal3~7_combout\);

-- Location: LC_X2_Y7_N4
\wsh|Equal3~10\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal3~10_combout\ = (\wsh|Equal3~8_combout\ & (\wsh|Equal3~4_combout\ & (\wsh|Equal3~9_combout\ & \wsh|Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Equal3~8_combout\,
	datab => \wsh|Equal3~4_combout\,
	datac => \wsh|Equal3~9_combout\,
	datad => \wsh|Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal3~10_combout\);

-- Location: LC_X2_Y7_N1
\wsh|counter~5\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~5_combout\ = (\wsh|Add0~0_combout\) # ((!\userProg~combout\(3) & (\wsh|Equal3~10_combout\ & \wsh|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "baaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add0~0_combout\,
	datab => \userProg~combout\(3),
	datac => \wsh|Equal3~10_combout\,
	datad => \wsh|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~5_combout\);

-- Location: LC_X2_Y7_N2
\wsh|counter~8\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~8_combout\ = (!\reset~combout\ & ((\driver|SEV_SEG_DATA[5]~4_combout\ & ((\wsh|counter~5_combout\))) # (!\driver|SEV_SEG_DATA[5]~4_combout\ & (\wsh|counter~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \wsh|counter~7_combout\,
	datac => \driver|SEV_SEG_DATA[5]~4_combout\,
	datad => \wsh|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~8_combout\);

-- Location: LC_X3_Y7_N4
\wsh|Add1~157\ : maxv_lcell
-- Equation(s):
-- \wsh|Add1~157_cout\ = CARRY(((\wsh|counter~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add1~155\,
	cout => \wsh|Add1~157_cout\);

-- Location: LC_X7_Y7_N5
\wsh|Equal5~10\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal5~10_combout\ = (\wsh|counter~8_combout\ & (((\wsh|Equal5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~8_combout\,
	datad => \wsh|Equal5~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal5~10_combout\);

-- Location: LC_X7_Y7_N6
\wsh|counter~48\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~48_combout\ = (\wsh|Add1~0_combout\) # ((\wsh|Mux7~0_combout\ & (!\userProg~combout\(3) & \wsh|Equal5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cecc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Mux7~0_combout\,
	datab => \wsh|Add1~0_combout\,
	datac => \userProg~combout\(3),
	datad => \wsh|Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~48_combout\);

-- Location: LC_X7_Y5_N2
\wsh|counter[1]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[1]~COMBOUT\ = (\wsh|process_0~0_combout\ & (((\wsh|counter~48_combout\)))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~11_combout\))
-- \wsh|counter\(1) = DFFEAS(\wsh|counter[1]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~75_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|counter~11_combout\,
	datab => \wsh|process_0~0_combout\,
	datac => \wsh|Add2~75_combout\,
	datad => \wsh|counter~48_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[1]~COMBOUT\,
	regout => \wsh|counter\(1));

-- Location: LC_X2_Y5_N3
\wsh|counter~10\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~10_combout\ = (\driver|Equal1~0_combout\ & (((\wsh|counter\(1))))) # (!\driver|Equal1~0_combout\ & ((\wsh|counter~53_combout\) # ((\wsh|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccfa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~53_combout\,
	datab => \wsh|counter\(1),
	datac => \wsh|Mux1~1_combout\,
	datad => \driver|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~10_combout\);

-- Location: LC_X3_Y7_N1
\wsh|counter~52\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~52_combout\ = (\wsh|Add0~5_combout\) # ((\wsh|Mux4~0_combout\ & (!\userProg~combout\(4) & \wsh|Equal3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Mux4~0_combout\,
	datab => \userProg~combout\(4),
	datac => \wsh|Add0~5_combout\,
	datad => \wsh|Equal3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~52_combout\);

-- Location: LC_X3_Y7_N2
\wsh|counter~11\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~11_combout\ = (!\reset~combout\ & ((\driver|SEV_SEG_DATA[5]~4_combout\ & ((\wsh|counter~52_combout\))) # (!\driver|SEV_SEG_DATA[5]~4_combout\ & (\wsh|counter~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~10_combout\,
	datab => \reset~combout\,
	datac => \driver|SEV_SEG_DATA[5]~4_combout\,
	datad => \wsh|counter~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~11_combout\);

-- Location: LC_X7_Y5_N6
\wsh|Add2~80\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~80_combout\ = (\wsh|counter[2]~COMBOUT\ $ (((!\wsh|Add2~157_cout\ & \wsh|Add2~77\) # (\wsh|Add2~157_cout\ & \wsh|Add2~77COUT1_161\))))
-- \wsh|Add2~82\ = CARRY(((\wsh|counter[2]~COMBOUT\) # (!\wsh|Add2~77\)))
-- \wsh|Add2~82COUT1_162\ = CARRY(((\wsh|counter[2]~COMBOUT\) # (!\wsh|Add2~77COUT1_161\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[2]~COMBOUT\,
	cin => \wsh|Add2~157_cout\,
	cin0 => \wsh|Add2~77\,
	cin1 => \wsh|Add2~77COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~80_combout\,
	cout0 => \wsh|Add2~82\,
	cout1 => \wsh|Add2~82COUT1_162\);

-- Location: LC_X9_Y7_N9
\wsh|counter~49\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~49_combout\ = (((!\userProg~combout\(3) & \userProg~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \userProg~combout\(3),
	datad => \userProg~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~49_combout\);

-- Location: LC_X7_Y5_N0
\wsh|counter~50\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~50_combout\ = (\wsh|Add1~5_combout\) # ((\wsh|Mux1~0_combout\ & (\wsh|counter~49_combout\ & \wsh|Equal5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Mux1~0_combout\,
	datab => \wsh|counter~49_combout\,
	datac => \wsh|Add1~5_combout\,
	datad => \wsh|Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~50_combout\);

-- Location: LC_X7_Y5_N1
\wsh|counter[2]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[2]~COMBOUT\ = (\wsh|process_0~0_combout\ & (((\wsh|counter~50_combout\)))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~15_combout\))
-- \wsh|counter\(2) = DFFEAS(\wsh|counter[2]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~80_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|process_0~0_combout\,
	datab => \wsh|counter~15_combout\,
	datac => \wsh|Add2~80_combout\,
	datad => \wsh|counter~50_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[2]~COMBOUT\,
	regout => \wsh|counter\(2));

-- Location: LC_X1_Y5_N3
\wsh|counter~14\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~14_combout\ = (\driver|Equal1~0_combout\ & (((\wsh|counter\(2))))) # (!\driver|Equal1~0_combout\ & (\wsh|counter~13_combout\ & (!\userProg~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~13_combout\,
	datab => \userProg~combout\(3),
	datac => \wsh|counter\(2),
	datad => \driver|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~14_combout\);

-- Location: LC_X2_Y7_N5
\wsh|counter~12\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~12_combout\ = (\wsh|Add0~10_combout\) # ((!\userProg~combout\(3) & (\wsh|Mux5~0_combout\ & \wsh|Equal3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "baaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add0~10_combout\,
	datab => \userProg~combout\(3),
	datac => \wsh|Mux5~0_combout\,
	datad => \wsh|Equal3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~12_combout\);

-- Location: LC_X2_Y7_N6
\wsh|counter~15\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~15_combout\ = (!\reset~combout\ & ((\driver|SEV_SEG_DATA[5]~4_combout\ & ((\wsh|counter~12_combout\))) # (!\driver|SEV_SEG_DATA[5]~4_combout\ & (\wsh|counter~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \wsh|counter~14_combout\,
	datac => \driver|SEV_SEG_DATA[5]~4_combout\,
	datad => \wsh|counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~15_combout\);

-- Location: LC_X7_Y5_N7
\wsh|Add2~85\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~85_combout\ = (\wsh|counter[3]~COMBOUT\ $ ((!(!\wsh|Add2~157_cout\ & \wsh|Add2~82\) # (\wsh|Add2~157_cout\ & \wsh|Add2~82COUT1_162\))))
-- \wsh|Add2~87\ = CARRY(((!\wsh|counter[3]~COMBOUT\ & !\wsh|Add2~82\)))
-- \wsh|Add2~87COUT1_163\ = CARRY(((!\wsh|counter[3]~COMBOUT\ & !\wsh|Add2~82COUT1_162\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[3]~COMBOUT\,
	cin => \wsh|Add2~157_cout\,
	cin0 => \wsh|Add2~82\,
	cin1 => \wsh|Add2~82COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~85_combout\,
	cout0 => \wsh|Add2~87\,
	cout1 => \wsh|Add2~87COUT1_163\);

-- Location: LC_X2_Y5_N0
\wsh|counter[3]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[3]~COMBOUT\ = (\wsh|process_0~0_combout\ & (((\wsh|Add1~10_combout\)))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~17_combout\))
-- \wsh|counter\(3) = DFFEAS(\wsh|counter[3]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~85_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|process_0~0_combout\,
	datab => \wsh|counter~17_combout\,
	datac => \wsh|Add2~85_combout\,
	datad => \wsh|Add1~10_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[3]~COMBOUT\,
	regout => \wsh|counter\(3));

-- Location: LC_X3_Y7_N0
\wsh|counter~17\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~17_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~15_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter~16_combout\ & (\wsh|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~16_combout\,
	datab => \wsh|counter\(3),
	datac => \wsh|process_0~2_combout\,
	datad => \wsh|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~17_combout\);

-- Location: LC_X7_Y5_N8
\wsh|Add2~90\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~90_combout\ = (\wsh|counter[4]~COMBOUT\ $ (((!\wsh|Add2~157_cout\ & \wsh|Add2~87\) # (\wsh|Add2~157_cout\ & \wsh|Add2~87COUT1_163\))))
-- \wsh|Add2~92\ = CARRY(((\wsh|counter[4]~COMBOUT\) # (!\wsh|Add2~87\)))
-- \wsh|Add2~92COUT1_164\ = CARRY(((\wsh|counter[4]~COMBOUT\) # (!\wsh|Add2~87COUT1_163\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[4]~COMBOUT\,
	cin => \wsh|Add2~157_cout\,
	cin0 => \wsh|Add2~87\,
	cin1 => \wsh|Add2~87COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~90_combout\,
	cout0 => \wsh|Add2~92\,
	cout1 => \wsh|Add2~92COUT1_164\);

-- Location: LC_X7_Y6_N5
\wsh|counter[4]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[4]~COMBOUT\ = ((\wsh|process_0~0_combout\ & (\wsh|Add1~15_combout\)) # (!\wsh|process_0~0_combout\ & ((\wsh|counter~18_combout\))))
-- \wsh|counter\(4) = DFFEAS(\wsh|counter[4]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~90_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|Add1~15_combout\,
	datab => \wsh|counter~18_combout\,
	datac => \wsh|Add2~90_combout\,
	datad => \wsh|process_0~0_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[4]~COMBOUT\,
	regout => \wsh|counter\(4));

-- Location: LC_X2_Y7_N7
\wsh|counter~18\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~18_combout\ = (\wsh|process_0~2_combout\ & (\wsh|Add0~20_combout\)) # (!\wsh|process_0~2_combout\ & (((\wsh|counter~16_combout\ & \wsh|counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add0~20_combout\,
	datab => \wsh|counter~16_combout\,
	datac => \wsh|counter\(4),
	datad => \wsh|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~18_combout\);

-- Location: LC_X7_Y5_N9
\wsh|Add2~95\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~95_combout\ = (\wsh|counter[5]~COMBOUT\ $ ((!(!\wsh|Add2~157_cout\ & \wsh|Add2~92\) # (\wsh|Add2~157_cout\ & \wsh|Add2~92COUT1_164\))))
-- \wsh|Add2~97\ = CARRY(((!\wsh|counter[5]~COMBOUT\ & !\wsh|Add2~92COUT1_164\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[5]~COMBOUT\,
	cin => \wsh|Add2~157_cout\,
	cin0 => \wsh|Add2~92\,
	cin1 => \wsh|Add2~92COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~95_combout\,
	cout => \wsh|Add2~97\);

-- Location: LC_X2_Y6_N6
\wsh|counter[5]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[5]~COMBOUT\ = (\wsh|process_0~0_combout\ & (((\wsh|Add1~20_combout\)))) # (!\wsh|process_0~0_combout\ & (\wsh|counter~19_combout\))
-- \wsh|counter\(5) = DFFEAS(\wsh|counter[5]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~95_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|process_0~0_combout\,
	datab => \wsh|counter~19_combout\,
	datac => \wsh|Add2~95_combout\,
	datad => \wsh|Add1~20_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[5]~COMBOUT\,
	regout => \wsh|counter\(5));

-- Location: LC_X2_Y6_N5
\wsh|counter~19\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~19_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~25_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter\(5) & ((\wsh|counter~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|process_0~2_combout\,
	datab => \wsh|counter\(5),
	datac => \wsh|Add0~25_combout\,
	datad => \wsh|counter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~19_combout\);

-- Location: LC_X8_Y5_N4
\wsh|Add2~120\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~120_combout\ = \wsh|counter[10]~COMBOUT\ $ (((((!\wsh|Add2~97\ & \wsh|Add2~117\) # (\wsh|Add2~97\ & \wsh|Add2~117COUT1_168\)))))
-- \wsh|Add2~122\ = CARRY((\wsh|counter[10]~COMBOUT\) # ((!\wsh|Add2~117COUT1_168\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter[10]~COMBOUT\,
	cin => \wsh|Add2~97\,
	cin0 => \wsh|Add2~117\,
	cin1 => \wsh|Add2~117COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~120_combout\,
	cout => \wsh|Add2~122\);

-- Location: LC_X4_Y6_N3
\wsh|counter[10]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[10]~COMBOUT\ = (\wsh|process_0~0_combout\ & (\wsh|Add1~45_combout\)) # (!\wsh|process_0~0_combout\ & (((\wsh|counter~24_combout\))))
-- \wsh|counter\(10) = DFFEAS(\wsh|counter[10]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~120_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|Add1~45_combout\,
	datab => \wsh|process_0~0_combout\,
	datac => \wsh|Add2~120_combout\,
	datad => \wsh|counter~24_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[10]~COMBOUT\,
	regout => \wsh|counter\(10));

-- Location: LC_X3_Y6_N6
\wsh|counter~24\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~24_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~50_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter~16_combout\ & (\wsh|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~16_combout\,
	datab => \wsh|process_0~2_combout\,
	datac => \wsh|counter\(10),
	datad => \wsh|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~24_combout\);

-- Location: LC_X8_Y5_N9
\wsh|Add2~145\ : maxv_lcell
-- Equation(s):
-- \wsh|Add2~145_combout\ = (\wsh|counter[15]~COMBOUT\ $ ((!(!\wsh|Add2~122\ & \wsh|Add2~142\) # (\wsh|Add2~122\ & \wsh|Add2~142COUT1_172\))))
-- \wsh|Add2~147\ = CARRY(((!\wsh|counter[15]~COMBOUT\ & !\wsh|Add2~142COUT1_172\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wsh|counter[15]~COMBOUT\,
	cin => \wsh|Add2~122\,
	cin0 => \wsh|Add2~142\,
	cin1 => \wsh|Add2~142COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Add2~145_combout\,
	cout => \wsh|Add2~147\);

-- Location: LC_X3_Y6_N1
\wsh|counter[15]\ : maxv_lcell
-- Equation(s):
-- \wsh|counter[15]~COMBOUT\ = ((\wsh|process_0~0_combout\ & (\wsh|Add1~70_combout\)) # (!\wsh|process_0~0_combout\ & ((\wsh|counter~29_combout\))))
-- \wsh|counter\(15) = DFFEAS(\wsh|counter[15]~COMBOUT\, GLOBAL(\clk|clk_out_sig~regout\), VCC, , , \wsh|Add2~145_combout\, , , \wsh|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|Add1~70_combout\,
	datab => \wsh|counter~29_combout\,
	datac => \wsh|Add2~145_combout\,
	datad => \wsh|process_0~0_combout\,
	aclr => GND,
	sload => \wsh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter[15]~COMBOUT\,
	regout => \wsh|counter\(15));

-- Location: LC_X3_Y6_N0
\wsh|counter~29\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~29_combout\ = (\wsh|process_0~2_combout\ & (\wsh|Add0~75_combout\)) # (!\wsh|process_0~2_combout\ & (((\wsh|counter\(15) & \wsh|counter~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add0~75_combout\,
	datab => \wsh|process_0~2_combout\,
	datac => \wsh|counter\(15),
	datad => \wsh|counter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~29_combout\);

-- Location: LC_X4_Y6_N7
\wsh|counter~31\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~31_combout\ = (\wsh|process_0~2_combout\ & (((\wsh|Add0~85_combout\)))) # (!\wsh|process_0~2_combout\ & (\wsh|counter~16_combout\ & (\wsh|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~16_combout\,
	datab => \wsh|process_0~2_combout\,
	datac => \wsh|counter\(17),
	datad => \wsh|Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~31_combout\);

-- Location: LC_X6_Y7_N9
\wsh|Equal5~5\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal5~5_combout\ = (!\wsh|Add1~80_combout\ & (!\wsh|Add1~85_combout\ & (!\wsh|Add1~95_combout\ & !\wsh|Add1~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add1~80_combout\,
	datab => \wsh|Add1~85_combout\,
	datac => \wsh|Add1~95_combout\,
	datad => \wsh|Add1~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal5~5_combout\);

-- Location: LC_X7_Y7_N7
\wsh|Equal5~6\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal5~6_combout\ = (!\wsh|Add1~100_combout\ & (!\wsh|Add1~115_combout\ & (!\wsh|Add1~105_combout\ & !\wsh|Add1~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add1~100_combout\,
	datab => \wsh|Add1~115_combout\,
	datac => \wsh|Add1~105_combout\,
	datad => \wsh|Add1~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal5~6_combout\);

-- Location: LC_X6_Y7_N8
\wsh|Equal5~7\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal5~7_combout\ = (!\wsh|Add1~120_combout\ & (!\wsh|Add1~130_combout\ & (!\wsh|Add1~125_combout\ & !\wsh|Add1~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add1~120_combout\,
	datab => \wsh|Add1~130_combout\,
	datac => \wsh|Add1~125_combout\,
	datad => \wsh|Add1~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal5~7_combout\);

-- Location: LC_X6_Y7_N6
\wsh|Equal5~8\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal5~8_combout\ = (!\wsh|Add1~140_combout\ & (!\wsh|Add1~145_combout\ & (!\wsh|Add1~150_combout\ & \wsh|Equal5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add1~140_combout\,
	datab => \wsh|Add1~145_combout\,
	datac => \wsh|Add1~150_combout\,
	datad => \wsh|Equal5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal5~8_combout\);

-- Location: LC_X3_Y7_N3
\wsh|Equal5~0\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal5~0_combout\ = (!\wsh|Add1~5_combout\ & (!\wsh|Add1~10_combout\ & (!\wsh|Add1~0_combout\ & !\wsh|Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add1~5_combout\,
	datab => \wsh|Add1~10_combout\,
	datac => \wsh|Add1~0_combout\,
	datad => \wsh|Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal5~0_combout\);

-- Location: LC_X7_Y7_N1
\wsh|Equal5~1\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal5~1_combout\ = (!\wsh|Add1~20_combout\ & (!\wsh|Add1~25_combout\ & (!\wsh|Add1~35_combout\ & !\wsh|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add1~20_combout\,
	datab => \wsh|Add1~25_combout\,
	datac => \wsh|Add1~35_combout\,
	datad => \wsh|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal5~1_combout\);

-- Location: LC_X7_Y7_N4
\wsh|Equal5~3\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal5~3_combout\ = (!\wsh|Add1~65_combout\ & (!\wsh|Add1~60_combout\ & (!\wsh|Add1~75_combout\ & !\wsh|Add1~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add1~65_combout\,
	datab => \wsh|Add1~60_combout\,
	datac => \wsh|Add1~75_combout\,
	datad => \wsh|Add1~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal5~3_combout\);

-- Location: LC_X4_Y6_N0
\wsh|Equal5~2\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal5~2_combout\ = (!\wsh|Add1~50_combout\ & (!\wsh|Add1~55_combout\ & (!\wsh|Add1~40_combout\ & !\wsh|Add1~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add1~50_combout\,
	datab => \wsh|Add1~55_combout\,
	datac => \wsh|Add1~40_combout\,
	datad => \wsh|Add1~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal5~2_combout\);

-- Location: LC_X7_Y7_N2
\wsh|Equal5~4\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal5~4_combout\ = (\wsh|Equal5~0_combout\ & (\wsh|Equal5~1_combout\ & (\wsh|Equal5~3_combout\ & \wsh|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Equal5~0_combout\,
	datab => \wsh|Equal5~1_combout\,
	datac => \wsh|Equal5~3_combout\,
	datad => \wsh|Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal5~4_combout\);

-- Location: LC_X7_Y7_N3
\wsh|Equal5~9\ : maxv_lcell
-- Equation(s):
-- \wsh|Equal5~9_combout\ = (\wsh|Equal5~5_combout\ & (\wsh|Equal5~6_combout\ & (\wsh|Equal5~8_combout\ & \wsh|Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Equal5~5_combout\,
	datab => \wsh|Equal5~6_combout\,
	datac => \wsh|Equal5~8_combout\,
	datad => \wsh|Equal5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Equal5~9_combout\);

-- Location: LC_X7_Y7_N8
\wsh|counter~9\ : maxv_lcell
-- Equation(s):
-- \wsh|counter~9_combout\ = (\wsh|process_0~0_combout\ & (((\wsh|counter~4_combout\ & \wsh|Equal5~9_combout\)) # (!\wsh|counter~8_combout\))) # (!\wsh|process_0~0_combout\ & (((\wsh|counter~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|process_0~0_combout\,
	datab => \wsh|counter~4_combout\,
	datac => \wsh|Equal5~9_combout\,
	datad => \wsh|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|counter~9_combout\);

-- Location: LC_X7_Y5_N3
\wsh|curState~6\ : maxv_lcell
-- Equation(s):
-- \wsh|curState~6_combout\ = (!\wsh|Add2~75_combout\ & (!\wsh|Add2~85_combout\ & (!\wsh|Add2~80_combout\ & !\wsh|Add2~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add2~75_combout\,
	datab => \wsh|Add2~85_combout\,
	datac => \wsh|Add2~80_combout\,
	datad => \wsh|Add2~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|curState~6_combout\);

-- Location: LC_X6_Y5_N9
\wsh|curState~7\ : maxv_lcell
-- Equation(s):
-- \wsh|curState~7_combout\ = (!\wsh|Add2~100_combout\ & (!\wsh|Add2~95_combout\ & (!\wsh|Add2~105_combout\ & !\wsh|Add2~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add2~100_combout\,
	datab => \wsh|Add2~95_combout\,
	datac => \wsh|Add2~105_combout\,
	datad => \wsh|Add2~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|curState~7_combout\);

-- Location: LC_X6_Y5_N0
\wsh|curState~8\ : maxv_lcell
-- Equation(s):
-- \wsh|curState~8_combout\ = (!\wsh|Add2~115_combout\ & (!\wsh|Add2~120_combout\ & (!\wsh|Add2~130_combout\ & !\wsh|Add2~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add2~115_combout\,
	datab => \wsh|Add2~120_combout\,
	datac => \wsh|Add2~130_combout\,
	datad => \wsh|Add2~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|curState~8_combout\);

-- Location: LC_X6_Y5_N4
\wsh|curState~9\ : maxv_lcell
-- Equation(s):
-- \wsh|curState~9_combout\ = (!\wsh|Add2~145_combout\ & (!\wsh|Add2~140_combout\ & (!\wsh|Add2~150_combout\ & !\wsh|Add2~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add2~145_combout\,
	datab => \wsh|Add2~140_combout\,
	datac => \wsh|Add2~150_combout\,
	datad => \wsh|Add2~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|curState~9_combout\);

-- Location: LC_X6_Y5_N5
\wsh|curState~10\ : maxv_lcell
-- Equation(s):
-- \wsh|curState~10_combout\ = (\wsh|curState~6_combout\ & (\wsh|curState~7_combout\ & (\wsh|curState~8_combout\ & \wsh|curState~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|curState~6_combout\,
	datab => \wsh|curState~7_combout\,
	datac => \wsh|curState~8_combout\,
	datad => \wsh|curState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|curState~10_combout\);

-- Location: LC_X10_Y5_N8
\wsh|curState~2\ : maxv_lcell
-- Equation(s):
-- \wsh|curState~2_combout\ = (!\wsh|Add2~35_combout\ & (!\wsh|Add2~30_combout\ & (!\wsh|Add2~25_combout\ & !\wsh|Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add2~35_combout\,
	datab => \wsh|Add2~30_combout\,
	datac => \wsh|Add2~25_combout\,
	datad => \wsh|Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|curState~2_combout\);

-- Location: LC_X5_Y5_N7
\wsh|curState~1\ : maxv_lcell
-- Equation(s):
-- \wsh|curState~1_combout\ = (!\wsh|Add2~15_combout\ & (!\wsh|Add2~5_combout\ & (!\wsh|Add2~10_combout\ & !\wsh|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add2~15_combout\,
	datab => \wsh|Add2~5_combout\,
	datac => \wsh|Add2~10_combout\,
	datad => \wsh|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|curState~1_combout\);

-- Location: LC_X10_Y5_N6
\wsh|curState~4\ : maxv_lcell
-- Equation(s):
-- \wsh|curState~4_combout\ = (!\wsh|Add2~65_combout\ & (((!\wsh|Add2~70_combout\ & !\wsh|Add2~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add2~65_combout\,
	datac => \wsh|Add2~70_combout\,
	datad => \wsh|Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|curState~4_combout\);

-- Location: LC_X10_Y5_N7
\wsh|curState~3\ : maxv_lcell
-- Equation(s):
-- \wsh|curState~3_combout\ = (!\wsh|Add2~40_combout\ & (!\wsh|Add2~55_combout\ & (!\wsh|Add2~45_combout\ & !\wsh|Add2~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Add2~40_combout\,
	datab => \wsh|Add2~55_combout\,
	datac => \wsh|Add2~45_combout\,
	datad => \wsh|Add2~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|curState~3_combout\);

-- Location: LC_X6_Y5_N3
\wsh|curState~5\ : maxv_lcell
-- Equation(s):
-- \wsh|curState~5_combout\ = (\wsh|curState~2_combout\ & (\wsh|curState~1_combout\ & (\wsh|curState~4_combout\ & \wsh|curState~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|curState~2_combout\,
	datab => \wsh|curState~1_combout\,
	datac => \wsh|curState~4_combout\,
	datad => \wsh|curState~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|curState~5_combout\);

-- Location: LC_X6_Y5_N7
\wsh|curState~11\ : maxv_lcell
-- Equation(s):
-- \wsh|curState~11_combout\ = (\wsh|counter~9_combout\ & (\wsh|process_0~1_combout\ & (\wsh|curState~10_combout\ & \wsh|curState~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter~9_combout\,
	datab => \wsh|process_0~1_combout\,
	datac => \wsh|curState~10_combout\,
	datad => \wsh|curState~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|curState~11_combout\);

-- Location: LC_X6_Y5_N8
\wsh|curState[1]\ : maxv_lcell
-- Equation(s):
-- \wsh|curState\(1) = DFFEAS(\wsh|curState~13_combout\ $ ((((!\wsh|curState~0_combout\ & !\wsh|curState~11_combout\)) # (!\wsh|zero~0_combout\))), GLOBAL(\clk|clk_out_sig~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a587",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|zero~0_combout\,
	datab => \wsh|curState~0_combout\,
	datac => \wsh|curState~13_combout\,
	datad => \wsh|curState~11_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wsh|curState\(1));

-- Location: LC_X6_Y6_N9
\wsh|process_0~0\ : maxv_lcell
-- Equation(s):
-- \wsh|process_0~0_combout\ = (!\wsh|curState\(0) & (((!\reset~combout\ & \wsh|curState\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|curState\(0),
	datac => \reset~combout\,
	datad => \wsh|curState\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|process_0~0_combout\);

-- Location: LC_X7_Y7_N0
\wsh|zero~0\ : maxv_lcell
-- Equation(s):
-- \wsh|zero~0_combout\ = (\wsh|process_0~0_combout\ & ((\wsh|Equal5~10_combout\) # ((\wsh|process_0~2_combout\ & \wsh|Equal3~10_combout\)))) # (!\wsh|process_0~0_combout\ & (\wsh|process_0~2_combout\ & ((\wsh|Equal3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|process_0~0_combout\,
	datab => \wsh|process_0~2_combout\,
	datac => \wsh|Equal5~10_combout\,
	datad => \wsh|Equal3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|zero~0_combout\);

-- Location: LC_X6_Y5_N2
\wsh|curState[0]\ : maxv_lcell
-- Equation(s):
-- \wsh|curState\(0) = DFFEAS(\wsh|zero~0_combout\ $ (((!\wsh|curState~0_combout\ & (!\wsh|curState~11_combout\)))), GLOBAL(\clk|clk_out_sig~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a9a9",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk|clk_out_sig~regout\,
	dataa => \wsh|zero~0_combout\,
	datab => \wsh|curState~0_combout\,
	datac => \wsh|curState~11_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wsh|curState\(0));

-- Location: LC_X11_Y4_N3
\driver|COUNTER[0]\ : maxv_lcell
-- Equation(s):
-- \driver|COUNTER\(0) = DFFEAS((((!\driver|COUNTER\(0)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \driver|COUNTER\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \driver|COUNTER\(0));

-- Location: LC_X3_Y4_N1
\driver|COUNTER[1]\ : maxv_lcell
-- Equation(s):
-- \driver|COUNTER\(1) = DFFEAS(((\driver|COUNTER\(0) $ (\driver|COUNTER\(1)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \driver|COUNTER\(0),
	datad => \driver|COUNTER\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \driver|COUNTER\(1));

-- Location: LC_X11_Y4_N4
\driver|COUNTER[2]\ : maxv_lcell
-- Equation(s):
-- \driver|COUNTER\(2) = DFFEAS(\driver|COUNTER\(2) $ (((\driver|COUNTER\(0) & ((\driver|COUNTER\(1)))))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \driver|COUNTER\(0),
	datab => \driver|COUNTER\(2),
	datad => \driver|COUNTER\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \driver|COUNTER\(2));

-- Location: LC_X6_Y4_N5
\driver|SEV_SEG_DATA[5]~5\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~5_combout\ = (\driver|COUNTER\(2) & (!\reset~combout\ & ((\wsh|curState\(0)) # (\wsh|curState\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|curState\(0),
	datab => \wsh|curState\(1),
	datac => \driver|COUNTER\(2),
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~5_combout\);

-- Location: LC_X6_Y4_N6
\driver|SEV_SEG_DATA[5]~6\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~6_combout\ = (\driver|COUNTER\(1) & (\driver|COUNTER\(0) & (\start~combout\ & \driver|SEV_SEG_DATA[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(1),
	datab => \driver|COUNTER\(0),
	datac => \start~combout\,
	datad => \driver|SEV_SEG_DATA[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~6_combout\);

-- Location: LC_X11_Y3_N9
\driver|SEV_SEG_DATA[3]~39\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[3]~39_combout\ = (!\start~combout\ & (((!\userProg~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datad => \userProg~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[3]~39_combout\);

-- Location: LC_X6_Y4_N7
\driver|SEV_SEG_DATA[3]~56\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[3]~56_combout\ = (\start~combout\ & (((\wsh|curState\(0) & !\wsh|curState\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datac => \wsh|curState\(0),
	datad => \wsh|curState\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[3]~56_combout\);

-- Location: LC_X7_Y6_N9
\driver|SEV_SEG_DATA[4]~13\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[4]~13_combout\ = ((!\userProg~combout\(1) & (!\userProg~combout\(0) & !\userProg~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \userProg~combout\(1),
	datac => \userProg~combout\(0),
	datad => \userProg~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[4]~13_combout\);

-- Location: LC_X12_Y3_N1
\driver|SEV_SEG_DATA[3]~28\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[3]~28_combout\ = (((!\userProg~combout\(4) & !\userProg~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \userProg~combout\(4),
	datad => \userProg~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[3]~28_combout\);

-- Location: LC_X11_Y4_N9
\driver|SEV_SEG_DATA[3]~54\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[3]~54_combout\ = (\driver|SEV_SEG_DATA[3]~28_combout\ & ((\userProg~combout\(3) & (!\userProg~combout\(0) & !\driver|COUNTER\(0))) # (!\userProg~combout\(3) & (\userProg~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4060",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(3),
	datab => \userProg~combout\(0),
	datac => \driver|SEV_SEG_DATA[3]~28_combout\,
	datad => \driver|COUNTER\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[3]~54_combout\);

-- Location: LC_X7_Y4_N3
\driver|SEV_SEG_DATA[3]~55\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[3]~55_combout\ = (\driver|SEV_SEG_DATA[3]~54_combout\) # ((\driver|SEV_SEG_DATA[4]~13_combout\ & (\userProg~combout\(4) & !\driver|COUNTER\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[4]~13_combout\,
	datab => \userProg~combout\(4),
	datac => \driver|COUNTER\(0),
	datad => \driver|SEV_SEG_DATA[3]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[3]~55_combout\);

-- Location: LC_X7_Y4_N4
\driver|SEV_SEG_DATA[3]~57\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[3]~57_combout\ = (\driver|SEV_SEG_DATA[3]~39_combout\ & ((\driver|SEV_SEG_DATA[3]~55_combout\) # ((\driver|SEV_SEG_DATA[3]~56_combout\ & !\driver|COUNTER\(0))))) # (!\driver|SEV_SEG_DATA[3]~39_combout\ & 
-- (\driver|SEV_SEG_DATA[3]~56_combout\ & (!\driver|COUNTER\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[3]~39_combout\,
	datab => \driver|SEV_SEG_DATA[3]~56_combout\,
	datac => \driver|COUNTER\(0),
	datad => \driver|SEV_SEG_DATA[3]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[3]~57_combout\);

-- Location: LC_X7_Y6_N6
\driver|SEV_SEG_DATA[3]~44\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[3]~44_combout\ = (\wsh|curState\(1) & (((\wsh|curState\(0))))) # (!\wsh|curState\(1) & (((\driver|COUNTER\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|curState\(1),
	datac => \wsh|curState\(0),
	datad => \driver|COUNTER\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[3]~44_combout\);

-- Location: LC_X9_Y7_N4
\driver|SEV_SEG_DATA[5]~12\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~12_combout\ = (\userProg~combout\(1)) # ((\userProg~combout\(0)) # ((\userProg~combout\(3)) # (\userProg~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(1),
	datab => \userProg~combout\(0),
	datac => \userProg~combout\(3),
	datad => \userProg~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~12_combout\);

-- Location: LC_X9_Y7_N3
\driver|SEV_SEG_DATA[3]~45\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[3]~45_combout\ = (!\userProg~combout\(0) & ((\userProg~combout\(1) & (!\userProg~combout\(3) & !\userProg~combout\(2))) # (!\userProg~combout\(1) & (\userProg~combout\(3) $ (\userProg~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0112",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(1),
	datab => \userProg~combout\(0),
	datac => \userProg~combout\(3),
	datad => \userProg~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[3]~45_combout\);

-- Location: LC_X7_Y6_N1
\driver|SEV_SEG_DATA[3]~46\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[3]~46_combout\ = (\userProg~combout\(4) & (!\driver|SEV_SEG_DATA[5]~12_combout\)) # (!\userProg~combout\(4) & (((\driver|SEV_SEG_DATA[3]~45_combout\ & !\driver|COUNTER\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "505c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[5]~12_combout\,
	datab => \driver|SEV_SEG_DATA[3]~45_combout\,
	datac => \userProg~combout\(4),
	datad => \driver|COUNTER\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[3]~46_combout\);

-- Location: LC_X7_Y6_N0
\driver|SEV_SEG_DATA[3]~47\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[3]~47_combout\ = ((\start~combout\ & (\driver|SEV_SEG_DATA[3]~44_combout\)) # (!\start~combout\ & ((\driver|SEV_SEG_DATA[3]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \start~combout\,
	datac => \driver|SEV_SEG_DATA[3]~44_combout\,
	datad => \driver|SEV_SEG_DATA[3]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[3]~47_combout\);

-- Location: LC_X12_Y5_N9
\driver|SEV_SEG_DATA[2]~48\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[2]~48_combout\ = (((!\userProg~combout\(2) & !\userProg~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \userProg~combout\(2),
	datad => \userProg~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[2]~48_combout\);

-- Location: LC_X12_Y5_N5
\driver|SEV_SEG_DATA[3]~49\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[3]~49_combout\ = ((\userProg~combout\(3) & ((\userProg~combout\(1)) # (\userProg~combout\(4)))) # (!\userProg~combout\(3) & (\userProg~combout\(1) $ (!\userProg~combout\(4))))) # (!\driver|SEV_SEG_DATA[2]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef9f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(3),
	datab => \userProg~combout\(1),
	datac => \driver|SEV_SEG_DATA[2]~48_combout\,
	datad => \userProg~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[3]~49_combout\);

-- Location: LC_X12_Y5_N8
\driver|SEV_SEG_DATA[5]~17\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~17_combout\ = (\userProg~combout\(4) & ((\userProg~combout\(1)) # ((\userProg~combout\(2)) # (\userProg~combout\(3))))) # (!\userProg~combout\(4) & ((\userProg~combout\(1) & ((\userProg~combout\(2)) # (\userProg~combout\(3)))) # 
-- (!\userProg~combout\(1) & (\userProg~combout\(2) $ (!\userProg~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fee9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(4),
	datab => \userProg~combout\(1),
	datac => \userProg~combout\(2),
	datad => \userProg~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~17_combout\);

-- Location: LC_X12_Y5_N2
\driver|SEV_SEG_DATA[5]~50\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~50_combout\ = ((\userProg~combout\(0)) # ((\driver|SEV_SEG_DATA[5]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \userProg~combout\(0),
	datad => \driver|SEV_SEG_DATA[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~50_combout\);

-- Location: LC_X11_Y5_N1
\driver|SEV_SEG_DATA[3]~51\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[3]~51_combout\ = (\start~combout\ & (((\driver|COUNTER\(0))))) # (!\start~combout\ & ((\driver|COUNTER\(0) & (!\driver|SEV_SEG_DATA[3]~49_combout\)) # (!\driver|COUNTER\(0) & ((!\driver|SEV_SEG_DATA[5]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb05",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \driver|SEV_SEG_DATA[3]~49_combout\,
	datac => \driver|SEV_SEG_DATA[5]~50_combout\,
	datad => \driver|COUNTER\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[3]~51_combout\);

-- Location: LC_X11_Y5_N4
\driver|SEV_SEG_DATA[3]~52\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[3]~52_combout\ = (\start~combout\ & (\wsh|curState\(0) $ (((\wsh|curState\(1)) # (\driver|SEV_SEG_DATA[3]~51_combout\))))) # (!\start~combout\ & (((\driver|SEV_SEG_DATA[3]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \wsh|curState\(1),
	datac => \wsh|curState\(0),
	datad => \driver|SEV_SEG_DATA[3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[3]~52_combout\);

-- Location: LC_X7_Y4_N1
\driver|SEV_SEG_DATA[3]~53\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[3]~53_combout\ = ((\driver|COUNTER\(1) & (\driver|SEV_SEG_DATA[3]~47_combout\)) # (!\driver|COUNTER\(1) & ((\driver|SEV_SEG_DATA[3]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[3]~47_combout\,
	datac => \driver|COUNTER\(1),
	datad => \driver|SEV_SEG_DATA[3]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[3]~53_combout\);

-- Location: LC_X7_Y4_N2
\driver|SEV_SEG_DATA[3]~58\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[3]~58_combout\ = (\driver|COUNTER\(2) & (!\driver|COUNTER\(1) & (\driver|SEV_SEG_DATA[3]~57_combout\))) # (!\driver|COUNTER\(2) & (((\driver|SEV_SEG_DATA[3]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7340",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(1),
	datab => \driver|COUNTER\(2),
	datac => \driver|SEV_SEG_DATA[3]~57_combout\,
	datad => \driver|SEV_SEG_DATA[3]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[3]~58_combout\);

-- Location: LC_X7_Y4_N0
\driver|SEV_SEG_DATA[3]~59\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[3]~59_combout\ = (\driver|SEV_SEG_DATA[5]~6_combout\ & (\wsh|counter\(3))) # (!\driver|SEV_SEG_DATA[5]~6_combout\ & (((!\reset~combout\ & \driver|SEV_SEG_DATA[3]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a3a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(3),
	datab => \reset~combout\,
	datac => \driver|SEV_SEG_DATA[5]~6_combout\,
	datad => \driver|SEV_SEG_DATA[3]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[3]~59_combout\);

-- Location: LC_X11_Y3_N7
\driver|SEV_SEG_DATA[0]~23\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[0]~23_combout\ = ((!\userProg~combout\(3) & ((!\userProg~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \userProg~combout\(3),
	datad => \userProg~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[0]~23_combout\);

-- Location: LC_X11_Y3_N4
\driver|SEV_SEG_DATA[4]~40\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[4]~40_combout\ = ((\userProg~combout\(1)) # ((!\driver|SEV_SEG_DATA[3]~39_combout\) # (!\driver|SEV_SEG_DATA[0]~23_combout\))) # (!\userProg~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(4),
	datab => \userProg~combout\(1),
	datac => \driver|SEV_SEG_DATA[0]~23_combout\,
	datad => \driver|SEV_SEG_DATA[3]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[4]~40_combout\);

-- Location: LC_X11_Y3_N0
\wsh|Mux1~2\ : maxv_lcell
-- Equation(s):
-- \wsh|Mux1~2_combout\ = (((!\userProg~combout\(4) & !\userProg~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \userProg~combout\(4),
	datad => \userProg~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wsh|Mux1~2_combout\);

-- Location: LC_X9_Y7_N8
\driver|SEV_SEG_DATA[5]~14\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~14_combout\ = (\userProg~combout\(1) & (((!\userProg~combout\(3) & !\userProg~combout\(0))))) # (!\userProg~combout\(1) & ((\userProg~combout\(3) $ (\userProg~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "055a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(1),
	datac => \userProg~combout\(3),
	datad => \userProg~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~14_combout\);

-- Location: LC_X5_Y4_N7
\driver|SEV_SEG_DATA[0]~72\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[0]~72_combout\ = (\start~combout\ & (((!\driver|SEV_SEG_DATA[5]~4_combout\)))) # (!\start~combout\ & (((!\driver|SEV_SEG_DATA[5]~14_combout\)) # (!\wsh|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "13df",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Mux1~2_combout\,
	datab => \start~combout\,
	datac => \driver|SEV_SEG_DATA[5]~14_combout\,
	datad => \driver|SEV_SEG_DATA[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[0]~72_combout\);

-- Location: LC_X5_Y4_N3
\driver|SEV_SEG_DATA[0]~73\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[0]~73_combout\ = ((\driver|COUNTER\(0) & (\driver|SEV_SEG_DATA[4]~40_combout\)) # (!\driver|COUNTER\(0) & ((\driver|SEV_SEG_DATA[0]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \driver|SEV_SEG_DATA[4]~40_combout\,
	datac => \driver|SEV_SEG_DATA[0]~72_combout\,
	datad => \driver|COUNTER\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[0]~73_combout\);

-- Location: LC_X11_Y3_N5
\driver|SEV_SEG_DATA[0]~77\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[0]~77_combout\ = (!\userProg~combout\(4) & (\driver|SEV_SEG_DATA[0]~23_combout\ & (\userProg~combout\(1) $ (\userProg~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(1),
	datab => \userProg~combout\(4),
	datac => \driver|SEV_SEG_DATA[0]~23_combout\,
	datad => \userProg~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[0]~77_combout\);

-- Location: LC_X11_Y3_N8
\driver|SEV_SEG_DATA[0]~65\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[0]~65_combout\ = ((\userProg~combout\(0)) # (\userProg~combout\(3) $ (!\userProg~combout\(1)))) # (!\wsh|Mux1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffd7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Mux1~2_combout\,
	datab => \userProg~combout\(3),
	datac => \userProg~combout\(1),
	datad => \userProg~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[0]~65_combout\);

-- Location: LC_X11_Y4_N5
\driver|SEV_SEG_DATA[0]~78\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[0]~78_combout\ = (\start~combout\ & (((\driver|COUNTER\(0))))) # (!\start~combout\ & ((\driver|COUNTER\(0) & (\driver|SEV_SEG_DATA[0]~77_combout\)) # (!\driver|COUNTER\(0) & ((!\driver|SEV_SEG_DATA[0]~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[0]~77_combout\,
	datab => \driver|SEV_SEG_DATA[0]~65_combout\,
	datac => \start~combout\,
	datad => \driver|COUNTER\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[0]~78_combout\);

-- Location: LC_X11_Y4_N2
\driver|SEV_SEG_DATA[0]~79\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[0]~79_combout\ = (\start~combout\ & ((\wsh|curState\(0) & (!\driver|SEV_SEG_DATA[0]~78_combout\ & !\wsh|curState\(1))) # (!\wsh|curState\(0) & (\driver|SEV_SEG_DATA[0]~78_combout\)))) # (!\start~combout\ & 
-- (((\driver|SEV_SEG_DATA[0]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7078",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \wsh|curState\(0),
	datac => \driver|SEV_SEG_DATA[0]~78_combout\,
	datad => \wsh|curState\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[0]~79_combout\);

-- Location: LC_X11_Y4_N0
\driver|SEV_SEG_DATA[0]~75\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[0]~75_combout\ = (\userProg~combout\(4) & (!\userProg~combout\(0) & (!\userProg~combout\(3)))) # (!\userProg~combout\(4) & (!\driver|COUNTER\(0) & (\userProg~combout\(0) $ (\userProg~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0216",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(4),
	datab => \userProg~combout\(0),
	datac => \userProg~combout\(3),
	datad => \driver|COUNTER\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[0]~75_combout\);

-- Location: LC_X11_Y4_N7
\driver|SEV_SEG_DATA[0]~74\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[0]~74_combout\ = (\start~combout\ & ((\driver|COUNTER\(0) & (\wsh|curState\(1) & !\wsh|curState\(0))) # (!\driver|COUNTER\(0) & (!\wsh|curState\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1090",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(0),
	datab => \wsh|curState\(1),
	datac => \start~combout\,
	datad => \wsh|curState\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[0]~74_combout\);

-- Location: LC_X11_Y4_N8
\driver|SEV_SEG_DATA[0]~76\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[0]~76_combout\ = (\driver|SEV_SEG_DATA[0]~74_combout\) # ((\driver|SEV_SEG_DATA[3]~39_combout\ & (!\userProg~combout\(1) & \driver|SEV_SEG_DATA[0]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[3]~39_combout\,
	datab => \userProg~combout\(1),
	datac => \driver|SEV_SEG_DATA[0]~75_combout\,
	datad => \driver|SEV_SEG_DATA[0]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[0]~76_combout\);

-- Location: LC_X10_Y4_N2
\driver|SEV_SEG_DATA[0]~80\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[0]~80_combout\ = (\driver|COUNTER\(1) & ((\driver|COUNTER\(2)) # ((\driver|SEV_SEG_DATA[0]~76_combout\)))) # (!\driver|COUNTER\(1) & (!\driver|COUNTER\(2) & (\driver|SEV_SEG_DATA[0]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(1),
	datab => \driver|COUNTER\(2),
	datac => \driver|SEV_SEG_DATA[0]~79_combout\,
	datad => \driver|SEV_SEG_DATA[0]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[0]~80_combout\);

-- Location: LC_X10_Y3_N6
\driver|SEV_SEG_DATA[5]~99\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~99_combout\ = (\driver|SEV_SEG_DATA[0]~23_combout\ & (!\userProg~combout\(2) & (\driver|COUNTER\(0) & !\userProg~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[0]~23_combout\,
	datab => \userProg~combout\(2),
	datac => \driver|COUNTER\(0),
	datad => \userProg~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~99_combout\);

-- Location: LC_X10_Y3_N3
\driver|SEV_SEG_DATA[0]~81\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[0]~81_combout\ = ((!\driver|COUNTER\(0) & (\userProg~combout\(2) $ (\userProg~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "030c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \userProg~combout\(2),
	datac => \driver|COUNTER\(0),
	datad => \userProg~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[0]~81_combout\);

-- Location: LC_X12_Y3_N3
\driver|SEV_SEG_DATA[5]~21\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~21_combout\ = (((!\userProg~combout\(4) & !\userProg~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \userProg~combout\(4),
	datad => \userProg~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~21_combout\);

-- Location: LC_X10_Y3_N9
\driver|SEV_SEG_DATA[0]~82\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[0]~82_combout\ = (\userProg~combout\(4) & (!\userProg~combout\(2) & ((!\userProg~combout\(3))))) # (!\userProg~combout\(4) & (\driver|COUNTER\(0) & (\userProg~combout\(2) $ (\userProg~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1062",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(4),
	datab => \userProg~combout\(2),
	datac => \driver|COUNTER\(0),
	datad => \userProg~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[0]~82_combout\);

-- Location: LC_X10_Y3_N7
\driver|SEV_SEG_DATA[0]~83\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[0]~83_combout\ = (\driver|SEV_SEG_DATA[0]~81_combout\ & ((\driver|SEV_SEG_DATA[5]~21_combout\) # ((!\userProg~combout\(0) & \driver|SEV_SEG_DATA[0]~82_combout\)))) # (!\driver|SEV_SEG_DATA[0]~81_combout\ & (!\userProg~combout\(0) & 
-- ((\driver|SEV_SEG_DATA[0]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[0]~81_combout\,
	datab => \userProg~combout\(0),
	datac => \driver|SEV_SEG_DATA[5]~21_combout\,
	datad => \driver|SEV_SEG_DATA[0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[0]~83_combout\);

-- Location: LC_X10_Y3_N8
\driver|SEV_SEG_DATA[0]~84\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[0]~84_combout\ = (!\start~combout\ & ((\userProg~combout\(1) & (\driver|SEV_SEG_DATA[5]~99_combout\)) # (!\userProg~combout\(1) & ((\driver|SEV_SEG_DATA[0]~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3120",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(1),
	datab => \start~combout\,
	datac => \driver|SEV_SEG_DATA[5]~99_combout\,
	datad => \driver|SEV_SEG_DATA[0]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[0]~84_combout\);

-- Location: LC_X9_Y4_N3
\driver|SEV_SEG_DATA[0]~85\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[0]~85_combout\ = (\driver|COUNTER\(2) & ((\driver|SEV_SEG_DATA[0]~80_combout\ & ((\driver|SEV_SEG_DATA[0]~84_combout\))) # (!\driver|SEV_SEG_DATA[0]~80_combout\ & (!\driver|SEV_SEG_DATA[0]~73_combout\)))) # (!\driver|COUNTER\(2) & 
-- (((\driver|SEV_SEG_DATA[0]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f434",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[0]~73_combout\,
	datab => \driver|COUNTER\(2),
	datac => \driver|SEV_SEG_DATA[0]~80_combout\,
	datad => \driver|SEV_SEG_DATA[0]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[0]~85_combout\);

-- Location: LC_X9_Y4_N4
\driver|SEV_SEG_DATA[0]~86\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[0]~86_combout\ = (\driver|SEV_SEG_DATA[5]~6_combout\ & (!\wsh|counter\(0))) # (!\driver|SEV_SEG_DATA[5]~6_combout\ & (((!\reset~combout\ & \driver|SEV_SEG_DATA[0]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5350",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(0),
	datab => \reset~combout\,
	datac => \driver|SEV_SEG_DATA[5]~6_combout\,
	datad => \driver|SEV_SEG_DATA[0]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[0]~86_combout\);

-- Location: LC_X11_Y3_N6
\driver|SEV_SEG_DATA[2]~95\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[2]~95_combout\ = ((\userProg~combout\(3)) # ((\userProg~combout\(1)) # (\start~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \userProg~combout\(3),
	datac => \userProg~combout\(1),
	datad => \start~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[2]~95_combout\);

-- Location: LC_X10_Y3_N4
\driver|SEV_SEG_DATA[2]~96\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[2]~96_combout\ = (\driver|SEV_SEG_DATA[2]~95_combout\) # ((\userProg~combout\(4) & (!\driver|SEV_SEG_DATA[2]~48_combout\)) # (!\userProg~combout\(4) & ((!\driver|SEV_SEG_DATA[0]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(4),
	datab => \driver|SEV_SEG_DATA[2]~48_combout\,
	datac => \driver|SEV_SEG_DATA[2]~95_combout\,
	datad => \driver|SEV_SEG_DATA[0]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[2]~96_combout\);

-- Location: LC_X11_Y3_N1
\driver|SEV_SEG_DATA[2]~87\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[2]~87_combout\ = (\userProg~combout\(1)) # (((\userProg~combout\(2)) # (!\driver|SEV_SEG_DATA[0]~23_combout\)) # (!\userProg~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(1),
	datab => \userProg~combout\(4),
	datac => \driver|SEV_SEG_DATA[0]~23_combout\,
	datad => \userProg~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[2]~87_combout\);

-- Location: LC_X5_Y4_N9
\driver|SEV_SEG_DATA[2]~88\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[2]~88_combout\ = (\driver|COUNTER\(0)) # ((\start~combout\ & ((!\driver|SEV_SEG_DATA[5]~4_combout\))) # (!\start~combout\ & (\driver|SEV_SEG_DATA[2]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2fe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[2]~87_combout\,
	datab => \start~combout\,
	datac => \driver|COUNTER\(0),
	datad => \driver|SEV_SEG_DATA[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[2]~88_combout\);

-- Location: LC_X8_Y6_N8
\driver|SEV_SEG_DATA[2]~89\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[2]~89_combout\ = (\userProg~combout\(4)) # ((\userProg~combout\(2) & (!\driver|SEV_SEG_DATA[4]~13_combout\)) # (!\userProg~combout\(2) & ((!\driver|SEV_SEG_DATA[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cedf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(2),
	datab => \userProg~combout\(4),
	datac => \driver|SEV_SEG_DATA[4]~13_combout\,
	datad => \driver|SEV_SEG_DATA[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[2]~89_combout\);

-- Location: LC_X8_Y6_N7
\driver|SEV_SEG_DATA[2]~90\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[2]~90_combout\ = (\start~combout\ & (((\driver|COUNTER\(0)) # (!\wsh|curState\(1))))) # (!\start~combout\ & (\driver|SEV_SEG_DATA[2]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2ee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[2]~89_combout\,
	datab => \start~combout\,
	datac => \driver|COUNTER\(0),
	datad => \wsh|curState\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[2]~90_combout\);

-- Location: LC_X7_Y6_N8
\driver|SEV_SEG_DATA[2]~91\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[2]~91_combout\ = (\userProg~combout\(0) $ (((!\userProg~combout\(3))))) # (!\wsh|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd77",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Mux1~0_combout\,
	datab => \userProg~combout\(0),
	datad => \userProg~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[2]~91_combout\);

-- Location: LC_X6_Y6_N4
\driver|SEV_SEG_DATA[2]~92\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[2]~92_combout\ = (\driver|COUNTER\(0) & ((\driver|SEV_SEG_DATA[3]~49_combout\) # ((\start~combout\)))) # (!\driver|COUNTER\(0) & (((!\start~combout\ & \driver|SEV_SEG_DATA[2]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(0),
	datab => \driver|SEV_SEG_DATA[3]~49_combout\,
	datac => \start~combout\,
	datad => \driver|SEV_SEG_DATA[2]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[2]~92_combout\);

-- Location: LC_X6_Y6_N2
\driver|SEV_SEG_DATA[2]~93\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[2]~93_combout\ = (\driver|SEV_SEG_DATA[2]~92_combout\ & ((\wsh|curState\(1) $ (!\wsh|curState\(0))) # (!\start~combout\))) # (!\driver|SEV_SEG_DATA[2]~92_combout\ & (\wsh|curState\(1) & (\start~combout\ & !\wsh|curState\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a6a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[2]~92_combout\,
	datab => \wsh|curState\(1),
	datac => \start~combout\,
	datad => \wsh|curState\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[2]~93_combout\);

-- Location: LC_X9_Y4_N0
\driver|SEV_SEG_DATA[2]~94\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[2]~94_combout\ = (\driver|COUNTER\(1) & ((\driver|SEV_SEG_DATA[2]~90_combout\) # ((\driver|COUNTER\(2))))) # (!\driver|COUNTER\(1) & (((!\driver|COUNTER\(2) & \driver|SEV_SEG_DATA[2]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(1),
	datab => \driver|SEV_SEG_DATA[2]~90_combout\,
	datac => \driver|COUNTER\(2),
	datad => \driver|SEV_SEG_DATA[2]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[2]~94_combout\);

-- Location: LC_X9_Y4_N5
\driver|SEV_SEG_DATA[2]~97\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[2]~97_combout\ = (\driver|SEV_SEG_DATA[2]~94_combout\ & ((\driver|SEV_SEG_DATA[2]~96_combout\) # ((!\driver|COUNTER\(2))))) # (!\driver|SEV_SEG_DATA[2]~94_combout\ & (((\driver|SEV_SEG_DATA[2]~88_combout\ & \driver|COUNTER\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[2]~96_combout\,
	datab => \driver|SEV_SEG_DATA[2]~88_combout\,
	datac => \driver|SEV_SEG_DATA[2]~94_combout\,
	datad => \driver|COUNTER\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[2]~97_combout\);

-- Location: LC_X9_Y4_N6
\driver|SEV_SEG_DATA[2]~98\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[2]~98_combout\ = (\driver|SEV_SEG_DATA[5]~6_combout\ & (\wsh|counter\(2))) # (!\driver|SEV_SEG_DATA[5]~6_combout\ & (((!\reset~combout\ & \driver|SEV_SEG_DATA[2]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a3a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(2),
	datab => \reset~combout\,
	datac => \driver|SEV_SEG_DATA[5]~6_combout\,
	datad => \driver|SEV_SEG_DATA[2]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[2]~98_combout\);

-- Location: LC_X5_Y4_N4
\driver|SEV_SEG_DATA[1]~61\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[1]~61_combout\ = (\userProg~combout\(1) & (!\userProg~combout\(3) & ((!\userProg~combout\(0))))) # (!\userProg~combout\(1) & (\driver|COUNTER\(0) & (\userProg~combout\(3) $ (\userProg~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1064",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(3),
	datab => \userProg~combout\(1),
	datac => \driver|COUNTER\(0),
	datad => \userProg~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[1]~61_combout\);

-- Location: LC_X5_Y4_N1
\driver|SEV_SEG_DATA[1]~60\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[1]~60_combout\ = (\driver|COUNTER\(0) & (((!\wsh|curState\(0))))) # (!\driver|COUNTER\(0) & ((\wsh|curState\(1)) # ((\wsh|curState\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33ee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|curState\(1),
	datab => \driver|COUNTER\(0),
	datad => \wsh|curState\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[1]~60_combout\);

-- Location: LC_X5_Y4_N0
\driver|SEV_SEG_DATA[1]~62\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[1]~62_combout\ = (\start~combout\ & (((\driver|SEV_SEG_DATA[1]~60_combout\)))) # (!\start~combout\ & (\wsh|Mux1~2_combout\ & (\driver|SEV_SEG_DATA[1]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|Mux1~2_combout\,
	datab => \start~combout\,
	datac => \driver|SEV_SEG_DATA[1]~61_combout\,
	datad => \driver|SEV_SEG_DATA[1]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[1]~62_combout\);

-- Location: LC_X11_Y3_N2
\driver|SEV_SEG_DATA[1]~63\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[1]~63_combout\ = (\userProg~combout\(1) & (!\start~combout\ & (\driver|SEV_SEG_DATA[0]~23_combout\ & \wsh|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(1),
	datab => \start~combout\,
	datac => \driver|SEV_SEG_DATA[0]~23_combout\,
	datad => \wsh|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[1]~63_combout\);

-- Location: LC_X5_Y4_N6
\driver|SEV_SEG_DATA[1]~69\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[1]~69_combout\ = (\driver|SEV_SEG_DATA[1]~63_combout\ & (((\driver|COUNTER\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[1]~63_combout\,
	datad => \driver|COUNTER\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[1]~69_combout\);

-- Location: LC_X6_Y4_N0
\driver|SEV_SEG_DATA[1]~66\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[1]~66_combout\ = (\driver|COUNTER\(0) & (((\start~combout\)) # (!\driver|SEV_SEG_DATA[0]~65_combout\))) # (!\driver|COUNTER\(0) & (((\wsh|Mux1~1_combout\ & !\start~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f05c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[0]~65_combout\,
	datab => \wsh|Mux1~1_combout\,
	datac => \driver|COUNTER\(0),
	datad => \start~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[1]~66_combout\);

-- Location: LC_X6_Y4_N9
\driver|SEV_SEG_DATA[1]~67\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[1]~67_combout\ = (\start~combout\ & (!\wsh|curState\(1) & ((\wsh|curState\(0)) # (!\driver|SEV_SEG_DATA[1]~66_combout\)))) # (!\start~combout\ & (((\driver|SEV_SEG_DATA[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50da",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \wsh|curState\(0),
	datac => \driver|SEV_SEG_DATA[1]~66_combout\,
	datad => \wsh|curState\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[1]~67_combout\);

-- Location: LC_X11_Y3_N3
\driver|SEV_SEG_DATA[4]~7\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[4]~7_combout\ = (!\start~combout\ & (!\userProg~combout\(3) & ((!\userProg~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \userProg~combout\(3),
	datad => \userProg~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[4]~7_combout\);

-- Location: LC_X12_Y3_N6
\driver|SEV_SEG_DATA[5]~8\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~8_combout\ = (\userProg~combout\(1)) # ((\userProg~combout\(0) $ (!\userProg~combout\(4))) # (!\driver|SEV_SEG_DATA[4]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ebff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(1),
	datab => \userProg~combout\(0),
	datac => \userProg~combout\(4),
	datad => \driver|SEV_SEG_DATA[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~8_combout\);

-- Location: LC_X6_Y4_N4
\driver|SEV_SEG_DATA[1]~64\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[1]~64_combout\ = (\driver|COUNTER\(0) & (((!\driver|SEV_SEG_DATA[5]~8_combout\)))) # (!\driver|COUNTER\(0) & ((\driver|SEV_SEG_DATA[1]~63_combout\) # ((\driver|SEV_SEG_DATA[3]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "32fe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[1]~63_combout\,
	datab => \driver|COUNTER\(0),
	datac => \driver|SEV_SEG_DATA[3]~56_combout\,
	datad => \driver|SEV_SEG_DATA[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[1]~64_combout\);

-- Location: LC_X6_Y4_N8
\driver|SEV_SEG_DATA[1]~68\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[1]~68_combout\ = (\driver|COUNTER\(1) & (((\driver|COUNTER\(2))))) # (!\driver|COUNTER\(1) & ((\driver|COUNTER\(2) & ((\driver|SEV_SEG_DATA[1]~64_combout\))) # (!\driver|COUNTER\(2) & (\driver|SEV_SEG_DATA[1]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(1),
	datab => \driver|SEV_SEG_DATA[1]~67_combout\,
	datac => \driver|SEV_SEG_DATA[1]~64_combout\,
	datad => \driver|COUNTER\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[1]~68_combout\);

-- Location: LC_X6_Y4_N3
\driver|SEV_SEG_DATA[1]~70\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[1]~70_combout\ = (\driver|COUNTER\(1) & ((\driver|SEV_SEG_DATA[1]~68_combout\ & ((\driver|SEV_SEG_DATA[1]~69_combout\))) # (!\driver|SEV_SEG_DATA[1]~68_combout\ & (\driver|SEV_SEG_DATA[1]~62_combout\)))) # (!\driver|COUNTER\(1) & 
-- (((\driver|SEV_SEG_DATA[1]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[1]~62_combout\,
	datab => \driver|COUNTER\(1),
	datac => \driver|SEV_SEG_DATA[1]~69_combout\,
	datad => \driver|SEV_SEG_DATA[1]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[1]~70_combout\);

-- Location: LC_X6_Y4_N1
\driver|SEV_SEG_DATA[1]~71\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[1]~71_combout\ = (\driver|SEV_SEG_DATA[5]~6_combout\ & (\wsh|counter\(1))) # (!\driver|SEV_SEG_DATA[5]~6_combout\ & (((!\reset~combout\ & \driver|SEV_SEG_DATA[1]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a3a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(1),
	datab => \reset~combout\,
	datac => \driver|SEV_SEG_DATA[5]~6_combout\,
	datad => \driver|SEV_SEG_DATA[1]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[1]~71_combout\);

-- Location: LC_X12_Y3_N7
\driver|SEV_SEG_DATA[4]~38\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[4]~38_combout\ = (\driver|SEV_SEG_DATA[4]~7_combout\ & ((\userProg~combout\(1) & (!\userProg~combout\(0) & !\userProg~combout\(4))) # (!\userProg~combout\(1) & (\userProg~combout\(0) $ (\userProg~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1600",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(1),
	datab => \userProg~combout\(0),
	datac => \userProg~combout\(4),
	datad => \driver|SEV_SEG_DATA[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[4]~38_combout\);

-- Location: LC_X5_Y4_N2
\driver|SEV_SEG_DATA[5]~37\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~37_combout\ = ((\start~combout\ & (\wsh|curState\(1) & \wsh|curState\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \start~combout\,
	datac => \wsh|curState\(1),
	datad => \wsh|curState\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~37_combout\);

-- Location: LC_X6_Y4_N2
\driver|SEV_SEG_DATA[4]~41\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[4]~41_combout\ = (\driver|COUNTER\(0) & (!\driver|SEV_SEG_DATA[4]~40_combout\)) # (!\driver|COUNTER\(0) & (((\driver|SEV_SEG_DATA[4]~38_combout\) # (\driver|SEV_SEG_DATA[5]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f5c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[4]~40_combout\,
	datab => \driver|SEV_SEG_DATA[4]~38_combout\,
	datac => \driver|COUNTER\(0),
	datad => \driver|SEV_SEG_DATA[5]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[4]~41_combout\);

-- Location: LC_X6_Y5_N6
\driver|SEV_SEG_DATA[4]~32\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[4]~32_combout\ = (\start~combout\ & ((\wsh|curState\(1) & ((\driver|COUNTER\(0)) # (!\wsh|curState\(0)))) # (!\wsh|curState\(1) & ((\wsh|curState\(0)) # (!\driver|COUNTER\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|curState\(1),
	datab => \driver|COUNTER\(0),
	datac => \start~combout\,
	datad => \wsh|curState\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[4]~32_combout\);

-- Location: LC_X12_Y3_N8
\driver|SEV_SEG_DATA[4]~29\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[4]~29_combout\ = (\userProg~combout\(0)) # ((\userProg~combout\(2) $ (!\userProg~combout\(3))) # (!\driver|SEV_SEG_DATA[3]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efdf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(2),
	datab => \userProg~combout\(0),
	datac => \driver|SEV_SEG_DATA[3]~28_combout\,
	datad => \userProg~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[4]~29_combout\);

-- Location: LC_X12_Y3_N5
\driver|SEV_SEG_DATA[4]~27\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[4]~27_combout\ = (\driver|SEV_SEG_DATA[0]~23_combout\ & ((\userProg~combout\(2) & (!\userProg~combout\(4) & !\userProg~combout\(1))) # (!\userProg~combout\(2) & (\userProg~combout\(4) $ (\userProg~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0448",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(2),
	datab => \driver|SEV_SEG_DATA[0]~23_combout\,
	datac => \userProg~combout\(4),
	datad => \userProg~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[4]~27_combout\);

-- Location: LC_X11_Y4_N6
\driver|SEV_SEG_DATA[4]~30\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[4]~30_combout\ = (\start~combout\ & (((\driver|COUNTER\(0))))) # (!\start~combout\ & ((\driver|COUNTER\(0) & ((\driver|SEV_SEG_DATA[4]~27_combout\))) # (!\driver|COUNTER\(0) & (!\driver|SEV_SEG_DATA[4]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc05",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[4]~29_combout\,
	datab => \driver|SEV_SEG_DATA[4]~27_combout\,
	datac => \start~combout\,
	datad => \driver|COUNTER\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[4]~30_combout\);

-- Location: LC_X7_Y4_N5
\driver|SEV_SEG_DATA[4]~31\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[4]~31_combout\ = (\start~combout\ & ((\wsh|curState\(0) & ((!\wsh|curState\(1)))) # (!\wsh|curState\(0) & ((\wsh|curState\(1)) # (!\driver|SEV_SEG_DATA[4]~30_combout\))))) # (!\start~combout\ & (\driver|SEV_SEG_DATA[4]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ada",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[4]~30_combout\,
	datab => \wsh|curState\(0),
	datac => \start~combout\,
	datad => \wsh|curState\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[4]~31_combout\);

-- Location: LC_X4_Y4_N6
\driver|SEV_SEG_DATA[4]~33\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[4]~33_combout\ = (\driver|SEV_SEG_DATA[4]~13_combout\ & ((\userProg~combout\(4) & (!\userProg~combout\(2))) # (!\userProg~combout\(4) & (\userProg~combout\(2) & !\driver|COUNTER\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2060",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(4),
	datab => \userProg~combout\(2),
	datac => \driver|SEV_SEG_DATA[4]~13_combout\,
	datad => \driver|COUNTER\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[4]~33_combout\);

-- Location: LC_X11_Y4_N1
\driver|SEV_SEG_DATA[4]~34\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[4]~34_combout\ = (\userProg~combout\(1) & (!\userProg~combout\(3) & (!\userProg~combout\(0) & \driver|COUNTER\(0)))) # (!\userProg~combout\(1) & (\userProg~combout\(3) $ ((\userProg~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1612",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(3),
	datab => \userProg~combout\(1),
	datac => \userProg~combout\(0),
	datad => \driver|COUNTER\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[4]~34_combout\);

-- Location: LC_X7_Y4_N6
\driver|SEV_SEG_DATA[4]~35\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[4]~35_combout\ = (!\start~combout\ & ((\driver|SEV_SEG_DATA[4]~33_combout\) # ((\wsh|Mux1~2_combout\ & \driver|SEV_SEG_DATA[4]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5450",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \wsh|Mux1~2_combout\,
	datac => \driver|SEV_SEG_DATA[4]~33_combout\,
	datad => \driver|SEV_SEG_DATA[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[4]~35_combout\);

-- Location: LC_X7_Y4_N7
\driver|SEV_SEG_DATA[4]~36\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[4]~36_combout\ = (\driver|COUNTER\(1) & ((\driver|SEV_SEG_DATA[4]~32_combout\) # ((\driver|SEV_SEG_DATA[4]~35_combout\)))) # (!\driver|COUNTER\(1) & (((\driver|SEV_SEG_DATA[4]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(1),
	datab => \driver|SEV_SEG_DATA[4]~32_combout\,
	datac => \driver|SEV_SEG_DATA[4]~31_combout\,
	datad => \driver|SEV_SEG_DATA[4]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[4]~36_combout\);

-- Location: LC_X7_Y4_N8
\driver|SEV_SEG_DATA[4]~42\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[4]~42_combout\ = (\driver|COUNTER\(2) & (\driver|SEV_SEG_DATA[4]~41_combout\ & (!\driver|COUNTER\(1)))) # (!\driver|COUNTER\(2) & (((\driver|SEV_SEG_DATA[4]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(2),
	datab => \driver|SEV_SEG_DATA[4]~41_combout\,
	datac => \driver|COUNTER\(1),
	datad => \driver|SEV_SEG_DATA[4]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[4]~42_combout\);

-- Location: LC_X7_Y4_N9
\driver|SEV_SEG_DATA[4]~43\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[4]~43_combout\ = (\driver|SEV_SEG_DATA[5]~6_combout\ & (\wsh|counter\(4))) # (!\driver|SEV_SEG_DATA[5]~6_combout\ & (((!\reset~combout\ & \driver|SEV_SEG_DATA[4]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a3a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(4),
	datab => \reset~combout\,
	datac => \driver|SEV_SEG_DATA[5]~6_combout\,
	datad => \driver|SEV_SEG_DATA[4]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[4]~43_combout\);

-- Location: LC_X8_Y4_N1
\bcd7seg|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux0~2_combout\ = (\driver|SEV_SEG_DATA[1]~71_combout\ & (!\driver|SEV_SEG_DATA[4]~43_combout\ & ((!\driver|SEV_SEG_DATA[2]~98_combout\) # (!\driver|SEV_SEG_DATA[0]~86_combout\)))) # (!\driver|SEV_SEG_DATA[1]~71_combout\ & 
-- (\driver|SEV_SEG_DATA[2]~98_combout\ $ (((\driver|SEV_SEG_DATA[0]~86_combout\ & \driver|SEV_SEG_DATA[4]~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "067c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[0]~86_combout\,
	datab => \driver|SEV_SEG_DATA[2]~98_combout\,
	datac => \driver|SEV_SEG_DATA[1]~71_combout\,
	datad => \driver|SEV_SEG_DATA[4]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux0~2_combout\);

-- Location: LC_X8_Y4_N7
\bcd7seg|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux0~1_combout\ = (\driver|SEV_SEG_DATA[2]~98_combout\ & ((\driver|SEV_SEG_DATA[1]~71_combout\ & ((\driver|SEV_SEG_DATA[4]~43_combout\))) # (!\driver|SEV_SEG_DATA[1]~71_combout\ & (!\driver|SEV_SEG_DATA[0]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[0]~86_combout\,
	datab => \driver|SEV_SEG_DATA[2]~98_combout\,
	datac => \driver|SEV_SEG_DATA[1]~71_combout\,
	datad => \driver|SEV_SEG_DATA[4]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux0~1_combout\);

-- Location: LC_X7_Y6_N2
\driver|SEV_SEG_DATA[5]~9\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~9_combout\ = (\userProg~combout\(3) & ((\userProg~combout\(1)) # ((\userProg~combout\(4)) # (\userProg~combout\(0))))) # (!\userProg~combout\(3) & ((\userProg~combout\(1) & ((\userProg~combout\(4)) # (\userProg~combout\(0)))) # 
-- (!\userProg~combout\(1) & (\userProg~combout\(4) $ (!\userProg~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fee9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(3),
	datab => \userProg~combout\(1),
	datac => \userProg~combout\(4),
	datad => \userProg~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~9_combout\);

-- Location: LC_X3_Y4_N2
\driver|SEV_SEG_DATA[5]~10\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~10_combout\ = (\start~combout\ & (((!\wsh|curState\(0))))) # (!\start~combout\ & ((\driver|SEV_SEG_DATA[5]~9_combout\) # ((\userProg~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0efe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[5]~9_combout\,
	datab => \userProg~combout\(2),
	datac => \start~combout\,
	datad => \wsh|curState\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~10_combout\);

-- Location: LC_X3_Y4_N0
\driver|SEV_SEG_DATA[5]~11\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~11_combout\ = ((\driver|COUNTER\(0) & (\driver|SEV_SEG_DATA[5]~8_combout\)) # (!\driver|COUNTER\(0) & ((\driver|SEV_SEG_DATA[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[5]~8_combout\,
	datac => \driver|COUNTER\(0),
	datad => \driver|SEV_SEG_DATA[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~11_combout\);

-- Location: LC_X10_Y3_N0
\driver|SEV_SEG_DATA[5]~20\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~20_combout\ = ((\userProg~combout\(3) & ((\userProg~combout\(4)) # (!\driver|COUNTER\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(4),
	datac => \driver|COUNTER\(0),
	datad => \userProg~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~20_combout\);

-- Location: LC_X10_Y3_N1
\driver|SEV_SEG_DATA[5]~22\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~22_combout\ = (\driver|SEV_SEG_DATA[5]~20_combout\) # ((\userProg~combout\(0) & ((\userProg~combout\(2)) # (!\driver|SEV_SEG_DATA[5]~21_combout\))) # (!\userProg~combout\(0) & (\userProg~combout\(2) $ 
-- (\driver|SEV_SEG_DATA[5]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff9e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(0),
	datab => \userProg~combout\(2),
	datac => \driver|SEV_SEG_DATA[5]~21_combout\,
	datad => \driver|SEV_SEG_DATA[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~22_combout\);

-- Location: LC_X10_Y3_N2
\driver|SEV_SEG_DATA[5]~24\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~24_combout\ = (\start~combout\) # ((\userProg~combout\(1) & (!\driver|SEV_SEG_DATA[5]~99_combout\)) # (!\userProg~combout\(1) & ((\driver|SEV_SEG_DATA[5]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(1),
	datab => \start~combout\,
	datac => \driver|SEV_SEG_DATA[5]~99_combout\,
	datad => \driver|SEV_SEG_DATA[5]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~24_combout\);

-- Location: LC_X4_Y4_N8
\driver|SEV_SEG_DATA[5]~18\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~18_combout\ = (\start~combout\ & (((\driver|SEV_SEG_DATA[5]~4_combout\)))) # (!\start~combout\ & ((\userProg~combout\(0)) # ((\driver|SEV_SEG_DATA[5]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe0e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \userProg~combout\(0),
	datab => \driver|SEV_SEG_DATA[5]~17_combout\,
	datac => \start~combout\,
	datad => \driver|SEV_SEG_DATA[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~18_combout\);

-- Location: LC_X3_Y4_N6
\driver|SEV_SEG_DATA[5]~15\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~15_combout\ = (\userProg~combout\(2) & (((\driver|COUNTER\(0)) # (!\driver|SEV_SEG_DATA[4]~13_combout\)))) # (!\userProg~combout\(2) & (!\driver|SEV_SEG_DATA[5]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1dd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[5]~14_combout\,
	datab => \userProg~combout\(2),
	datac => \driver|COUNTER\(0),
	datad => \driver|SEV_SEG_DATA[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~15_combout\);

-- Location: LC_X3_Y4_N7
\driver|SEV_SEG_DATA[5]~16\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~16_combout\ = (!\start~combout\ & ((\userProg~combout\(4) & (\driver|SEV_SEG_DATA[5]~12_combout\)) # (!\userProg~combout\(4) & ((\driver|SEV_SEG_DATA[5]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[5]~12_combout\,
	datab => \start~combout\,
	datac => \userProg~combout\(4),
	datad => \driver|SEV_SEG_DATA[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~16_combout\);

-- Location: LC_X3_Y4_N8
\driver|SEV_SEG_DATA[5]~19\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~19_combout\ = (\driver|COUNTER\(2) & (((\driver|COUNTER\(1))))) # (!\driver|COUNTER\(2) & ((\driver|COUNTER\(1) & ((\driver|SEV_SEG_DATA[5]~16_combout\))) # (!\driver|COUNTER\(1) & (\driver|SEV_SEG_DATA[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(2),
	datab => \driver|SEV_SEG_DATA[5]~18_combout\,
	datac => \driver|COUNTER\(1),
	datad => \driver|SEV_SEG_DATA[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~19_combout\);

-- Location: LC_X3_Y4_N5
\driver|SEV_SEG_DATA[5]~25\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~25_combout\ = (\driver|COUNTER\(2) & ((\driver|SEV_SEG_DATA[5]~19_combout\ & ((\driver|SEV_SEG_DATA[5]~24_combout\))) # (!\driver|SEV_SEG_DATA[5]~19_combout\ & (\driver|SEV_SEG_DATA[5]~11_combout\)))) # (!\driver|COUNTER\(2) & 
-- (((\driver|SEV_SEG_DATA[5]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(2),
	datab => \driver|SEV_SEG_DATA[5]~11_combout\,
	datac => \driver|SEV_SEG_DATA[5]~24_combout\,
	datad => \driver|SEV_SEG_DATA[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~25_combout\);

-- Location: LC_X3_Y4_N4
\driver|SEV_SEG_DATA[5]~26\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DATA[5]~26_combout\ = (\driver|SEV_SEG_DATA[5]~6_combout\ & (\wsh|counter\(5))) # (!\driver|SEV_SEG_DATA[5]~6_combout\ & (((!\reset~combout\ & \driver|SEV_SEG_DATA[5]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wsh|counter\(5),
	datab => \reset~combout\,
	datac => \driver|SEV_SEG_DATA[5]~25_combout\,
	datad => \driver|SEV_SEG_DATA[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DATA[5]~26_combout\);

-- Location: LC_X8_Y4_N5
\bcd7seg|Mux0~3\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux0~3_combout\ = (!\driver|SEV_SEG_DATA[5]~26_combout\ & ((\driver|SEV_SEG_DATA[3]~59_combout\ & ((\bcd7seg|Mux0~1_combout\))) # (!\driver|SEV_SEG_DATA[3]~59_combout\ & (!\bcd7seg|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[3]~59_combout\,
	datab => \bcd7seg|Mux0~2_combout\,
	datac => \bcd7seg|Mux0~1_combout\,
	datad => \driver|SEV_SEG_DATA[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux0~3_combout\);

-- Location: LC_X4_Y4_N3
\bcd7seg|Mux1~2\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux1~2_combout\ = (!\driver|SEV_SEG_DATA[4]~43_combout\ & (((\driver|SEV_SEG_DATA[5]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[4]~43_combout\,
	datad => \driver|SEV_SEG_DATA[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux1~2_combout\);

-- Location: LC_X4_Y4_N4
\bcd7seg|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux0~0_combout\ = (\bcd7seg|Mux1~2_combout\ & (!\driver|SEV_SEG_DATA[3]~59_combout\ & (!\driver|SEV_SEG_DATA[0]~86_combout\ & !\driver|SEV_SEG_DATA[1]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|Mux1~2_combout\,
	datab => \driver|SEV_SEG_DATA[3]~59_combout\,
	datac => \driver|SEV_SEG_DATA[0]~86_combout\,
	datad => \driver|SEV_SEG_DATA[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux0~0_combout\);

-- Location: LC_X8_Y4_N6
\bcd7seg|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux0~4_combout\ = (\bcd7seg|Mux0~3_combout\) # (((\bcd7seg|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|Mux0~3_combout\,
	datad => \bcd7seg|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux0~4_combout\);

-- Location: LC_X5_Y4_N5
\bcd7seg|Mux7~0\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux7~0_combout\ = (\driver|SEV_SEG_DATA[3]~59_combout\) # ((\driver|SEV_SEG_DATA[2]~98_combout\ & ((\driver|SEV_SEG_DATA[0]~86_combout\) # (\driver|SEV_SEG_DATA[1]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[2]~98_combout\,
	datab => \driver|SEV_SEG_DATA[0]~86_combout\,
	datac => \driver|SEV_SEG_DATA[3]~59_combout\,
	datad => \driver|SEV_SEG_DATA[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux7~0_combout\);

-- Location: LC_X10_Y3_N5
\bcd7seg|seg_out[6]~0\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|seg_out[6]~0_combout\ = (!\reset~combout\ & (((!\bcd7seg|Mux7~0_combout\ & !\driver|SEV_SEG_DATA[4]~43_combout\)) # (!\driver|SEV_SEG_DATA[5]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "010f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|Mux7~0_combout\,
	datab => \driver|SEV_SEG_DATA[4]~43_combout\,
	datac => \reset~combout\,
	datad => \driver|SEV_SEG_DATA[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|seg_out[6]~0_combout\);

-- Location: LC_X8_Y4_N8
\bcd7seg|seg_out[0]\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|seg_out\(0) = ((GLOBAL(\bcd7seg|seg_out[6]~0_combout\) & (\bcd7seg|Mux0~4_combout\)) # (!GLOBAL(\bcd7seg|seg_out[6]~0_combout\) & ((\bcd7seg|seg_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \bcd7seg|Mux0~4_combout\,
	datac => \bcd7seg|seg_out[6]~0_combout\,
	datad => \bcd7seg|seg_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|seg_out\(0));

-- Location: LC_X10_Y4_N5
\bcd7seg|Mux1~4\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux1~4_combout\ = (\driver|SEV_SEG_DATA[0]~86_combout\ & (\driver|SEV_SEG_DATA[3]~59_combout\ $ (((\driver|SEV_SEG_DATA[1]~71_combout\) # (!\driver|SEV_SEG_DATA[2]~98_combout\))))) # (!\driver|SEV_SEG_DATA[0]~86_combout\ & 
-- (!\driver|SEV_SEG_DATA[2]~98_combout\ & (\driver|SEV_SEG_DATA[1]~71_combout\ & !\driver|SEV_SEG_DATA[3]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08b2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[0]~86_combout\,
	datab => \driver|SEV_SEG_DATA[2]~98_combout\,
	datac => \driver|SEV_SEG_DATA[1]~71_combout\,
	datad => \driver|SEV_SEG_DATA[3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux1~4_combout\);

-- Location: LC_X10_Y4_N0
\bcd7seg|Mux1~3\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux1~3_combout\ = (\driver|SEV_SEG_DATA[0]~86_combout\ & (!\driver|SEV_SEG_DATA[2]~98_combout\ & (\driver|SEV_SEG_DATA[1]~71_combout\))) # (!\driver|SEV_SEG_DATA[0]~86_combout\ & (((!\driver|SEV_SEG_DATA[1]~71_combout\ & 
-- \driver|SEV_SEG_DATA[3]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2520",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[0]~86_combout\,
	datab => \driver|SEV_SEG_DATA[2]~98_combout\,
	datac => \driver|SEV_SEG_DATA[1]~71_combout\,
	datad => \driver|SEV_SEG_DATA[3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux1~3_combout\);

-- Location: LC_X10_Y4_N4
\bcd7seg|Mux1~5\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux1~5_combout\ = (!\driver|SEV_SEG_DATA[5]~26_combout\ & ((\driver|SEV_SEG_DATA[4]~43_combout\ & ((\bcd7seg|Mux1~3_combout\))) # (!\driver|SEV_SEG_DATA[4]~43_combout\ & (\bcd7seg|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|Mux1~4_combout\,
	datab => \bcd7seg|Mux1~3_combout\,
	datac => \driver|SEV_SEG_DATA[5]~26_combout\,
	datad => \driver|SEV_SEG_DATA[4]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux1~5_combout\);

-- Location: LC_X10_Y4_N7
\bcd7seg|Mux1~6\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux1~6_combout\ = (\driver|SEV_SEG_DATA[3]~59_combout\) # ((\driver|SEV_SEG_DATA[0]~86_combout\ & ((\driver|SEV_SEG_DATA[2]~98_combout\))) # (!\driver|SEV_SEG_DATA[0]~86_combout\ & (\driver|SEV_SEG_DATA[1]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[1]~71_combout\,
	datab => \driver|SEV_SEG_DATA[2]~98_combout\,
	datac => \driver|SEV_SEG_DATA[3]~59_combout\,
	datad => \driver|SEV_SEG_DATA[0]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux1~6_combout\);

-- Location: LC_X10_Y4_N8
\bcd7seg|Mux1~7\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux1~7_combout\ = (\bcd7seg|Mux1~5_combout\) # ((\driver|SEV_SEG_DATA[5]~26_combout\ & (!\driver|SEV_SEG_DATA[4]~43_combout\ & !\bcd7seg|Mux1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|Mux1~5_combout\,
	datab => \driver|SEV_SEG_DATA[5]~26_combout\,
	datac => \driver|SEV_SEG_DATA[4]~43_combout\,
	datad => \bcd7seg|Mux1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux1~7_combout\);

-- Location: LC_X10_Y4_N3
\bcd7seg|seg_out[1]\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|seg_out\(1) = ((GLOBAL(\bcd7seg|seg_out[6]~0_combout\) & ((\bcd7seg|Mux1~7_combout\))) # (!GLOBAL(\bcd7seg|seg_out[6]~0_combout\) & (\bcd7seg|seg_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|seg_out\(1),
	datac => \bcd7seg|seg_out[6]~0_combout\,
	datad => \bcd7seg|Mux1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|seg_out\(1));

-- Location: LC_X10_Y4_N6
\bcd7seg|Mux2~3\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux2~3_combout\ = (!\driver|SEV_SEG_DATA[4]~43_combout\ & ((\driver|SEV_SEG_DATA[0]~86_combout\ & (!\driver|SEV_SEG_DATA[2]~98_combout\ & !\driver|SEV_SEG_DATA[1]~71_combout\)) # (!\driver|SEV_SEG_DATA[0]~86_combout\ & 
-- (\driver|SEV_SEG_DATA[2]~98_combout\ $ (\driver|SEV_SEG_DATA[1]~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0112",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[0]~86_combout\,
	datab => \driver|SEV_SEG_DATA[4]~43_combout\,
	datac => \driver|SEV_SEG_DATA[2]~98_combout\,
	datad => \driver|SEV_SEG_DATA[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux2~3_combout\);

-- Location: LC_X12_Y4_N4
\bcd7seg|Mux2~1\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux2~1_combout\ = (\driver|SEV_SEG_DATA[2]~98_combout\ & (\driver|SEV_SEG_DATA[4]~43_combout\ $ (((\driver|SEV_SEG_DATA[0]~86_combout\) # (!\driver|SEV_SEG_DATA[1]~71_combout\))))) # (!\driver|SEV_SEG_DATA[2]~98_combout\ & 
-- (\driver|SEV_SEG_DATA[0]~86_combout\ & ((\driver|SEV_SEG_DATA[1]~71_combout\) # (!\driver|SEV_SEG_DATA[4]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7832",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[2]~98_combout\,
	datab => \driver|SEV_SEG_DATA[4]~43_combout\,
	datac => \driver|SEV_SEG_DATA[0]~86_combout\,
	datad => \driver|SEV_SEG_DATA[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux2~1_combout\);

-- Location: LC_X12_Y4_N6
\bcd7seg|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux2~0_combout\ = (\driver|SEV_SEG_DATA[2]~98_combout\ & (\driver|SEV_SEG_DATA[4]~43_combout\ & (\driver|SEV_SEG_DATA[0]~86_combout\ $ (!\driver|SEV_SEG_DATA[1]~71_combout\)))) # (!\driver|SEV_SEG_DATA[2]~98_combout\ & 
-- ((\driver|SEV_SEG_DATA[0]~86_combout\ & (!\driver|SEV_SEG_DATA[1]~71_combout\ & !\driver|SEV_SEG_DATA[4]~43_combout\)) # (!\driver|SEV_SEG_DATA[0]~86_combout\ & (\driver|SEV_SEG_DATA[1]~71_combout\ & \driver|SEV_SEG_DATA[4]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9204",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[2]~98_combout\,
	datab => \driver|SEV_SEG_DATA[0]~86_combout\,
	datac => \driver|SEV_SEG_DATA[1]~71_combout\,
	datad => \driver|SEV_SEG_DATA[4]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux2~0_combout\);

-- Location: LC_X12_Y4_N2
\bcd7seg|Mux2~2\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux2~2_combout\ = (!\driver|SEV_SEG_DATA[5]~26_combout\ & ((\driver|SEV_SEG_DATA[3]~59_combout\ & ((\bcd7seg|Mux2~0_combout\))) # (!\driver|SEV_SEG_DATA[3]~59_combout\ & (\bcd7seg|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|Mux2~1_combout\,
	datab => \bcd7seg|Mux2~0_combout\,
	datac => \driver|SEV_SEG_DATA[3]~59_combout\,
	datad => \driver|SEV_SEG_DATA[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux2~2_combout\);

-- Location: LC_X12_Y4_N3
\bcd7seg|Mux2~4\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux2~4_combout\ = (\bcd7seg|Mux2~2_combout\) # ((\bcd7seg|Mux2~3_combout\ & (!\driver|SEV_SEG_DATA[3]~59_combout\ & \driver|SEV_SEG_DATA[5]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|Mux2~3_combout\,
	datab => \driver|SEV_SEG_DATA[3]~59_combout\,
	datac => \driver|SEV_SEG_DATA[5]~26_combout\,
	datad => \bcd7seg|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux2~4_combout\);

-- Location: LC_X12_Y4_N9
\bcd7seg|seg_out[2]\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|seg_out\(2) = ((GLOBAL(\bcd7seg|seg_out[6]~0_combout\) & (\bcd7seg|Mux2~4_combout\)) # (!GLOBAL(\bcd7seg|seg_out[6]~0_combout\) & ((\bcd7seg|seg_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|Mux2~4_combout\,
	datac => \bcd7seg|seg_out[6]~0_combout\,
	datad => \bcd7seg|seg_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|seg_out\(2));

-- Location: LC_X8_Y4_N0
\bcd7seg|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux3~0_combout\ = \driver|SEV_SEG_DATA[2]~98_combout\ $ (((\driver|SEV_SEG_DATA[0]~86_combout\ & ((\driver|SEV_SEG_DATA[3]~59_combout\) # (!\driver|SEV_SEG_DATA[1]~71_combout\))) # (!\driver|SEV_SEG_DATA[0]~86_combout\ & 
-- (\driver|SEV_SEG_DATA[1]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[0]~86_combout\,
	datab => \driver|SEV_SEG_DATA[2]~98_combout\,
	datac => \driver|SEV_SEG_DATA[1]~71_combout\,
	datad => \driver|SEV_SEG_DATA[3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux3~0_combout\);

-- Location: LC_X8_Y4_N4
\bcd7seg|Mux3~1\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux3~1_combout\ = (\driver|SEV_SEG_DATA[0]~86_combout\ & (\driver|SEV_SEG_DATA[2]~98_combout\ $ ((!\driver|SEV_SEG_DATA[1]~71_combout\)))) # (!\driver|SEV_SEG_DATA[0]~86_combout\ & ((\driver|SEV_SEG_DATA[2]~98_combout\ & 
-- (!\driver|SEV_SEG_DATA[1]~71_combout\ & !\driver|SEV_SEG_DATA[3]~59_combout\)) # (!\driver|SEV_SEG_DATA[2]~98_combout\ & (\driver|SEV_SEG_DATA[1]~71_combout\ & \driver|SEV_SEG_DATA[3]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9286",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[0]~86_combout\,
	datab => \driver|SEV_SEG_DATA[2]~98_combout\,
	datac => \driver|SEV_SEG_DATA[1]~71_combout\,
	datad => \driver|SEV_SEG_DATA[3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux3~1_combout\);

-- Location: LC_X8_Y4_N2
\bcd7seg|Mux3~2\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux3~2_combout\ = (!\driver|SEV_SEG_DATA[5]~26_combout\ & ((\driver|SEV_SEG_DATA[4]~43_combout\ & (\bcd7seg|Mux3~0_combout\)) # (!\driver|SEV_SEG_DATA[4]~43_combout\ & ((\bcd7seg|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|Mux3~0_combout\,
	datab => \bcd7seg|Mux3~1_combout\,
	datac => \driver|SEV_SEG_DATA[5]~26_combout\,
	datad => \driver|SEV_SEG_DATA[4]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux3~2_combout\);

-- Location: LC_X8_Y4_N3
\bcd7seg|Mux3~3\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux3~3_combout\ = (\bcd7seg|Mux3~2_combout\) # ((\driver|SEV_SEG_DATA[2]~98_combout\ & ((\bcd7seg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|Mux3~2_combout\,
	datab => \driver|SEV_SEG_DATA[2]~98_combout\,
	datad => \bcd7seg|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux3~3_combout\);

-- Location: LC_X8_Y4_N9
\bcd7seg|seg_out[3]\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|seg_out\(3) = ((GLOBAL(\bcd7seg|seg_out[6]~0_combout\) & ((\bcd7seg|Mux3~3_combout\))) # (!GLOBAL(\bcd7seg|seg_out[6]~0_combout\) & (\bcd7seg|seg_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \bcd7seg|seg_out\(3),
	datac => \bcd7seg|seg_out[6]~0_combout\,
	datad => \bcd7seg|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|seg_out\(3));

-- Location: LC_X4_Y4_N5
\bcd7seg|Mux4~3\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux4~3_combout\ = (\driver|SEV_SEG_DATA[3]~59_combout\ & (\driver|SEV_SEG_DATA[2]~98_combout\ & ((\driver|SEV_SEG_DATA[1]~71_combout\) # (!\driver|SEV_SEG_DATA[0]~86_combout\)))) # (!\driver|SEV_SEG_DATA[3]~59_combout\ & 
-- (\driver|SEV_SEG_DATA[1]~71_combout\ & (!\driver|SEV_SEG_DATA[2]~98_combout\ & !\driver|SEV_SEG_DATA[0]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[3]~59_combout\,
	datab => \driver|SEV_SEG_DATA[1]~71_combout\,
	datac => \driver|SEV_SEG_DATA[2]~98_combout\,
	datad => \driver|SEV_SEG_DATA[0]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux4~3_combout\);

-- Location: LC_X4_Y4_N0
\bcd7seg|Mux4~2\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux4~2_combout\ = (\driver|SEV_SEG_DATA[0]~86_combout\ & ((\driver|SEV_SEG_DATA[2]~98_combout\ & ((!\driver|SEV_SEG_DATA[1]~71_combout\))) # (!\driver|SEV_SEG_DATA[2]~98_combout\ & (\driver|SEV_SEG_DATA[3]~59_combout\)))) # 
-- (!\driver|SEV_SEG_DATA[0]~86_combout\ & (!\driver|SEV_SEG_DATA[3]~59_combout\ & (\driver|SEV_SEG_DATA[1]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3a44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[3]~59_combout\,
	datab => \driver|SEV_SEG_DATA[1]~71_combout\,
	datac => \driver|SEV_SEG_DATA[2]~98_combout\,
	datad => \driver|SEV_SEG_DATA[0]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux4~2_combout\);

-- Location: LC_X4_Y4_N1
\bcd7seg|Mux4~4\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux4~4_combout\ = (!\driver|SEV_SEG_DATA[5]~26_combout\ & ((\driver|SEV_SEG_DATA[4]~43_combout\ & ((\bcd7seg|Mux4~2_combout\))) # (!\driver|SEV_SEG_DATA[4]~43_combout\ & (\bcd7seg|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|Mux4~3_combout\,
	datab => \bcd7seg|Mux4~2_combout\,
	datac => \driver|SEV_SEG_DATA[5]~26_combout\,
	datad => \driver|SEV_SEG_DATA[4]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux4~4_combout\);

-- Location: LC_X4_Y4_N7
\bcd7seg|Mux4~5\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux4~5_combout\ = (!\driver|SEV_SEG_DATA[3]~59_combout\ & (\driver|SEV_SEG_DATA[2]~98_combout\ $ (((\driver|SEV_SEG_DATA[1]~71_combout\) # (\driver|SEV_SEG_DATA[0]~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0514",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[3]~59_combout\,
	datab => \driver|SEV_SEG_DATA[1]~71_combout\,
	datac => \driver|SEV_SEG_DATA[2]~98_combout\,
	datad => \driver|SEV_SEG_DATA[0]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux4~5_combout\);

-- Location: LC_X4_Y4_N2
\bcd7seg|Mux4~6\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux4~6_combout\ = (\bcd7seg|Mux4~4_combout\) # ((\bcd7seg|Mux4~5_combout\ & (!\driver|SEV_SEG_DATA[4]~43_combout\ & \driver|SEV_SEG_DATA[5]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|Mux4~4_combout\,
	datab => \bcd7seg|Mux4~5_combout\,
	datac => \driver|SEV_SEG_DATA[4]~43_combout\,
	datad => \driver|SEV_SEG_DATA[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux4~6_combout\);

-- Location: LC_X4_Y4_N9
\bcd7seg|seg_out[4]\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|seg_out\(4) = ((GLOBAL(\bcd7seg|seg_out[6]~0_combout\) & (\bcd7seg|Mux4~6_combout\)) # (!GLOBAL(\bcd7seg|seg_out[6]~0_combout\) & ((\bcd7seg|seg_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|Mux4~6_combout\,
	datac => \bcd7seg|seg_out[6]~0_combout\,
	datad => \bcd7seg|seg_out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|seg_out\(4));

-- Location: LC_X10_Y4_N9
\bcd7seg|Mux5~1\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux5~1_combout\ = (\driver|SEV_SEG_DATA[0]~86_combout\ & (\driver|SEV_SEG_DATA[2]~98_combout\ & ((\driver|SEV_SEG_DATA[4]~43_combout\) # (!\driver|SEV_SEG_DATA[3]~59_combout\)))) # (!\driver|SEV_SEG_DATA[0]~86_combout\ & 
-- (\driver|SEV_SEG_DATA[4]~43_combout\ $ (((\driver|SEV_SEG_DATA[2]~98_combout\ & \driver|SEV_SEG_DATA[3]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "94d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[0]~86_combout\,
	datab => \driver|SEV_SEG_DATA[2]~98_combout\,
	datac => \driver|SEV_SEG_DATA[4]~43_combout\,
	datad => \driver|SEV_SEG_DATA[3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux5~1_combout\);

-- Location: LC_X9_Y4_N7
\bcd7seg|Mux5~0\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux5~0_combout\ = (\driver|SEV_SEG_DATA[3]~59_combout\ & ((\driver|SEV_SEG_DATA[2]~98_combout\ & ((!\driver|SEV_SEG_DATA[4]~43_combout\))) # (!\driver|SEV_SEG_DATA[2]~98_combout\ & (\driver|SEV_SEG_DATA[0]~86_combout\)))) # 
-- (!\driver|SEV_SEG_DATA[3]~59_combout\ & (!\driver|SEV_SEG_DATA[0]~86_combout\ & (\driver|SEV_SEG_DATA[4]~43_combout\ $ (\driver|SEV_SEG_DATA[2]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[0]~86_combout\,
	datab => \driver|SEV_SEG_DATA[3]~59_combout\,
	datac => \driver|SEV_SEG_DATA[4]~43_combout\,
	datad => \driver|SEV_SEG_DATA[2]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux5~0_combout\);

-- Location: LC_X9_Y4_N9
\bcd7seg|Mux5~2\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux5~2_combout\ = (!\driver|SEV_SEG_DATA[5]~26_combout\ & ((\driver|SEV_SEG_DATA[1]~71_combout\ & ((\bcd7seg|Mux5~0_combout\))) # (!\driver|SEV_SEG_DATA[1]~71_combout\ & (\bcd7seg|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|Mux5~1_combout\,
	datab => \bcd7seg|Mux5~0_combout\,
	datac => \driver|SEV_SEG_DATA[5]~26_combout\,
	datad => \driver|SEV_SEG_DATA[1]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux5~2_combout\);

-- Location: LC_X9_Y4_N1
\bcd7seg|Mux5~3\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux5~3_combout\ = (\driver|SEV_SEG_DATA[4]~43_combout\) # ((\driver|SEV_SEG_DATA[3]~59_combout\) # ((\driver|SEV_SEG_DATA[0]~86_combout\ & \driver|SEV_SEG_DATA[2]~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[0]~86_combout\,
	datab => \driver|SEV_SEG_DATA[4]~43_combout\,
	datac => \driver|SEV_SEG_DATA[2]~98_combout\,
	datad => \driver|SEV_SEG_DATA[3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux5~3_combout\);

-- Location: LC_X9_Y4_N2
\bcd7seg|Mux5~4\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux5~4_combout\ = (\bcd7seg|Mux5~2_combout\) # ((!\driver|SEV_SEG_DATA[1]~71_combout\ & (!\bcd7seg|Mux5~3_combout\ & \driver|SEV_SEG_DATA[5]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "abaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|Mux5~2_combout\,
	datab => \driver|SEV_SEG_DATA[1]~71_combout\,
	datac => \bcd7seg|Mux5~3_combout\,
	datad => \driver|SEV_SEG_DATA[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux5~4_combout\);

-- Location: LC_X9_Y4_N8
\bcd7seg|seg_out[5]\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|seg_out\(5) = ((GLOBAL(\bcd7seg|seg_out[6]~0_combout\) & ((\bcd7seg|Mux5~4_combout\))) # (!GLOBAL(\bcd7seg|seg_out[6]~0_combout\) & (\bcd7seg|seg_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|seg_out\(5),
	datac => \bcd7seg|seg_out[6]~0_combout\,
	datad => \bcd7seg|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|seg_out\(5));

-- Location: LC_X12_Y4_N5
\bcd7seg|Mux6~3\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux6~3_combout\ = (\driver|SEV_SEG_DATA[2]~98_combout\ & (!\driver|SEV_SEG_DATA[1]~71_combout\ & (\driver|SEV_SEG_DATA[0]~86_combout\ $ (!\driver|SEV_SEG_DATA[3]~59_combout\)))) # (!\driver|SEV_SEG_DATA[2]~98_combout\ & 
-- (\driver|SEV_SEG_DATA[0]~86_combout\ & (\driver|SEV_SEG_DATA[1]~71_combout\ $ (!\driver|SEV_SEG_DATA[3]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6014",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[1]~71_combout\,
	datab => \driver|SEV_SEG_DATA[2]~98_combout\,
	datac => \driver|SEV_SEG_DATA[0]~86_combout\,
	datad => \driver|SEV_SEG_DATA[3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux6~3_combout\);

-- Location: LC_X12_Y4_N1
\bcd7seg|Mux6~2\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux6~2_combout\ = (\driver|SEV_SEG_DATA[3]~59_combout\ & ((\driver|SEV_SEG_DATA[2]~98_combout\) # (\driver|SEV_SEG_DATA[1]~71_combout\ $ (!\driver|SEV_SEG_DATA[0]~86_combout\)))) # (!\driver|SEV_SEG_DATA[3]~59_combout\ & 
-- ((\driver|SEV_SEG_DATA[1]~71_combout\ & (!\driver|SEV_SEG_DATA[2]~98_combout\)) # (!\driver|SEV_SEG_DATA[1]~71_combout\ & ((\driver|SEV_SEG_DATA[0]~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ed72",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[1]~71_combout\,
	datab => \driver|SEV_SEG_DATA[2]~98_combout\,
	datac => \driver|SEV_SEG_DATA[0]~86_combout\,
	datad => \driver|SEV_SEG_DATA[3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux6~2_combout\);

-- Location: LC_X12_Y4_N0
\bcd7seg|Mux6~4\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux6~4_combout\ = (!\driver|SEV_SEG_DATA[5]~26_combout\ & ((\driver|SEV_SEG_DATA[4]~43_combout\ & ((\bcd7seg|Mux6~2_combout\))) # (!\driver|SEV_SEG_DATA[4]~43_combout\ & (\bcd7seg|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|Mux6~3_combout\,
	datab => \driver|SEV_SEG_DATA[4]~43_combout\,
	datac => \bcd7seg|Mux6~2_combout\,
	datad => \driver|SEV_SEG_DATA[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux6~4_combout\);

-- Location: LC_X10_Y4_N1
\bcd7seg|Mux6~5\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux6~5_combout\ = (!\driver|SEV_SEG_DATA[0]~86_combout\ & (!\driver|SEV_SEG_DATA[3]~59_combout\ & (\driver|SEV_SEG_DATA[1]~71_combout\ $ (\driver|SEV_SEG_DATA[2]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0014",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|SEV_SEG_DATA[0]~86_combout\,
	datab => \driver|SEV_SEG_DATA[1]~71_combout\,
	datac => \driver|SEV_SEG_DATA[2]~98_combout\,
	datad => \driver|SEV_SEG_DATA[3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux6~5_combout\);

-- Location: LC_X12_Y4_N7
\bcd7seg|Mux6~6\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|Mux6~6_combout\ = (\bcd7seg|Mux6~4_combout\) # ((\driver|SEV_SEG_DATA[5]~26_combout\ & (!\driver|SEV_SEG_DATA[4]~43_combout\ & \bcd7seg|Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|Mux6~4_combout\,
	datab => \driver|SEV_SEG_DATA[5]~26_combout\,
	datac => \driver|SEV_SEG_DATA[4]~43_combout\,
	datad => \bcd7seg|Mux6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|Mux6~6_combout\);

-- Location: LC_X12_Y4_N8
\bcd7seg|seg_out[6]\ : maxv_lcell
-- Equation(s):
-- \bcd7seg|seg_out\(6) = ((GLOBAL(\bcd7seg|seg_out[6]~0_combout\) & (\bcd7seg|Mux6~6_combout\)) # (!GLOBAL(\bcd7seg|seg_out[6]~0_combout\) & ((\bcd7seg|seg_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bcd7seg|Mux6~6_combout\,
	datac => \bcd7seg|seg_out[6]~0_combout\,
	datad => \bcd7seg|seg_out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bcd7seg|seg_out\(6));

-- Location: LC_X3_Y4_N3
\driver|SEV_SEG_DRIVER[0]~0\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DRIVER[0]~0_combout\ = (\reset~combout\) # ((\driver|COUNTER\(1) & (\driver|COUNTER\(2) & \driver|COUNTER\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(1),
	datab => \driver|COUNTER\(2),
	datac => \driver|COUNTER\(0),
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DRIVER[0]~0_combout\);

-- Location: LC_X2_Y4_N4
\driver|SEV_SEG_DRIVER[1]~1\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DRIVER[1]~1_combout\ = (!\reset~combout\ & (((\driver|COUNTER\(0)) # (!\driver|COUNTER\(2))) # (!\driver|COUNTER\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00df",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(1),
	datab => \driver|COUNTER\(0),
	datac => \driver|COUNTER\(2),
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DRIVER[1]~1_combout\);

-- Location: LC_X2_Y4_N2
\driver|SEV_SEG_DRIVER[2]~2\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DRIVER[2]~2_combout\ = (!\reset~combout\ & ((\driver|COUNTER\(1)) # ((!\driver|COUNTER\(2)) # (!\driver|COUNTER\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00bf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(1),
	datab => \driver|COUNTER\(0),
	datac => \driver|COUNTER\(2),
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DRIVER[2]~2_combout\);

-- Location: LC_X2_Y4_N9
\driver|SEV_SEG_DRIVER[3]~3\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DRIVER[3]~3_combout\ = (\reset~combout\) # ((!\driver|COUNTER\(1) & (!\driver|COUNTER\(0) & \driver|COUNTER\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(1),
	datab => \driver|COUNTER\(0),
	datac => \driver|COUNTER\(2),
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DRIVER[3]~3_combout\);

-- Location: LC_X3_Y4_N9
\driver|SEV_SEG_DRIVER[4]~4\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DRIVER[4]~4_combout\ = (\reset~combout\) # ((\driver|COUNTER\(1) & (!\driver|COUNTER\(2) & \driver|COUNTER\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(1),
	datab => \driver|COUNTER\(2),
	datac => \driver|COUNTER\(0),
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DRIVER[4]~4_combout\);

-- Location: LC_X2_Y4_N8
\driver|SEV_SEG_DRIVER[5]~5\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DRIVER[5]~5_combout\ = (\reset~combout\) # ((\driver|COUNTER\(1) & (!\driver|COUNTER\(0) & !\driver|COUNTER\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(1),
	datab => \driver|COUNTER\(0),
	datac => \driver|COUNTER\(2),
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DRIVER[5]~5_combout\);

-- Location: LC_X2_Y4_N5
\driver|SEV_SEG_DRIVER[6]~6\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DRIVER[6]~6_combout\ = (\reset~combout\) # ((!\driver|COUNTER\(1) & (\driver|COUNTER\(0) & !\driver|COUNTER\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(1),
	datab => \driver|COUNTER\(0),
	datac => \driver|COUNTER\(2),
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DRIVER[6]~6_combout\);

-- Location: LC_X2_Y4_N6
\driver|SEV_SEG_DRIVER[7]~7\ : maxv_lcell
-- Equation(s):
-- \driver|SEV_SEG_DRIVER[7]~7_combout\ = (\reset~combout\) # ((!\driver|COUNTER\(1) & (!\driver|COUNTER\(0) & !\driver|COUNTER\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff01",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \driver|COUNTER\(1),
	datab => \driver|COUNTER\(0),
	datac => \driver|COUNTER\(2),
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \driver|SEV_SEG_DRIVER[7]~7_combout\);

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\state[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wsh|ALT_INV_curState\(0),
	oe => VCC,
	padio => ww_state(0));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\state[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wsh|ALT_INV_curState\(1),
	oe => VCC,
	padio => ww_state(1));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SevSegData[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \bcd7seg|seg_out\(0),
	oe => VCC,
	padio => ww_SevSegData(0));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SevSegData[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \bcd7seg|seg_out\(1),
	oe => VCC,
	padio => ww_SevSegData(1));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SevSegData[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \bcd7seg|seg_out\(2),
	oe => VCC,
	padio => ww_SevSegData(2));

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SevSegData[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \bcd7seg|seg_out\(3),
	oe => VCC,
	padio => ww_SevSegData(3));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SevSegData[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \bcd7seg|seg_out\(4),
	oe => VCC,
	padio => ww_SevSegData(4));

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SevSegData[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \bcd7seg|seg_out\(5),
	oe => VCC,
	padio => ww_SevSegData(5));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SevSegData[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \bcd7seg|seg_out\(6),
	oe => VCC,
	padio => ww_SevSegData(6));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SevSegDriver[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \driver|ALT_INV_SEV_SEG_DRIVER[0]~0_combout\,
	oe => VCC,
	padio => ww_SevSegDriver(0));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SevSegDriver[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \driver|SEV_SEG_DRIVER[1]~1_combout\,
	oe => VCC,
	padio => ww_SevSegDriver(1));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SevSegDriver[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \driver|SEV_SEG_DRIVER[2]~2_combout\,
	oe => VCC,
	padio => ww_SevSegDriver(2));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SevSegDriver[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \driver|ALT_INV_SEV_SEG_DRIVER[3]~3_combout\,
	oe => VCC,
	padio => ww_SevSegDriver(3));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SevSegDriver[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \driver|ALT_INV_SEV_SEG_DRIVER[4]~4_combout\,
	oe => VCC,
	padio => ww_SevSegDriver(4));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SevSegDriver[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \driver|ALT_INV_SEV_SEG_DRIVER[5]~5_combout\,
	oe => VCC,
	padio => ww_SevSegDriver(5));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SevSegDriver[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \driver|ALT_INV_SEV_SEG_DRIVER[6]~6_combout\,
	oe => VCC,
	padio => ww_SevSegDriver(6));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SevSegDriver[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \driver|ALT_INV_SEV_SEG_DRIVER[7]~7_combout\,
	oe => VCC,
	padio => ww_SevSegDriver(7));
END structure;


