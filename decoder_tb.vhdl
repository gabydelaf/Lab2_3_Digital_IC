library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sseg_decoder is
	Port (in0 : In std_logic;
        in1: In std_logic;
        nsel_e, nsel_z, nsel_h : Out std_logic);
end sseg_decoder;

architecture Behavioral of sseg_decoder is

begin
	decoder: Process(in0, in1) is
	Begin
    nsel_e <= '1';
    nsel_z <= '1';
    nsel_h <= '1';
    
    If     in0 = '0' And in1 = '0' then nsel_e <= '0';
    Elsif in0 = '1' And in1 = '0' then nsel_z <= '0';
    Elsif in0 = '0' And in1 = '1' then nsel_h <= '0';
    Else Null;
    End If;
  end Process decoder;

end Behavioral;
