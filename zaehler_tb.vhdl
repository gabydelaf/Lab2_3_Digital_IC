LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY tb_sseg_zaehler IS
END tb_sseg_zaehler;
 
ARCHITECTURE behavior OF tb_sseg_zaehler IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sseg_zaehler
    PORT(
         clk : IN  std_logic;
         nres : IN  std_logic;
         Out0 : OUT  std_logic;
         Out1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal nres : std_logic := '0';

 	--Outputs
   signal Out0 : std_logic;
   signal Out1 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sseg_zaehler PORT MAP (
          clk => clk,
          nres => nres,
          Out0 => Out0,
          Out1 => Out1
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		nres <= '0'; wait for 100ns; 
      nres <= '1';
		
      wait;
   end process;

END;
