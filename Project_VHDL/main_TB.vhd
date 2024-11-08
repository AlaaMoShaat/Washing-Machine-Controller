library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity main_TB is
end main_TB;

architecture Behavioral_TB of main_TB is

    -- Signals
    signal Clock_tb: std_logic;
    signal start_tb: std_logic;
    signal reset_tb: std_logic;
    signal state_tb: std_logic_vector(1 downto 0);
    signal userProg_tb: std_logic_vector(4 downto 0);
    signal SevSegData_tb: std_logic_vector(6 downto 0);
    signal SevSegDriver_tb: std_logic_vector(7 downto 0);


    -- Components declaration
    component main 
        Port (
				Clock : in std_logic;
				start : in std_logic;
				reset : in std_logic;
				state 	: out std_logic_vector(1 downto 0);
				userProg : in std_logic_vector(4 downto 0);
				SevSegData : out std_logic_vector(6 downto 0);
				SevSegDriver : out std_logic_vector(7 downto 0));	
    end component;

    begin
		u1 : main port map(Clock => Clock_tb, start => start_tb,
						reset => reset_tb,state => state_tb, userProg => userProg_tb , 
						 SevSegData => SevSegData_tb,SevSegDriver => SevSegDriver_tb);
						 
	ClockProcess: process
    begin
        while now < 60 ns loop
            Clock_tb <= '1';
            wait for 5 ps;
            Clock_tb <= '0';
            wait for 5 ps;
        end loop;
        wait;
    end process ClockProcess;
	 
	 tb : process
			begin
			
				start_tb <= '1';
				reset_tb <= '0';
				userProg_tb <= "10000";
				
				wait for 1 ps;
				assert (state_tb = "11" and SevSegData_tb = "1111001" and SevSegDriver_tb = "01111111");
				wait for 10 ns;
				assert (state_tb = "00" and SevSegData_tb = "0100011" and SevSegDriver_tb = "01111111");
				wait for 20 ns;
				assert (state_tb = "01" and SevSegData_tb = "1001111" and SevSegDriver_tb = "01111111");
				wait for 31 ns;
				assert (state_tb = "11" and SevSegData_tb = "1111111" and SevSegDriver_tb = "11110111");
				wait;
        end process;
end Behavioral_TB;