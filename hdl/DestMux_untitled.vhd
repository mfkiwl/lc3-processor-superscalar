--
-- VHDL Architecture ece411.DestMux.untitled
--
-- Created:
--          by - page10.ews (linux6.ews.illinois.edu)
--          at - 21:03:04 02/02/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY DestMux IS
   PORT( 
      clk     : IN     std_logic;
      destSel : IN     LC3b_4mux_sel;
      IRDest  : IN     LC3b_reg;
      dest    : OUT    LC3b_reg
   );

-- Declarations

END DestMux ;

--
ARCHITECTURE untitled OF DestMux IS
BEGIN
PROCESS (destSel, IRDest)
  variable state : LC3b_reg;
BEGIN
  case destSel is
   when "00" =>
    state := IRDest;
   when "01" =>
    state := "110";
   when "10" =>
    state := "111";
   when others =>
    state := (OTHERS => 'X');
  end case;
 dest <= state after delay_MUX4;
END PROCESS;
END ARCHITECTURE untitled;

