--
-- VHDL Architecture ece411.IMM5.untitled
--
-- Created:
--          by - page10.ews (gelib-057-22.ews.illinois.edu)
--          at - 16:09:22 01/30/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY IMM5 IS
   PORT( 
      clk     : IN     std_logic;
      imm5in  : IN     LC3B_IMM5;
      imm5out : OUT    LC3b_word
   );

-- Declarations

END IMM5 ;

--
ARCHITECTURE untitled OF IMM5 IS
BEGIN
	imm5out <= imm5in(4) & imm5in(4) & imm5in(4) & imm5in(4) & imm5in(4) & imm5in(4) & imm5in(4) & imm5in(4) & imm5in(4) & imm5in(4) & imm5in(4) & imm5in AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

