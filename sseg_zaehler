Library IEEE;
use IEEE.std_logic_1164.all;

Entity sseg_zaehler is 
  Port (clk : In std_logic;
        nres: In std_logic;
        Out0, Out1 : Out std_logic);
End sseg_zaehler;

Architecture behave of sseg_zaehler Is 
  signal ist, folge : std_logic_vector (1 downto 0);

Begin 
  -- 1st Process ---------------------------
  komb : Process (ist, nres) Is
  Begin
    If nres = 'O' then folge <= "00";
    Elseif ist(0) = '0' And ist(1) = '1'
      then folge <= "00";
    Elseif ist(0) = '0' And ist(1) = '0'
      then folge <= "01";
    Elseif ist(0) = '1' And ist(1) = '0'
      then folge <= "10";
    End If;
  ------------------------------------------
  End Process komb;
  
  -- 2nd Process ---------------------------
  speicher : Process(clk) Is
  Begin
    If rising_edge(clk)
      then ist <= folge;
    End If;
  ------------------------------------------
  End Process speicher;
  
out0 <= ist(0);
out1 <= ist(1);

End Architecture behave;
