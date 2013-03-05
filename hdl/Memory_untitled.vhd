--
-- VHDL Architecture ece411.Memory.untitled
--
-- Created:
--          by - page10.ews (linux6.ews.illinois.edu)
--          at - 21:30:53 01/21/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Memory IS
   PORT( 
      Address   : IN     LC3b_word;
      DataOut   : IN     LC3B_WORD;
      MREAD_L   : IN     std_logic;
      MWRITEH_L : IN     std_logic;
      MWRITEL_L : IN     std_logic;
      RESET_L   : IN     std_logic;
      clk       : IN     std_logic;
      DataIn    : OUT    LC3B_WORD;
      MRESP_H   : OUT    std_logic
   );

-- Declarations

END Memory ;
