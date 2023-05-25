LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY sseg_tb IS
END sseg_tb;
 
ARCHITECTURE behavior OF sseg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sseg_with1
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         sseg_out : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal sseg_out : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sseg_with1 PORT MAP (
          a => a,
          sseg_out => sseg_out
        );


   -- Stimulus process
   stim_proc: process
   begin		
    a <= "0000"; wait for 10ns; 
		a <= "0001"; wait for 10ns;
		a <= "0010"; wait for 10ns;
		a <= "0011"; wait for 10ns;
		a <= "0100"; wait for 10ns; 
		a <= "0101"; wait for 10ns;
		a <= "0110"; wait for 10ns;
		a <= "0111"; wait for 10ns;
		a <= "1000"; wait for 10ns; 
		a <= "1001"; wait for 10ns;
		a <= "1010"; wait for 10ns;
  wait;
   end process;

END;
