Library IEEE;
use IEEE.std_logic_1164.all;

Entity demux_tb Is
End demux_tb;

Architecture behavior of demux_tb is
  Component demux
    Port (sseg_in : In std_logic_vector(6 downto 0);
          nsel0, nsel1, nsel2: In std_logic;
          einer_out : Out std_logic_vector(6 downto 0)
          zehner_out : Out std_logic_vector(6 downto 0)
          hundert_out : Out std_logic_vector(6 downto 0));
  End component; 
  
signal sseg_in: std_logic_vector (6 downto 0) := (others => '0');
signal nsel0, nsel1, nsel2: In std_logic;
signal einer_out, zehner_out, hundert_out : std_logic_vector (6 down to 0);

Begin 
-- Instantiate the Unit Under Test (UUT) --
uut: sseg Port Map (
      sseg_in => sseg_in,  
      nsel0 => nsel0,
      nsel1 => nsel1,
      nsel2 => nsel2,
      einer_out => einer_out,
      zehner_out => zehner_out,
      hundert_out => hundert_out
      );
      
stim_proc: Process 
  Begin
  sseg_in <= "0000"; wait for 100ns; 
  nsel0 <= "0000"; wait for 100ns; 
  nsel1 <= "0000"; wait for 100ns; 
  nsel2 <= "0000"; wait for 100ns; 
  einer_out <= "0000"; wait for 100ns; 
  zehner_out <= "0000"; wait for 100ns; 
  hundert_out <= "0000"; wait for 100ns; 
  wait;
 End Process;

End;
