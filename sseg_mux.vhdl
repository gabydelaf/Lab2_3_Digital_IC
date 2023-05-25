Library IEEE;
use IEEE.std_logic_1164.all;

Entity sseg_mux is 
  Port (in0, in1, in2 : In std_logic_vector(3 downto 0);
        nsel0, nsel1, nsel2: In std_logic;
        out1 : Out std_logic_vector(3 downto 0));
End sseg_mux;

Architecture of sseg_mux Is
Begin
  mux: Process(in0, in1, in2, nsel0, nsel1, nsel2) is
  Begin
  
    If     nsel0 = '0' And nsel1 = '1' And nsel2 = '1' then out1 <= in0;
    Elsif nsel0 = '1' And nsel1 = '0' And nsel2 = '1' then out1 <= in1;
    Elsif nsel0 = '1' And nsel1 = '1' And nsel2 = '0' then out1 <= in2;
    Else Null;
    End If;
  end Process mux;
  
End Architecture sseg_mux;
