Library IEEE;
use IEEE.std_logic_1164.all;

Entity sseg_tb Is
End sseg_tb;

Architecture behavior of sseg_tb is
  Component sseg
    Port (a: in std_logic vector (3 downto 0);
          sseg_out: Out std_logic_vector (6 downto 0) );
  End component; 
  
signal a: std_logic_vector (3 downto 0) := (others => '0');
signal sseg_out std_logic_vector (6 down to 0);

Begin 
uut: sseg Port Map (a => a, sseg_out => sseg_out); --Device Under Verification
stim_proc: Process 
  Begin
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
  wait;
 End Process;

End;