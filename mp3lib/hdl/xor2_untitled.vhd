--
-- VHDL ARCHITECTURE ECE411.XNOR2.UNTITLED
--
-- CREATED:
--          BY - HERSTAD.STDT (EESN26.EWS.UIUC.EDU)
--          AT - 14:44:46 03/31/03
--
-- GENERATED BY MENTOR GRAPHICS' HDL DESIGNER(TM) 2001.5 (BUILD 170)
--
-- HDS INTERFACE_START
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY ECE411;
USE ECE411.LC3b_types.all;

ENTITY XOR2 IS
   PORT( 
      a : IN     std_logic;
      b : IN     std_logic;
      f : OUT    std_logic
   );

-- Declarations

END XOR2 ;

-- HDS INTERFACE_END
ARCHITECTURE UNTITLED OF XOR2 IS
BEGIN
	XOR2: PROCESS(A,B)
	BEGIN
		F <= A XOR B AFTER DELAY_LOGIC;
	END PROCESS XOR2;
END UNTITLED;