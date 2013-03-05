--
-- VHDL Architecture ece411.zext8.untitled
--
-- Created:
--          by - page10.ews (dcl-l520-02.ews.illinois.edu)
--          at - 22:39:41 02/04/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY zext8 IS
   PORT( 
      shortIn        : IN     LC3b_word;
      zextOut       : OUT    LC3b_word
   );

-- Declarations

END zext8 ;

--
ARCHITECTURE untitled OF zext8 IS
BEGIN
    zextOut<=(15 downto 8=>'0') & shortIn(7 downto 0) after delay_MUX2;
END ARCHITECTURE untitled;

