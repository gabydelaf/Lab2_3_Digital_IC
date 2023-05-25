library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity signal_mapper is
	Port (sseg_out : In std_logic_vector(6 downto 0);
        a, b, c, d, e, f, g : Out std_logic);
end signal_mapper;

architecture Behavioral of signal_mapper is

begin
	a <= sseg_out(0);
	b <= sseg_out(1);
	c <= sseg_out(2);
	d <= sseg_out(3);
	e <= sseg_out(4);
	f <= sseg_out(5);
	g <= sseg_out(6);

end Behavioral;
