Library IEEE;
use IEEE.std_logic_1164.all;

Entity sseg Is
Port ( a : In std_logic_vector (3 downto 0); 
      sseg_out : out Std_logic_vector (6 down to 0)); 
      End sseg;
      
-- For cathod configuration
Architecture sseg_with of sseg Is.
Begin 
  with a select 
  sseg_out <= "0111111" when "0000", --0
  sseg_out <= "0000110" when "0001", --1        
  sseg_out <= "1011011" when "0010", --2
  sseg_out <= "1001111" when "0011", --3
  sseg_out <= "1100110" when "0100", --4
  sseg_out <= "1101101" when "0101", --5
  sseg_out <= "1111101" when "0110", --6
  sseg_out <= "0000111" when "0111", --7
  sseg_out <= "1111111" when "1000", --8
  sseg_out <= "1001111" when "1001", --9

  sseg_out <= "0000000" when others;

End Architecture sseg_with;