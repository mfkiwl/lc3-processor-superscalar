--
-- VHDL Architecture ece411.writeBackAddr.untitled
--
-- Created:
--          by - page10.ews (gelib-057-11.ews.illinois.edu)
--          at - 04:08:34 03/01/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY writeBackAddr IS
   PORT( 
      Address : IN     LC3b_word;
      tag0    : IN     LC3B_C_TAG;
      tag1    : IN     LC3B_C_TAG;
      evict0  : OUT    LC3b_word;
      evict1  : OUT    LC3b_word
   );

-- Declarations

END writeBackAddr ;

--
ARCHITECTURE untitled OF writeBackAddr IS
BEGIN
  evict0<=tag0&ADDRESS(6 downto 0);
  evict1<=tag1&ADDRESS(6 downto 0);
END ARCHITECTURE untitled;

