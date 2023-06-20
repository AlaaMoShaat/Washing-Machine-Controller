LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY SevSeg_Driver_TB IS
END SevSeg_Driver_TB;

ARCHITECTURE TB_ARCH OF SevSeg_Driver_TB IS
    -- Component declaration
    COMPONENT SevSeg_Driver
    PORT (
        time_sn : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
        state : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        userProg : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        CLK : IN STD_LOGIC;
        start : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        SEV_SEG_DATA : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
        SEV_SEG_DRIVER : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
    END COMPONENT;

    -- Signal declarations
    SIGNAL time_sn_tb : STD_LOGIC_VECTOR (5 DOWNTO 0);
    SIGNAL state_tb : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL userProg_tb : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL CLK_tb : STD_LOGIC;
    SIGNAL start_tb : STD_LOGIC;
    SIGNAL reset_tb : STD_LOGIC;
    SIGNAL SEV_SEG_DATA_tb : STD_LOGIC_VECTOR(5 DOWNTO 0);
    SIGNAL SEV_SEG_DRIVER_tb : STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN
    -- Instantiate the SevSeg_Driver component
    UUT : SevSeg_Driver
    PORT MAP (
        time_sn => time_sn_tb,
        state => state_tb,
        userProg => userProg_tb,
        CLK => CLK_tb,
        start => start_tb,
        reset => reset_tb,
        SEV_SEG_DATA => SEV_SEG_DATA_tb,
        SEV_SEG_DRIVER => SEV_SEG_DRIVER_tb
    );

    -- Clock process
    CLK_process : PROCESS
    BEGIN
        CLK_tb <= '0';
        WAIT FOR 10 ns;
        CLK_tb <= '1';
        WAIT FOR 10 ns;
    END PROCESS;

    -- Stimulus process
    stimulus_process : PROCESS
    BEGIN
			time_sn_tb <= "000001";
        state_tb <= "00";
        userProg_tb <= "10000";
        start_tb <= '0';
		  reset_tb<= '0';
		  

			WAIT FOR 5 ns;
		  ASSERT SEV_SEG_DATA_tb = "001100"
            REPORT "Test case 1 failed: Incorrect SEV_SEG_DATA"
            SEVERITY ERROR;
			

		  
		  time_sn_tb <= "000001";
        state_tb <= "00";
        userProg_tb <= "10000";
        start_tb <= '0';
		  reset_tb<= '0';
		  


        -- Wait for stable output
        WAIT FOR 20 ns;
		  
		  ASSERT SEV_SEG_DATA_tb = "011000"
            REPORT "Test case 2 failed: Incorrect SEV_SEG_DATA"
            SEVERITY ERROR;
		  
		  
		  time_sn_tb <= "000001";
        state_tb <= "00";
        userProg_tb <= "10000";
        start_tb <= '0';
		  reset_tb <= '0';


        -- Wait for stable output
        WAIT FOR 20 ns;
		  ASSERT SEV_SEG_DATA_tb = "011101"
            REPORT "Test case 3 failed: Incorrect SEV_SEG_DATA"
            SEVERITY ERROR;
		  
		  time_sn_tb <= "000001";
        state_tb <= "00";
        userProg_tb <= "10000";
        start_tb <= '0';
		  reset_tb <= '0';


        -- Wait for stable output
        WAIT FOR 20 ns;
		  ASSERT SEV_SEG_DATA_tb = "011101"
            REPORT "Test case 4 failed: Incorrect SEV_SEG_DATA"
            SEVERITY ERROR;
		  
		  time_sn_tb <= "000001";
        state_tb <= "00";
        userProg_tb <= "10000";
        start_tb <= '0';
			reset_tb <= '0';

        -- Wait for stable output
        WAIT FOR 20 ns;
		  ASSERT SEV_SEG_DATA_tb = "011000"
            REPORT "Test case 5 failed: Incorrect SEV_SEG_DATA"
            SEVERITY ERROR;
		  
		  time_sn_tb <= "000001";
        state_tb <= "00";
        userProg_tb <= "10000";
        start_tb <= '0';
		  reset_tb <= '0';


        -- Wait for stable output
        WAIT FOR 20 ns;
		  ASSERT SEV_SEG_DATA_tb = "010111"
            REPORT "Test case 6 failed: Incorrect SEV_SEG_DATA"
            SEVERITY ERROR;
				
				time_sn_tb <= "000001";
        state_tb <= "00";
        userProg_tb <= "10000";
        start_tb <= '0';
		  reset_tb <= '0';



        -- Wait for stable output
        WAIT FOR 20 ns;
		  ASSERT SEV_SEG_DATA_tb = "000001"
            REPORT "Test case 7 failed: Incorrect SEV_SEG_DATA"
            SEVERITY ERROR;
				
				time_sn_tb <= "000001";
        state_tb <= "00";
        userProg_tb <= "10000";
        start_tb <= '0';
		  reset_tb <= '0';


        -- Wait for stable output
        WAIT FOR 20 ns;
		  ASSERT SEV_SEG_DATA_tb = "000001"
            REPORT "Test case 8 failed: Incorrect SEV_SEG_DATA"
            SEVERITY ERROR;
			

        WAIT;
    END PROCESS;

END TB_ARCH;
