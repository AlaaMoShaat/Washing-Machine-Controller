LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
ENTITY clock_div IS
	PORT (
		clk_in : IN std_logic;
		reset : IN std_logic;
		clk_out : OUT std_logic
);
END ENTITY;
ARCHITECTURE behavioral OF clock_div IS
	signal clk_out_sig : std_logic := '0';
	signal counter : integer := 0;
	begin
		process (clk_in)
		begin
			if rising_edge(clk_in) then
				counter <= counter + 1;
				if reset = '1' then
					clk_out_sig <= '0';
				elsif counter = 250 then 
					clk_out_sig <= not clk_out_sig ;
					counter <= 0;
			end if;		
		end if;
	end process;
	clk_out <= clk_out_sig;
end behavioral;