LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY demux_tb IS
END demux_tb;
 
ARCHITECTURE behavior OF demux_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sseg_demux
    PORT(
         sseg_in : IN  std_logic_vector(6 downto 0);
         nsel0 : IN  std_logic;
         nsel1 : IN  std_logic;
         nsel2 : IN  std_logic;
         einer_out : OUT  std_logic_vector(6 downto 0);
         zehner_out : OUT  std_logic_vector(6 downto 0);
         hundert_out : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sseg_in : std_logic_vector(6 downto 0) := (others => '0');
   signal nsel0 : std_logic := '0';
   signal nsel1 : std_logic := '0';
   signal nsel2 : std_logic := '0';

 	--Outputs
   signal einer_out : std_logic_vector(6 downto 0);
   signal zehner_out : std_logic_vector(6 downto 0);
   signal hundert_out : std_logic_vector(6 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sseg_demux PORT MAP (
          sseg_in => sseg_in,
          nsel0 => nsel0,
          nsel1 => nsel1,
          nsel2 => nsel2,
          einer_out => einer_out,
          zehner_out => zehner_out,
          hundert_out => hundert_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
      sseg_in <= "1111111"; 
		nsel0 <= '0';
		nsel1 <= '1';  
		nsel2 <= '1'; wait for 500ns;
		
		nsel0 <= '1';
		nsel1 <= '0';  
		nsel2 <= '0'; wait for 100ns;
		
		nsel0 <= '1';
		nsel1 <= '0';  
		nsel2 <= '1'; wait for 100ns;
		
		nsel0 <= '1';
		nsel1 <= '1';  
		nsel2 <= '0'; wait for 100ns;
		
		nsel0 <= '1';
		nsel1 <= '1';  
		nsel2 <= '1'; wait for 100ns;
		
		nsel0 <= '0';
		nsel1 <= '0';  
		nsel2 <= '0'; wait for 100ns;

      wait;
   end process;

END;
