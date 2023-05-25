library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sseg_demux is
	Port (sseg_in : In std_logic_vector(6 downto 0);
        nsel0, nsel1, nsel2: In std_logic;
        einer_out : Out std_logic_vector(6 downto 0);
        zehner_out : Out std_logic_vector(6 downto 0);
        hundert_out : Out std_logic_vector(6 downto 0));
end sseg_demux;

architecture Behavioral of sseg_demux is

begin
	demux: Process(sseg_in, nsel0, nsel1, nsel2) is
  Begin
    If     nsel0 = '0' And nsel1 = '1' And nsel2 = '1' 
      then einer_out <= sseg_in;
           zehner_out <= "0000000";
           hundert_out <= "0000000";
    Elsif nsel0 = '1' And nsel1 = '0' And nsel2 = '1' 
      then einer_out <= "0000000";
			  zehner_out <= sseg_in;
			  hundert_out <= "0000000";    
    Elsif nsel0 = '1' And nsel1 = '1' And nsel2 = '0' 
      then einer_out <= "0000000";
			  zehner_out <= "0000000";
			  hundert_out <= sseg_in;
    Else Null;
    End If;
  end Process demux;

end Behavioral;

