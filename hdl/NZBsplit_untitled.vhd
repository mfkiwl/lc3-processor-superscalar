--
-- VHDL Architecture ece411.NZBsplit.untitled
--
-- Created:
--          by - page10.ews (linux6.ews.illinois.edu)
--          at - 20:35:50 01/21/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY NZBsplit IS
   PORT( 
      dest   : IN     LC3b_reg;
      CheckN : OUT    std_logic;
      CheckP : OUT    std_logic;
      CheckZ : OUT    std_logic;
      clk    : IN     std_logic
   );

-- Declarations

END NZBsplit ;

--
ARCHITECTURE UNTITLED OF NZBsplit IS
BEGIN
	CheckN <= dest(2);
	CheckZ <= dest(1);
	CheckP <= dest(0);
END UNTITLED;

