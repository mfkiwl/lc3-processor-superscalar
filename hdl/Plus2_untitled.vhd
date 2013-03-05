--
-- VHDL Architecture ece411.Plus2.untitled
--
-- Created:
--          by - page10.ews (linux6.ews.illinois.edu)
--          at - 20:38:35 01/21/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Plus2 IS
   PORT( 
      PCout      : IN     LC3b_word;
      PCPlus2out : OUT    LC3b_word;
      clk        : IN     std_logic
   );

-- Declarations

END Plus2 ;

--
ARCHITECTURE UNTITLED OF Plus2 IS
BEGIN
	VHDL_ADD_2 : PROCESS (PCOUT)
	BEGIN  -- PROCESS
		PCPlus2out <= STD_LOGIC_VECTOR(UNSIGNED(PCout) + 2 ) AFTER DELAY_ADDER;
	END PROCESS;
END UNTITLED;

