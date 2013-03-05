--
-- VHDL Architecture ece411.mux3.untitled
--
-- Created:
--          by - page10.ews (evrt-252-08.ews.illinois.edu)
--          at - 13:59:09 01/28/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WordMux4 IS
   PORT( 
      A   : IN     LC3b_word;
      B   : IN     LC3b_word;
      C   : IN     LC3b_word;
      D   : IN     LC3b_word;
      Sel : IN     LC3b_4mux_sel;
      F   : OUT    LC3b_word
   );

-- Declarations

END WordMux4 ;

--
ARCHITECTURE untitled OF WordMux4 IS
BEGIN
PROCESS (A, B, C, D, Sel)
  variable state : LC3b_word;
BEGIN
  case Sel is
   when "00" =>
    state := A;
   when "01" =>
    state := B;
   when "10" =>
    state := C;
   when "11" =>
    state := D;
   when others =>
    state := (OTHERS => 'X');
  end case;
F <= state after delay_MUX4;
END PROCESS;
END ARCHITECTURE untitled;

