LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;

ENTITY clock_div_TB IS
END clock_div_TB;

ARCHITECTURE TB_ARCH OF clock_div_TB IS
    -- Component declaration
    COMPONENT clock_div
    PORT (
        clk_in : IN std_logic;
        reset : IN std_logic;
        clk_out : OUT std_logic
    );
    END COMPONENT;

    -- Signals
    signal clk_in_tb : std_logic := '0';
    signal reset_tb : std_logic := '0';
    signal clk_out_tb : std_logic;

BEGIN

    -- Instantiate the component
    uut: clock_div
    PORT MAP (
        clk_in => clk_in_tb,
        reset => reset_tb,
        clk_out => clk_out_tb
    );

    -- Clock process
    clk_process: process
    begin
            for i in 1 to 251 loop
                clk_in_tb <= '0';
                wait for 10 ns;
                clk_in_tb <= '1';
                wait for 10 ns;
					 			 
            end loop;
				assert clk_out_tb = '1'
				REPORT "Test case 0 failed: Incorrect "
				SEVERITY ERROR;
				
				for i in 1 to 251 loop
                clk_in_tb <= '0';
                wait for 10 ns;
                clk_in_tb <= '1';
                wait for 10 ns;
				end loop;
				assert clk_out_tb = '0'
				REPORT "Test case 0 failed: Incorrect "
				SEVERITY ERROR;
				wait;
	
    end process;


END TB_ARCH;