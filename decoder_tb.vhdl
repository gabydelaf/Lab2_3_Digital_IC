Library IEEE;
use IEEE.std_logic_1164.all;

Entity decoder_tb Is
End decoder_tb;

Architecture behavior of decoder_tb is
  Component decoder
    Port (in0 : In std_logic;
          in1: In std_logic;
          nsel_e, nsel_z, nsel_h : Out std_logic);
  End component; 

signal in0, in1 std_logic := (others => '0');
signal nsel_e, nsel_z, nsel_h : Out std_logic);

Begin 
-- Instantiate the Unit Under Test (UUT)
uut: sseg Port Map (
      in0 => in0, 
      in1 => in1, 
      nsel_e => nsel_e,
      nsel_z => nsel_z,
      nsel_h => nsel_h
      );
      
stim_proc: Process 
  Begin
  in0 <= "0000"; wait for 100ns; 
  in1 <= "0000"; wait for 100ns; 
  nsel_e <= "0000"; wait for 100ns; 
  nsel_z <= "0000"; wait for 100ns; 
  nsel_h <= "0000"; wait for 100ns; 
  wait;
 End Process;

End;
