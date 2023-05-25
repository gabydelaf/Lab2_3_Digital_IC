LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY decoder_tb IS
END decoder_tb;
 
ARCHITECTURE behavior OF decoder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sseg_decoder
    PORT(
         in0 : IN  std_logic;
         in1 : IN  std_logic;
         nsel_e : OUT  std_logic;
         nsel_z : OUT  std_logic;
         nsel_h : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in0 : std_logic := '0';
   signal in1 : std_logic := '0';

 	--Outputs
   signal nsel_e : std_logic;
   signal nsel_z : std_logic;
   signal nsel_h : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sseg_decoder PORT MAP (
          in0 => in0,
          in1 => in1,
          nsel_e => nsel_e,
          nsel_z => nsel_z,
          nsel_h => nsel_h
        );


   -- Stimulus process
   stim_proc: process
   begin		
      in0 <= '0'; 
		in1 <= '0'; wait for 100ns; 
		
		in0 <= '1'; 
		in1 <= '0'; wait for 100ns; 
		
		in0 <= '0'; 
		in1 <= '1'; wait for 100ns; 
		
		in0 <= '1'; 
		in1 <= '1'; wait for 100ns; 

      wait;
   end process;

END;

