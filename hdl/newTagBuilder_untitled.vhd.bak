--
-- VHDL Architecture ece411.newTagBuilder.untitled
--
-- Created:
--          by - page10.ews (gelib-057-34.ews.illinois.edu)
--          at - 19:12:09 02/28/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY newTagBuilder IS
   PORT (
      newTag    : OUT    LC3B_OWORD;
      tag0      : IN     LC3B_C_TAG;
      dirty0    : IN     std_logic;
      valid0    : IN     std_logic;
      tag1      : IN     LC3B_C_TAG;
      dirty1    : IN     std_logic;
      valid1    : IN     std_logic;
      lru       : IN     std_logic
   );
END newTagBuilder;

--
ARCHITECTURE untitled OF newTagBuilder IS
BEGIN
  newTag(22 downto 0)<=lru&valid1&dirty1&tag1&valid0&dirty0&tag0;
END ARCHITECTURE untitled;

