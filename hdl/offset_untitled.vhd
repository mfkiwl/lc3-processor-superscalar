--
-- VHDL Architecture ece411.offset.untitled
--
-- Created:
--          by - page10.ews (dcl-l440-03.ews.illinois.edu)
--          at - 15:41:16 02/21/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY offset IS
   PORT( 
      line           : IN     LC3B_OWORD;
      offsetIntoLine : IN     LC3B_C_OFFSET;
      DataIn         : OUT    LC3B_WORD
   );

-- Declarations

END offset ;

--
ARCHITECTURE untitled OF offset IS
BEGIN
  DataIn(7 downto 0)<=line((7+8*To_integer(unsigned(offsetIntoLine))) DOWNTO (8*To_integer(unsigned(offsetIntoLine))));
  DataIn(15 downto 8)<=line((15+8*To_integer(unsigned(offsetIntoLine))) DOWNTO (8+8*To_integer(unsigned(offsetIntoLine))));
END ARCHITECTURE untitled;

