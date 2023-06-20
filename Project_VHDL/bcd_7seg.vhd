library ieee;
use ieee.std_logic_1164.all;
entity bcd_7seg is
 port (
	 seg_in : in std_logic_vector (5 downto 0); --BCD input
	 reset : in std_logic;
	 seg_out: out std_logic_vector(6 downto 0) 
 );
end bcd_7seg;
architecture conditional of bcd_7seg is

begin
	process (seg_in)
	begin
		if reset = '0' then
			CASE seg_in IS
				WHEN "000000" => seg_out <= "0000001"; --0
				WHEN "000001" => seg_out <= "1001111"; --1
				WHEN "000010" => seg_out <= "0010010"; --2
				WHEN "000011" => seg_out <= "0000110"; --3
				WHEN "000100" => seg_out <= "1001100"; --4
				WHEN "000101" => seg_out <= "0100100"; --5
				WHEN "000110" => seg_out <= "0100000"; --6
				WHEN "000111" => seg_out <= "0001111"; --7
				WHEN "001000" => seg_out <= "0000000"; --8
				WHEN "001001" => seg_out <= "0001100"; --9
				WHEN "001010" => seg_out <= "0001000"; --A
				WHEN "001011" => seg_out <= "1100000"; --B
				WHEN "001100" => seg_out <= "0110001"; --C
				WHEN "001101" => seg_out <= "1000010"; --D
				WHEN "001110" => seg_out <= "0110000"; --E
				WHEN "001111" => seg_out <= "0111000"; --F
				
				WHEN "010000" => seg_out <= "0100001"; --G
				WHEN "010001" => seg_out <= "1001000"; --H
				WHEN "010010" => seg_out <= "1111001"; --i
				WHEN "010011" => seg_out <= "1000111"; --J
				WHEN "010100" => seg_out <= "0101000"; --k
				WHEN "010101" => seg_out <= "1110001"; --L
				WHEN "010110" => seg_out <= "0010101"; --m
				WHEN "010111" => seg_out <= "0001001"; --N
				WHEN "011000" => seg_out <= "1100010"; --O
				WHEN "011001" => seg_out <= "0011000"; --P
				WHEN "011010" => seg_out <= "0001100"; --q
				WHEN "011011" => seg_out <= "1111010"; --R
				WHEN "011100" => seg_out <= "1001111"; --s
				WHEN "011101" => seg_out <= "1110000"; --T
				WHEN "011110" => seg_out <= "1000001"; --U
				WHEN "011111" => seg_out <= "1000101"; --v
				WHEN "100000" => seg_out <= "0100011"; --w
				WHEN "100001" => seg_out <= "0110110";	--x
				WHEN "100010" => seg_out <= "1010100"; --y
				WHEN "100011" => seg_out <= "0010010"; --z
				WHEN "100100" => seg_out <= "1111111"; --Blank
				WHEN OTHERS => NULL;
			END CASE;
		else null;
	end if;
END PROCESS;
end conditional;