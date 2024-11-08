library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity main is

Port (
	Clock : in std_logic;
	start : in std_logic;
	reset : in std_logic;
	state 	: out std_logic_vector(1 downto 0);
	userProg : in std_logic_vector(4 downto 0);
	SevSegData : out std_logic_vector(6 downto 0);
	SevSegDriver : out std_logic_vector(7 downto 0));	
	
end main;

architecture Behavioral of main is

signal time_sn : std_logic_vector(5 downto 0);
signal dataSevSeg : std_logic_vector(5 downto 0);
signal newClk : std_logic;
signal tempState : std_logic_vector (1 downto 0);

	Component washing_machine 
		Port (
			CK 	: in std_logic;
			start : in std_logic;
			reset : in std_logic;
			userProg : in std_logic_vector(4 downto 0);
			state : out std_logic_vector(1 downto 0);
			time_sn  : out std_logic_vector(5 downto 0));
		end Component;
	
	Component clock_div
	PORT(
		clk_in : IN std_logic;
		reset : IN std_logic;
		clk_out : OUT std_logic         
		);
	END Component;
	
	COMPONENT bcd_7seg
	PORT(
		seg_in : in std_logic_vector (5 downto 0); --BCD input
		reset : in std_logic;
		seg_out: out std_logic_vector(6 downto 0)
		);
	END COMPONENT;
	
	COMPONENT SevSeg_Driver
	PORT(
		time_sn : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		state : IN STD_LOGIC_VECTOR(1 downto 0);
		userProg : IN STD_LOGIC_VECTOR(4 downto 0);
		CLK : IN STD_LOGIC;
		start : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		SEV_SEG_DATA : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		SEV_SEG_DRIVER : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	END COMPONENT;

begin

	clk : clock_div Port Map(Clock, reset, newClk);
	wsh : washing_machine Port Map(newClk, start, reset, userProg, tempState, time_sn);
	driver : SevSeg_Driver PORT MAP(time_sn, tempState, userProg, Clock, start, reset, dataSevSeg, SevsegDriver);
	bcd7seg : bcd_7seg PORT MAP(dataSevSeg, reset ,SevSegData);
	
	state <= tempState;
	
end Behavioral;