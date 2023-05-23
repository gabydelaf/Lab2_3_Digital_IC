Library IEEE;
use IEEE.std_logic_1164.all;

Entity sseg_demux is 
  Port (sseg_in : In std_logic_vector(6 downto 0);
        nsel0, nsel1, nsel2: In std_logic;
        einer_out : Out std_logic_vector(6 downto 0)
        zehner_out : Out std_logic_vector(6 downto 0)
        hundert_out : Out std_logic_vector(6 downto 0));
End sseg_demux;

Architecture of sseg_demux Is
Begin
  demux: Process(sseg_in, nsel0, nsel1, nsel2) is
  Begin
    If     nsel0 = '0' And nsel1 = '1' And nsel2 = '1' 
      then einer_out <= sseg_in;
      then zehner_out <= "0000000";
      then hundert_out <= "0000000";
    Elseif nsel0 = '1' And nsel1 = '0' And nsel2 = '1' 
      then einer_out <= "0000000";
      then zehner_out <= sseg_in;
      then hundert_out <= "0000000";    
    Elseif nsel0 = '1' And nsel1 = '1' And nsel2 = '0' 
      then einer_out <= "0000000";
      then zehner_out <= "0000000";
      then hundert_out <= sseg_in;
    Else Null;
    End If;
  end Process demux;
  
End Architecture sseg_demux;
