--
-- VHDL Architecture ece411.tagCheck.untitled
--
-- Created:
--          by - page10.ews (gelib-057-29.ews.illinois.edu)
--          at - 14:48:48 02/15/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY tagCheck IS
   PORT( 
      A     : IN     LC3B_C_TAG;
      B     : IN     LC3B_C_TAG;
      valid : in     std_logic;
      equal : OUT    std_logic
   );

-- Declarations

END tagCheck ;

--
ARCHITECTURE untitled OF tagCheck IS
BEGIN
  PROCESS (A, B, valid)
BEGIN
  if(unsigned(A) = unsigned(B) and valid = '1') then
    equal<='1'after DELAY_COMPARE8;
  else
    equal<='0'after DELAY_COMPARE8;
  end if;
END PROCESS;
END ARCHITECTURE untitled;

