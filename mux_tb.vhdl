LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux_tb IS
END mux_tb;
 
ARCHITECTURE behavior OF mux_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sseg_mux
    PORT(
         in0 : IN  std_logic_vector(3 downto 0);
         in1 : IN  std_logic_vector(3 downto 0);
         in2 : IN  std_logic_vector(3 downto 0);
         nsel0 : IN  std_logic;
         nsel1 : IN  std_logic;
         nsel2 : IN  std_logic;
         out1 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in0 : std_logic_vector(3 downto 0) := (others => '0');
   signal in1 : std_logic_vector(3 downto 0) := (others => '0');
   signal in2 : std_logic_vector(3 downto 0) := (others => '0');
   signal nsel0 : std_logic := '0';
   signal nsel1 : std_logic := '0';
   signal nsel2 : std_logic := '0';

 	--Outputs
   signal out1 : std_logic_vector(3 downto 0);
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sseg_mux PORT MAP (
          in0 => in0,
          in1 => in1,
          in2 => in2,
          nsel0 => nsel0,
          nsel1 => nsel1,
          nsel2 => nsel2,
          out1 => out1
        );

   -- Stimulus process
   stim_proc: process
   begin		
      in0 <= "0000";
		in1 <= "0000";
		in2 <= "0000"; wait for 100ns;
		
		in0 <= "0001";
		in1 <= "0010";
		in2 <= "0100";
		nsel0 <= '0';
		nsel1 <= '0';
		nsel2 <= '0'; wait for 100ns;
		
		nsel0 <= '0';
		nsel1 <= '0';
		nsel2 <= '1'; wait for 100ns;
		
		nsel0 <= '0';
		nsel1 <= '1';
		nsel2 <= '0'; wait for 100ns;
		
		nsel0 <= '0';
		nsel1 <= '1';
		nsel2 <= '1'; wait for 100ns;
		
		nsel0 <= '1';
		nsel1 <= '0';
		nsel2 <= '0'; wait for 100ns;
		
		nsel0 <= '1';
		nsel1 <= '0';
		nsel2 <= '1'; wait for 100ns;
		
		nsel0 <= '1';
		nsel1 <= '1';
		nsel2 <= '0'; wait for 100ns;

      wait;
   end process;

END;
