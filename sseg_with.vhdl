library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sseg_with1 is
Port ( a : In std_logic_vector (3 downto 0); 
      sseg_out : out Std_logic_vector (6 downto 0)); 
end sseg_with1;

architecture Behavioral of sseg_with1 is
 
begin
	with a select 
		sseg_out <= "0111111" when "0000", --0
			    "0000110" when "0001", --1        
			    "1011011" when "0010", --2
			    "1001111" when "0011", --3
			    "1100110" when "0100", --4
		            "1101101" when "0101", --5
			    "1111101" when "0110", --6
			   "0000111" when "0111", --7
			   "1111111" when "1000", --8
			   "1101111" when "1001", --9

			   "0000000" when others;

end Behavioral;
