Library IEEE;
use IEEE.std_logic_1164.all;

Entity sseg_pulsgen is 
  Port (clk_in : In std_logic;
        nres: In std_logic;
        pulsout : Out std_logic);
End sseg_pulsgen;

Architecture behave of sseg_pulsgen Is
  signal counter : integer range 0 to ___ := 0;
  signal internal : std_logic := 0;
  
Begin
  Process (nres, clk_in)
  Begin
    if(nres = '0') then 
      internal <= '0';
      counter <= 0;
    elseif rising_edge(clk_in) then
      if (counter = ___) then
        internal <= Not (internal); 
        counter <= 0;
      else
        counter <= counter + 1; 
      end if;
    end if; 
  end Process;
pulsout <= internal;

End Architecture sseg_pulsgen;


