library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY SevSeg_Driver IS

 PORT ( 
	time_sn : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
	state : IN STD_LOGIC_VECTOR(1 downto 0);
	userProg : IN STD_LOGIC_VECTOR(4 downto 0);
	CLK : IN STD_LOGIC;
	start : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	SEV_SEG_DATA : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	SEV_SEG_DRIVER : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
 
END SevSeg_Driver;

ARCHITECTURE BEHAVIORAL OF SevSeg_Driver IS


	signal A : std_logic_vector(5 downto 0);
	signal B : std_logic_vector(5 downto 0);
	signal C : std_logic_vector(5 downto 0);
	signal D : std_logic_vector(5 downto 0);
	signal E : std_logic_vector(5 downto 0);
	signal L : std_logic_vector(5 downto 0);
	signal W : std_logic_vector(5 downto 0);
	signal N : std_logic_vector(5 downto 0); 
	signal P : std_logic_vector(5 downto 0);
	signal R : std_logic_vector(5 downto 0);
	signal S : std_logic_vector(5 downto 0);
	signal T : std_logic_vector(5 downto 0);
	signal H : std_logic_vector(5 downto 0);
	signal K : std_logic_vector(5 downto 0);
	signal O : std_logic_vector(5 downto 0);
	signal I : std_logic_vector(5 downto 0);
	signal Blank : std_logic_vector(5 downto 0);

	SIGNAL COUNTER : unsigned(2 DOWNTO 0) := "000";

	BEGIN
	--INCREMENT COUNTER

		A <= "001010"; --A 
		B <= "001011"; --B 
		C <= "001100"; --C 
		D <= "001101"; --D 
		E <= "001110"; --E
		L <= "010101"; --L
		W <= "100000"; -- W
		N <= "010111"; -- N 
		P <= "011001"; -- P
		R <= "011011"; -- R
		S <= "011100"; -- S   
		T <= "011101"; -- T
		H <= "010001"; -- H
		K <= "010100"; -- K
		O <= "011000"; -- O
		I <= "010010"; -- I
		Blank <= "100100"; -- Blank

		PROCESS_CLK : PROCESS(CLK)
		BEGIN

			if rising_edge(CLK) then
				if COUNTER = "111" then
					COUNTER <= "000";
				ELSE
					COUNTER <= COUNTER + 1;
				end if;
			end if;

		END PROCESS PROCESS_CLK;
		
			SEV_SEG_DATA <= 
			"000000" WHEN reset = '1' ELSE

			C		   WHEN COUNTER = "000" and userProg = "10000" and start = '0' ELSE
			O        WHEN COUNTER = "001" and userProg = "10000" and start = '0' ELSE
			T		   WHEN COUNTER = "010" and userProg = "10000" and start = '0' ELSE
			T		   WHEN COUNTER = "011" and userProg = "10000" and start = '0' ELSE
			O        WHEN COUNTER = "100" and userProg = "10000" and start = '0' ELSE
			N	      WHEN COUNTER = "101" and userProg = "10000" and start = '0' ELSE
			"000001" WHEN COUNTER = "110" and userProg = "10000" and start = '0' ELSE
			"000001" WHEN COUNTER = "111" and userProg = "10000" and start = '0' ELSE
			
			
			R		  WHEN COUNTER = "000" and userProg = "01000" and start = '0' ELSE
			A	     WHEN COUNTER = "001" and userProg = "01000" and start = '0' ELSE
			P		  WHEN COUNTER = "010" and userProg = "01000" and start = '0' ELSE
			I       WHEN COUNTER = "011" and userProg = "01000" and start = '0' ELSE
			D  	  WHEN COUNTER = "100" and userProg = "01000" and start = '0' ELSE
			Blank   WHEN COUNTER = "101" and userProg = "01000" and start = '0' ELSE
			Blank   WHEN COUNTER = "110" and userProg = "01000" and start = '0' ELSE
			"000101" WHEN COUNTER = "111" and userProg = "01000" and start = '0' ELSE
			
			
			S		  WHEN COUNTER = "000" and userProg = "00100" and start = '0' ELSE
			L	     WHEN COUNTER = "001" and userProg = "00100" and start = '0' ELSE
			O		  WHEN COUNTER = "010" and userProg = "00100" and start = '0' ELSE
			W		  WHEN COUNTER = "011" and userProg = "00100" and start = '0' ELSE
			Blank   WHEN COUNTER = "100" and userProg = "00100" and start = '0' ELSE
			Blank   WHEN COUNTER = "101" and userProg = "00100" and start = '0' ELSE
			"000001" WHEN COUNTER = "110" and userProg = "00100" and start = '0' ELSE
			"000101" WHEN COUNTER = "111" and userProg = "00100" and start = '0' ELSE

			D		  WHEN COUNTER = "000" and userProg = "00010" and start = '0' ELSE
			R       WHEN COUNTER = "001" and userProg = "00010" and start = '0' ELSE
			A		  WHEN COUNTER = "010" and userProg = "00010" and start = '0' ELSE
			I       WHEN COUNTER = "011" and userProg = "00010" and start = '0' ELSE
			N  	  WHEN COUNTER = "100" and userProg = "00010" and start = '0' ELSE
			Blank   WHEN COUNTER = "101" and userProg = "00010" and start = '0' ELSE
			Blank   WHEN COUNTER = "110" and userProg = "00010" and start = '0' ELSE
			"000111" WHEN COUNTER = "111" and userProg = "00010" and start = '0' ELSE

			W		  WHEN COUNTER = "000" and userProg = "00001" and start = '0' ELSE
			H		  WHEN COUNTER = "010" and userProg = "00001" and start = '0' ELSE
			I		  WHEN COUNTER = "011" and userProg = "00001" and start = '0' ELSE
			T  	  WHEN COUNTER = "100" and userProg = "00001" and start = '0' ELSE
			E 		  WHEN COUNTER = "101" and userProg = "00001" and start = '0' ELSE
			"000001" WHEN COUNTER = "110" and userProg = "00001" and start = '0' ELSE
			"000100" WHEN COUNTER = "111" and userProg = "00001" and start = '0' ELSE

			

			
			
	-----------------------------------------------------------

			I       WHEN COUNTER = "000" and state = "11" and start = '1' ELSE
			D       WHEN COUNTER = "001" and state = "11" and start = '1' ELSE
			L		  WHEN COUNTER = "010" and state = "11" and start = '1' ELSE
			E		  WHEN COUNTER = "011" and state = "11" and start = '1' ELSE
			Blank   WHEN COUNTER = "100" and state = "11" and start = '1' ELSE
			Blank   WHEN COUNTER = "101" and state = "11" and start = '1' ELSE
			Blank   WHEN COUNTER = "110" and state = "11" and start = '1' ELSE
			Blank   WHEN COUNTER = "111" and state = "11" and start = '1' ELSE
			

			W       WHEN COUNTER = "000" and state = "00" and start = '1' ELSE
			A		  WHEN COUNTER = "010" and state = "00" and start = '1' ELSE
			S		  WHEN COUNTER = "011" and state = "00" and start = '1' ELSE
			H  	  WHEN COUNTER = "100" and state = "00" and start = '1' ELSE
			Blank   WHEN COUNTER = "101" and state = "00" and start = '1' ELSE
			Blank	  WHEN COUNTER = "110" and state = "00" and start = '1' ELSE
			time_sn WHEN COUNTER = "111" and state = "00" and start = '1' ELSE

			S       WHEN COUNTER = "000" and state = "01" and start = '1' ELSE
			P   	  WHEN COUNTER = "001" and state = "01" and start = '1' ELSE
			I       WHEN COUNTER = "010" and state = "01" and start = '1' ELSE
			N		  WHEN COUNTER = "011" and state = "01" and start = '1' ELSE
			Blank	  WHEN COUNTER = "100" and state = "01" and start = '1' ELSE
			Blank	  WHEN COUNTER = "101" and state = "01" and start = '1' ELSE
			Blank	  WHEN COUNTER = "110" and state = "01" and start = '1' ELSE
			time_sn WHEN COUNTER = "111" and state = "01" and start = '1' ELSE

			R       WHEN COUNTER = "000" and state = "10" and start = '1' ELSE
			I       WHEN COUNTER = "001" and state = "10" and start = '1' ELSE
			N		  WHEN COUNTER = "010" and state = "10" and start = '1' ELSE
			S		  WHEN COUNTER = "011" and state = "10" and start = '1' ELSE
			E		  WHEN COUNTER = "100" and state = "10" and start = '1' ELSE
			Blank	  WHEN COUNTER = "101" and state = "10" and start = '1' ELSE
			Blank	  WHEN COUNTER = "110" and state = "10" and start = '1' ELSE
			time_sn WHEN COUNTER = "111" and state = "10" and start = '1' ELSE
			Blank;
			
			--choose any 7_seg to write on it
			SEV_SEG_DRIVER <=
			"00000000" WHEN reset = '1' ELSE
			"01111111" WHEN COUNTER = "000" ELSE
			"10111111" WHEN COUNTER = "001" ELSE
			"11011111" WHEN COUNTER = "010" ELSE
			"11101111" WHEN COUNTER = "011" ELSE
			"11110111" WHEN COUNTER = "100" ELSE
			"11111011" WHEN COUNTER = "101" ELSE
			"11111101" WHEN COUNTER = "110" ELSE
			"11111110" WHEN COUNTER = "111" ELSE
			"11111111";
END BEHAVIORAL;