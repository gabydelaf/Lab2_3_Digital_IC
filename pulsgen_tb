LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY pulsgen_tb IS
END pulsgen_tb;
 
ARCHITECTURE behavior OF pulsgen_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sseg_pulsgen
    PORT(
         clk_in : IN  std_logic;
         nres : IN  std_logic;
         pulsout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_in : std_logic := '0';
   signal nres : std_logic := '0';

 	--Outputs
   signal pulsout : std_logic;

   -- Clock period definitions
   constant clk_in_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sseg_pulsgen PORT MAP (
          clk_in => clk_in,
          nres => nres,
          pulsout => pulsout
        );

   -- Clock process definitions
   clk_in_process :process
   begin
		clk_in <= '0';
		wait for clk_in_period/2;
		clk_in <= '1';
		wait for clk_in_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      --clk_in <= '0'; wait for 1ms; 
		nres <= '1'; wait for 3ms; 
		nres <= '0';
      wait;
   end process;

END;
