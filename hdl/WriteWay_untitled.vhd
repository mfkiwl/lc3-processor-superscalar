--
-- VHDL Architecture ece411.WriteWay.untitled
--
-- Created:
--          by - page10.ews (gelib-057-11.ews.illinois.edu)
--          at - 02:12:35 03/01/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WriteWay IS
   PORT( 
     forceWrite : IN std_logic;
      Miss           : IN     std_logic;
      Replace       : IN     std_logic;
      dirtying       : IN     std_logic;
      doingMemAccess : IN     std_logic;
      selected       : IN     std_logic;
      writeBack     :IN      std_logic;
      output             : OUT    std_logic
   );

-- Declarations

END WriteWay ;

--
ARCHITECTURE untitled OF WriteWay IS
  signal missDelay: std_logic;
BEGIN
  missDelay<=Miss after 4ns;
  output<= (doingMemAccess and (not(writeBack) or forceWrite)and ((missDelay and Replace) or (dirtying and selected))) after 4ns;
END ARCHITECTURE untitled;

