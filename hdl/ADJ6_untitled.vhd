--
-- VHDL Architecture ece411.ADJ6.untitled
--
-- Created:
--          by - page10.ews (linux6.ews.illinois.edu)
--          at - 20:21:48 01/21/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ6 IS
   PORT( 
      clk     : IN     std_logic;
      adj6shifted: OUT    LC3b_word;
      adj6notShifted: OUT    LC3b_word;
      index6    : IN     LC3B_INDEX6
   );

-- Declarations

END ADJ6 ;

--
ARCHITECTURE UNTITLED OF ADJ6 IS
BEGIN
	 adj6shifted <=  INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6 & '0' AFTER DELAY_MUX2;
	 adj6notShifted <=  INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6  AFTER DELAY_MUX2;
END UNTITLED;

