--
-- VHDL Architecture ece411.zextShiftTrap.untitled
--
-- Created:
--          by - page10.ews (gelib-057-02.ews.illinois.edu)
--          at - 19:39:58 02/05/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY zextShiftTrap IS
   PORT( 
      clk           : IN     std_logic;
      trapvect      : IN     LC3B_TRAPVECT8;
      zextedTrapOut : OUT    LC3b_word
   );

-- Declarations

END zextShiftTrap ;

--
ARCHITECTURE untitled OF zextShiftTrap IS
BEGIN
  zextedTrapOut<=(15 downto 9=>'0') & trapvect & '0' after delay_MUX2;
END ARCHITECTURE untitled;

