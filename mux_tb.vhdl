Library IEEE;
use IEEE.std_logic_1164.all;

Entity mux_tb Is
End mux_tb;

Architecture behavior of mux_tb is
  Component mux
    Port (in0, in1, in2 : In std_logic_vector(3 downto 0);
          nsel0, nsel1, nsel2: In std_logic;
          out1 : Out std_logic_vector(3 downto 0));
  End component; 
  
signal in0, in1, in2: std_logic_vector (3 downto 0) := (others => '0');
signal nsel0, nsel1, nsel2: In std_logic;
signal out1 : std_logic_vector (3 down to 0);

Begin 
-- Instantiate the Unit Under Test (UUT)
uut: mux Port Map (
      in0 => in0, 
      in1 => in1, 
      in2 => in2, 
      nsel0 => nsel0,
      nsel1 => nsel1,
      nsel2 => nsel2,
      out1 => out1
      );
      
stim_proc: Process 
  Begin
  in0 <= "0000"; wait for 200ns; 
  in1 <= "0000"; wait for 200ns; 
  in2 <= "0000"; wait for 200ns; 
  nsel0 <= "0000"; wait for 200ns; 
  nsel1 <= "0000"; wait for 200ns; 
  nsel2 <= "0000"; wait for 200ns; 
  out1 <= "0000"; wait for 200ns; 
  wait;
 End Process;

End;
