library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


Entity sseg Is
Port ( a : In std_logic_vector (3 downto 0); 
      sseg_out : out Std_logic_vector (6 downto 0)); 
      End sseg;
      
-- For cathod configuration
Architecture sseg_case of sseg Is
Begin 
Process (a)
begin
  case a is 
  
	when "0000" => sseg_out <= "0111111"; --0
	when "0001" => sseg_out <= "0000110"; --1        
	when "0010" => sseg_out <= "1011011"; --2
	when "0011" => sseg_out <= "1001111"; --3
	when "0100" => sseg_out <= "1100110"; --4
	when "0101" => sseg_out <= "1101101"; --5
	when "0110" => sseg_out <= "1111101"; --6
	when "0111" => sseg_out <= "0000111"; --7
	when "1000" => sseg_out <= "1111111"; --8
	when "1001" => sseg_out <= "1001111"; --9

	when others => sseg_out <= "0000000";
end case;
end process;

End Architecture sseg_case;
