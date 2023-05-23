Library IEEE;
use IEEE.std_logic_1164.all;

Entity zaehler_tb is 
End zaehler_tb;
  
Architecture behave of zaehler_tb Is  
  Component zaehler
    Port (clk, nres : In std_logic;
          Out0, Out1 : Out std_logic);
  End Component;

signal clk, nres : std_logic := (others => '0');
signal Out0, Out1 :  std_logic;
signal ist, folge : std_logic_vector (1 downto 0);

Begin 
  -- Instantiate the Unit Under Test (UUT)
  uut: zaehler Port Map (
      clk => clk, 
      nres => nres, 
      Out0 => Out0, 
      Out1 => Out1,
      ist => ist,
      folge => folge
      );
      
stim_proc: Process 
  Begin
  clk <= "0000"; wait for 200ns; 
  nres <= "0000"; wait for 200ns; 
  Out0 <= "0000"; wait for 200ns; 
  Out1 <= "0000"; wait for 200ns; 
  ist <= "0000"; wait for 200ns; 
  folge <= "0000"; wait for 200ns; 
  wait;
 End Process;

End;
