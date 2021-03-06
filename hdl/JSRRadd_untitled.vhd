--
-- VHDL Architecture ece411.JSRRadd.untitled
--
-- Created:
--          by - page10.ews (linux6.ews.illinois.edu)
--          at - 22:23:30 02/02/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY JSRRadd IS
   PORT( 
      clk        : IN     std_logic;
      ADJ11out   : IN     LC3b_word;
      JSRRaddout : OUT    LC3b_word;
      PCout      : IN     LC3b_word
   );

-- Declarations

END JSRRadd ;

--
ARCHITECTURE untitled OF JSRRadd IS
BEGIN
  VHDL_Branch : PROCESS (ADJ11out, PCout)
	BEGIN  -- PROCESS
		JSRRaddout <= STD_LOGIC_VECTOR(SIGNED(PCout) + SIGNED(ADJ11out)) AFTER DELAY_ADDER;
	END PROCESS;
END ARCHITECTURE untitled;

