--
-- VHDL Architecture ece411.IMM4.untitled
--
-- Created:
--          by - page10.ews (gelib-057-02.ews.illinois.edu)
--          at - 15:46:05 02/05/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY IMM4 IS
   PORT( 
      clk     : IN     std_logic;
      imm4out : OUT    LC3b_word;
      imm4in  : IN     LC3B_SHIFTYPE
   );

-- Declarations

END IMM4 ;

--
ARCHITECTURE untitled OF IMM4 IS
BEGIN
  imm4out <= "000000000000" & imm4in AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

