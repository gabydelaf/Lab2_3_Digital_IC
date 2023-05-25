library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sseg_mux is
	Port (in0, in1, in2 : In std_logic_vector(3 downto 0);
        nsel0, nsel1, nsel2: In std_logic;
        out1 : Out std_logic_vector(3 downto 0));
end sseg_mux;

architecture Behavioral of sseg_mux is

begin
	mux: Process(in0, in1, in2, nsel0, nsel1, nsel2) is
	Begin
  
    If    nsel0 = '0' And nsel1 = '1' And nsel2 = '1' then out1 <= in0;
    Elsif nsel0 = '1' And nsel1 = '0' And nsel2 = '1' then out1 <= in1;
    Elsif nsel0 = '1' And nsel1 = '1' And nsel2 = '0' then out1 <= in2;
    Else Null;
    End If;
  end Process mux;

end Behavioral;
