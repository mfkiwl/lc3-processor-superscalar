--
-- VHDL Architecture ece411.std_logic_and2.untitled
--
-- Created:
--          by - page10.ews (gelib-057-29.ews.illinois.edu)
--          at - 15:28:46 02/15/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY std_logic_and2 IS
   PORT( 
      A  : IN     std_logic;
      B  : IN     std_logic;
      F  : OUT    std_logic
   );

-- Declarations

END std_logic_and2 ;

--
ARCHITECTURE untitled OF std_logic_and2 IS
BEGIN
  F<=A and B after DELAY_LOGIC2;
END ARCHITECTURE untitled;

