Library IEEE;
use IEEE.std_logic_1164.all;

Entity sseg_decoder is 
  Port (in0 : In std_logic;
        in1: In std_logic;
        nsel_e, nsel_z, nsel_h : Out std_logic);
End sseg_decoder;

Architecture of sseg_decoder Is
Begin
  decoder: Process(in0, in1) is
  Begin
    nsel_e <= '1';
    nsel_z <= '1';
    nsel_h <= '1';
    
    If     in0 = '0' And in1 = '0' then nsel_e <= '0';
    Elseif in0 = '1' And in1 = '0' then nsel_e <= '0';
    Elseif in0 = '0' And in1 = '1' then nsel_e <= '0';
    Else Null;
    End If;
  end Process decoder;
  
End Architecture sseg_decoder;