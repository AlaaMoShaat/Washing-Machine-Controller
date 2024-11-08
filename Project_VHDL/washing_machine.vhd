	library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	USE IEEE.STD_LOGIC_UNSIGNED.ALL;
	USE IEEE.NUMERIC_STD.ALL;



	entity washing_machine is 
	Port(
		CK 	: in std_logic;
		start : in std_logic;
		reset : in std_logic;
		userProg : in std_logic_vector(4 downto 0);
		state : out std_logic_vector(1 downto 0);
		time_sn  : out std_logic_vector(5 downto 0));
	end washing_machine;

	architecture Behavioral of washing_machine is
	
	signal washC : integer;
	signal spinC : integer;
	signal rinseC : integer;

	begin
		
	with userProg select washC <= 
	4 when "10000",
	2 when "01000",
	5 when "00100",
	0 when "00010",
	5 when "00001",
	0 when others;

	with userProg select spinC <= 
	5 when "10000",
	2 when "01000",
	7 when "00100",
	5 when "00010",
	5 when "00001",
	0 when others;

	with userProg select rinseC <= 
	2 when "10000",
	1 when "01000",
	3 when "00100",
	2 when "00010",
	4 when "00001",
	0 when others;
	
	process(CK)

	variable curState : unsigned(1 downto 0) := "11";
	variable zero 		: std_logic := '0';
	variable counter 	: integer;
	variable hold : std_logic := '0';

	begin

		if rising_edge(CK) then
			
			if curState = "11" and start = '1' and hold = '0' then
				if washC = 0 then
					counter := spinC;
					curState := "01";
				else
					counter := washC;
					curState := "00";
				end if;
				
				hold := '1';
			else
				curState := curState;
			end if;
			
			if reset = '1' then
				curState := "11";
				zero := '0';
				counter := 0;
			end if; 
			
			if curState = "00" and zero = '0' and hold = '0' then
				counter := counter - 1;
			
				if counter = 0 then
					zero := '1';
					counter := spinC;
				end if;
			end if;
		
			if curState = "01" and zero = '0' and hold = '0' then
				counter := counter - 1;
				
				if counter = 0 then
					zero := '1';
					counter := rinseC;
				end if;
			end if;
			
			if curState = "10" and zero = '0' then
				counter := counter - 1;

				if counter = 0 then
					curState := "11";
				end if;
			end if;
			
			-- when state end then counter = 0 and zero = 1
			if zero = '1' then
				curState := curState + "01";
				zero := '0';
			end if;
		end if;
		hold := '0';
		state <= std_logic_vector(curState);
		time_sn <= std_logic_vector(to_unsigned(counter, time_sn'length));
		
	end process;

end Behavioral;