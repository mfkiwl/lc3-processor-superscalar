--
-- VHDL Architecture ece411.ToWriteOrNot.untitled
--
-- Created:
--          by - page10.ews (gelib-057-11.ews.illinois.edu)
--          at - 22:37:59 02/28/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ToWriteOrNot IS
   PORT( 
      MREAD_L    : IN     std_logic;
      MWRITEH_L  : IN     std_logic;
      MWRITEL_L  : IN     std_logic;
      Miss       : IN     std_logic;
      WriteCache : IN     std_logic;
      writeFlags : OUT    std_logic;
      doingMemAccess: out std_logic
   );

-- Declarations

END ToWriteOrNot ;

--

ARCHITECTURE untitled OF ToWriteOrNot IS
  --signal request: std_logic;
BEGIN    
    doingMemAccess<=not(MREAD_L and MWRITEH_L and MWRITEL_L) after 25ns;--after DELAY_LOGIC3;--after HALF_CLOCK_PERIOD;
    writeFlags<=doingMemAccess and (not(Miss) or WriteCache) after DELAY_LOGIC3;--after DELAY_LOGIC3;
END ARCHITECTURE untitled;

