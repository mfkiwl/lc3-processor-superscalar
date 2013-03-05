--
-- VHDL Architecture ece411.byteUp.untitled
--
-- Created:
--          by - page10.ews (gelib-057-02.ews.illinois.edu)
--          at - 17:37:37 02/05/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY byteUp IS
   PORT( 
      ALUout : IN     LC3b_word;
      clk    : IN     std_logic;
      B      : OUT    LC3b_word
   );

-- Declarations

END byteUp ;

--
ARCHITECTURE untitled OF byteUp IS
BEGIN
  b<=ALUout(7 downto 0) & "00000000";
END ARCHITECTURE untitled;

