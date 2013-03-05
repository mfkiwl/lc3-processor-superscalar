--
-- VHDL Architecture ece411.StoreMux.untitled
--
-- Created:
--          by - page10.ews (linux6.ews.illinois.edu)
--          at - 22:40:15 01/21/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY StoreMux IS
   PORT( 
      SrcA        : IN     LC3b_reg;
      StoreSR     : IN     std_logic;
      StoreMuxout : OUT    LC3b_reg;
      clk         : IN     std_logic;
      IRDest      : IN     LC3b_reg
   );

-- Declarations

END StoreMux ;

--
ARCHITECTURE untitled OF StoreMux IS
BEGIN
PROCESS (SrcA, IRDest, StoreSR)
  variable state : LC3b_reg;
BEGIN
  case StoreSR is
   when '0' =>
    state := IRDest;
   when '1' =>
    state := SrcA;
   when others =>
    state := (OTHERS => 'X');
  end case;
 StoreMuxout <= state after delay_MUX2;
END PROCESS;
END ARCHITECTURE untitled;

