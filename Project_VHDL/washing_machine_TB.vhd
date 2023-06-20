library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity washing_machine_TB is
end washing_machine_TB;

architecture Behavioral_TB of washing_machine_TB is 
    -- Signals
    signal CK_tb: std_logic;
    signal start_tb: std_logic;
    signal reset_tb: std_logic ;
    signal userProg_tb: std_logic_vector(4 downto 0);
    signal state_tb: std_logic_vector(1 downto 0);
    signal time_sn_tb: std_logic_vector(5 downto 0);

    -- Component declaration
    component washing_machine is 
        Port (
            CK      : in std_logic;
            start   : in std_logic;
            reset   : in std_logic;
            userProg: in std_logic_vector(4 downto 0);
            state   : out std_logic_vector(1 downto 0);
            time_sn : out std_logic_vector(5 downto 0)
        );
    end component;
	 

begin
	was_mac : washing_machine port map(CK => CK_tb, start => start_tb, reset => reset_tb
							,userProg => userProg_tb, state => state_tb, time_sn => time_sn_tb);
	ClockProcess: process
    begin
        while now < 120 ps loop
            CK_tb <= '1';
            wait for 5 ps;
            CK_tb <= '0';
            wait for 5 ps;
        end loop;
        wait;
    end process ClockProcess;

	tb : process
		constant period: time := 10.01 ps;
			begin
				
				start_tb <= '1';
				reset_tb <= '0';
				userProg_tb <= "10000";
							
				
            wait for period;
				
				assert (state_tb = "11" and time_sn_tb = "000000");
							
				wait for period;
				
				assert (state_tb = "00" and time_sn_tb = "000100");
							
				wait for period;
				
				assert (state_tb = "00" and time_sn_tb = "000011");
							
				wait for period;
				
				assert (state_tb = "00" and time_sn_tb = "000010");
							
				wait for period;
				
				assert (state_tb = "00" and time_sn_tb = "000001");
				
				wait for period;
				
				assert (state_tb = "01" and time_sn_tb = "000101");
							
				wait for period;
				
				assert (state_tb = "01" and time_sn_tb = "000100");
							
				wait for period;
				
				assert (state_tb = "01" and time_sn_tb = "000011");
							
				wait for period;
				
				assert (state_tb = "01" and time_sn_tb = "000010");
							
				wait for period;
				
				assert (state_tb = "01" and time_sn_tb = "000001");
							
				wait for period;
				
				assert (state_tb = "10" and time_sn_tb = "000010");
							
				wait for period;
				
				assert (state_tb = "10" and time_sn_tb = "000001")
				report "test failed for input combination 00" severity error;
 		
			wait;
		end process;
end Behavioral_TB;