--
-- VHDL Architecture ece411.breakUpAddress.untitled
--
-- Created:
--          by - page10.ews (gelib-057-29.ews.illinois.edu)
--          at - 14:19:04 02/15/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY breakUpAddress IS
   PORT( 
      Address        : IN     LC3b_word;
      Index          : OUT    LC3B_C_INDEX;
      offsetIntoLine : OUT    LC3B_C_OFFSET;
      wantedTag      : OUT    LC3B_C_TAG
   );

-- Declarations

END breakUpAddress ;

--
ARCHITECTURE untitled OF breakUpAddress IS
BEGIN
  offsetIntoLine<=ADDRESS(3 DOWNTO 0);
  Index <= ADDRESS(6 DOWNTO 4);--double check me
  wantedTag<=ADDRESS(15 DOWNTO 7);
END ARCHITECTURE untitled;

