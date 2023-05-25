library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity sseg_pulsgen is 
  Port (clk_in : In std_logic;
        nres: In std_logic;
        pulsout : Out std_logic);
End sseg_pulsgen;

Architecture behave of sseg_pulsgen Is
  signal counter : integer range 0 to 49999 := 0;
  signal internal : std_logic := '0';
  
Begin
  Process (nres, clk_in)
  Begin
    if(nres = '0') then 
      internal <= '0';
      counter <= 0;
    elsif rising_edge(clk_in) then
      if (counter = 49999) then
        internal <= Not (internal); 
        counter <= 0;
      else
        counter <= counter + 1; 
      end if;
    end if; 
  end Process;
pulsout <= internal;

End Architecture behave;


