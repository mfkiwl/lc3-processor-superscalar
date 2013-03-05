--
-- VHDL Architecture ece411.BRadd.untitled
--
-- Created:
--          by - page10.ews (linux6.ews.illinois.edu)
--          at - 22:07:05 01/21/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BRadd IS
   PORT( 
      ADJ9out  : IN     LC3b_word;
      PCout    : IN     LC3b_word;
      BRaddout : OUT    LC3b_word;
      clk      : IN     std_logic
   );

-- Declarations

END BRadd ;

--
ARCHITECTURE untitled OF BRadd IS
BEGIN
 	VHDL_Branch : PROCESS (ADJ9out, PCout)
	BEGIN  -- PROCESS
		BRaddout <= STD_LOGIC_VECTOR(SIGNED(PCout) + SIGNED(ADJ9out)) AFTER DELAY_ADDER;
	END PROCESS;
END ARCHITECTURE untitled;

