--
-- VHDL Architecture ece411.ADJ11.untitled
--
-- Created:
--          by - page10.ews (linux6.ews.illinois.edu)
--          at - 22:18:28 02/02/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY ADJ11 IS
   PORT( 
      offset11 : IN     LC3B_OFFSET11;
      clk      : IN     std_logic;
      ADJ11out :  OUT    LC3b_word
   );

-- Declarations

END ADJ11 ;

--
ARCHITECTURE untitled OF ADJ11 IS
BEGIN
  ADJ11out <= offset11(10) & offset11(10) & offset11(10) & offset11(10) & offset11 & '0' AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

