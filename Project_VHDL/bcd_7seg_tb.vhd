library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd_7seg_tb is
end bcd_7seg_tb;

architecture testbench of bcd_7seg_tb is

    component bcd_7seg
    port (
        seg_in : in std_logic_vector (5 downto 0);
        reset : in std_logic;
        seg_out : out std_logic_vector (6 downto 0)
    );
    end component;
    

    signal seg_in_tb : std_logic_vector (5 downto 0);
    signal reset_tb : std_logic;
    signal seg_out_tb : std_logic_vector (6 downto 0);
    
begin
 
    uut: bcd_7seg
    port map (
        seg_in => seg_in_tb,
        reset => reset_tb,
        seg_out => seg_out_tb
    );
    

    stimulus: process
    begin

        reset_tb <= '0';
        
        -- Test cases
        seg_in_tb <= "000000"; -- BCD input for 0
        wait for 10 ns;
        assert seg_out_tb = "0000001" report "Test case failed for BCD input 0" severity error;
        
        seg_in_tb <= "000001"; -- BCD input for 1
        wait for 10 ns;
        assert seg_out_tb = "1001111" report "Test case failed for BCD input 1" severity error;
        
        seg_in_tb <= "000010"; -- BCD input for 2
        wait for 10 ns;
        assert seg_out_tb = "0010010" report "Test case failed for BCD input 2" severity error;
        
        seg_in_tb <= "000011"; -- BCD input for 3
        wait for 10 ns;
        assert seg_out_tb = "0000110" report "Test case failed for BCD input 3" severity error;
        
        seg_in_tb <= "000100"; -- BCD input for 4
        wait for 10 ns;
        assert seg_out_tb = "1001100" report "Test case failed for BCD input 4" severity error;
        
        seg_in_tb <= "000101"; -- BCD input for 5
        wait for 10 ns;
        assert seg_out_tb = "0100100" report "Test case failed for BCD input 5" severity error;
        
        seg_in_tb <= "000110"; -- BCD input for 6
        wait for 10 ns;
        assert seg_out_tb = "0100000" report "Test case failed for BCD input 6" severity error;
        
        seg_in_tb <= "000111"; -- BCD input for 7
        wait for 10 ns;
        assert seg_out_tb = "0001111" report "Test case failed for BCD input 7" severity error;
        
        seg_in_tb <= "001000"; -- BCD input for 8
        wait for 10 ns;
        assert seg_out_tb = "0000000" report "Test case failed for BCD input 8" severity error;
        
        seg_in_tb <= "001001"; -- BCD input for 9
        wait for 10 ns;
        assert seg_out_tb = "0001100" report "Test case failed for BCD input 9" severity error;
        
        seg_in_tb <= "001010"; -- BCD input for A
        wait for 10 ns;
        assert seg_out_tb = "0001000" report "Test case failed for BCD input A" severity error;
        
        seg_in_tb <= "001011"; -- BCD input for B
        wait for 10 ns;
        assert seg_out_tb = "1100000" report "Test case failed for BCD input B" severity error;
        
        seg_in_tb <= "001100"; -- BCD input for C
        wait for 10 ns;
        assert seg_out_tb = "0110001" report "Test case failed for BCD input C" severity error;
        
        seg_in_tb <= "001101"; -- BCD input for D
        wait for 10 ns;
        assert seg_out_tb = "1000010" report "Test case failed for BCD input D" severity error;
        
        seg_in_tb <= "001110"; -- BCD input for E
        wait for 10 ns;
        assert seg_out_tb = "0110000" report "Test case failed for BCD input E" severity error;
        
        seg_in_tb <= "001111"; -- BCD input for F
        wait for 10 ns;
        assert seg_out_tb = "0111000" report "Test case failed for BCD input F" severity error;
        
        seg_in_tb <= "010000"; -- BCD input for G
        wait for 10 ns;
        assert seg_out_tb = "0100001" report "Test case failed for BCD input G" severity error;
        
        seg_in_tb <= "010001"; -- BCD input for H
        wait for 10 ns;
        assert seg_out_tb = "1001000" report "Test case failed for BCD input H" severity error;
        
        seg_in_tb <= "010010"; -- BCD input for I
        wait for 10 ns;
        assert seg_out_tb = "1111001" report "Test case failed for BCD input I" severity error;
        
        seg_in_tb <= "010011"; -- BCD input for J
        wait for 10 ns;
        assert seg_out_tb = "1000111" report "Test case failed for BCD input J" severity error;
        
        seg_in_tb <= "010100"; -- BCD input for K
        wait for 10 ns;
        assert seg_out_tb = "0101000" report "Test case failed for BCD input K" severity error;
        
        seg_in_tb <= "010101"; -- BCD input for L
        wait for 10 ns;
        assert seg_out_tb = "1110001" report "Test case failed for BCD input L" severity error;
        
        seg_in_tb <= "010110"; -- BCD input for M
        wait for 10 ns;
        assert seg_out_tb = "0010101" report "Test case failed for BCD input M" severity error;
        
        seg_in_tb <= "010111"; -- BCD input for N
        wait for 10 ns;
        assert seg_out_tb = "0001001" report "Test case failed for BCD input N" severity error;
        
        seg_in_tb <= "011000"; -- BCD input for O
        wait for 10 ns;
        assert seg_out_tb = "1100010" report "Test case failed for BCD input O" severity error;
        
        seg_in_tb <= "011001"; -- BCD input for P
        wait for 10 ns;
        assert seg_out_tb = "0011000" report "Test case failed for BCD input P" severity error;
       
     
        seg_in_tb <= "100011"; -- BCD input for Z
        wait for 10 ns;
        assert seg_out_tb = "0010010" report "Test case failed for BCD input Z" severity error;
        
        seg_in_tb <= "100100"; -- BCD input for Blank
        wait for 10 ns;
        assert seg_out_tb = "1111111" report "Test case failed for BCD input Blank" severity error;
        
        -- Disable the circuit
        reset_tb <= '1';
        
        -- Wait for some time
        wait for 10 ns;
        
        -- End the simulation
        wait;
    end process;
    
end testbench;