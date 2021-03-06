-- VHDL Entity ece411.Control.interface
--
-- Created:
--          by - page10.ews (gelib-057-25.ews.illinois.edu)
--          at - 14:10:42 02/06/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Control IS
   PORT( 
      CheckN       : IN     std_logic;
      CheckP       : IN     std_logic;
      CheckZ       : IN     std_logic;
      MRESP_H      : IN     std_logic;
      RESET_L      : IN     std_logic;
      START_H      : IN     std_logic;
      clk          : IN     std_logic;
      imm5Flag     : IN     std_logic;
      n            : IN     std_logic;
      offset11Flag : IN     std_logic;
      opcode       : IN     LC3b_opcode;
      p            : IN     std_logic;
      shiftType    : IN     LC3B_SHFTOP;
      z            : IN     std_logic;
      ALUMuxSel    : OUT    LC3b_4mux_sel;
      ALUop        : OUT    LC3b_aluop;
      LoadIR       : OUT    std_logic;
      LoadMAR      : OUT    std_logic;
      LoadMDR      : OUT    std_logic;
      LoadNZP      : OUT    std_logic;
      LoadPC       : OUT    std_logic;
      MARMuxSel    : OUT    LC3b_4mux_sel;
      MDRMuxSel    : OUT    std_logic;
      MDRZextSel   : OUT    std_logic;
      MREAD_L      : OUT    std_logic;
      MWRITEH_L    : OUT    std_logic;
      MWRITEL_L    : OUT    std_logic;
      PCMuxSel     : OUT    LC3b_4mux_sel;
      RFMuxSel     : OUT    LC3b_4mux_sel;
      RegWrite     : OUT    std_logic;
      StoreSR      : OUT    std_logic;
      destSel      : OUT    LC3b_4mux_sel;
      shiftAdj6    : OUT    std_logic;
      trapSel      : OUT    std_logic
   );

-- Declarations

END Control ;

--
-- VHDL Architecture ece411.Control.fsm
--
-- Created:
--          by - page10.ews (gelib-057-25.ews.illinois.edu)
--          at - 14:10:43 02/06/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
 
ARCHITECTURE fsm OF Control IS

   TYPE STATE_TYPE IS (
      Reset,
      L_AND,
      L_NOT,
      Decode,
      BR1,
      BR2,
      IF1,
      CalcADDR,
      IF2,
      IF3,
      ST1,
      LD1,
      ST2,
      LD2,
      ADD,
      JMP_RET,
      LEA,
      SavePC,
      jsr,
      jsrr,
      LSByte,
      LDB2,
      LDI1,
      MResph,
      LDI2,
      aSRL,
      aSLL,
      aSRA,
      stb,
      trap1,
      trap2,
      trap3
   );
 
   -- Declare current and next state signals
   SIGNAL current_state : STATE_TYPE;
   SIGNAL next_state : STATE_TYPE;

BEGIN

   -----------------------------------------------------------------
   clocked_proc : PROCESS ( 
      clk,
      RESET_L
   )
   -----------------------------------------------------------------
   BEGIN
      IF (RESET_L = '0') THEN
         current_state <= Reset;
      ELSIF (clk'EVENT AND clk = '1') THEN
         current_state <= next_state;
      END IF;
   END PROCESS clocked_proc;
 
   -----------------------------------------------------------------
   nextstate_proc : PROCESS ( 
      CheckN,
      CheckP,
      CheckZ,
      MRESP_H,
      START_H,
      current_state,
      n,
      offset11Flag,
      opcode,
      p,
      shiftType,
      z
   )
   -----------------------------------------------------------------
   BEGIN
      CASE current_state IS
         WHEN Reset => 
            IF (START_H = '1') THEN 
               next_state <= IF1;
            ELSE
               next_state <= Reset;
            END IF;
         WHEN L_AND => 
            next_state <= IF1;
         WHEN L_NOT => 
            next_state <= IF1;
         WHEN Decode => 
            IF (Opcode=op_lea) THEN 
               next_state <= LEA;
            ELSIF ((Opcode=op_ret) OR
                   (Opcode=op_jmp)) THEN 
               next_state <= JMP_RET;
            ELSIF (Opcode = op_br) THEN 
               next_state <= BR1;
            ELSIF ((Opcode = op_jsr) OR
                   (Opcode = op_trap)) THEN 
               next_state <= SavePC;
            ELSIF (((Opcode = op_ldr) OR
                   (Opcode = op_str) OR
                   (Opcode = op_ldb) OR
                   (Opcode = op_ldi) OR
                   (Opcode = op_stb) OR
                   (Opcode = op_sti)) AND ((Opcode=op_ldb) OR
                   (Opcode=op_stb))) THEN 
               next_state <= LSByte;
            ELSIF ((Opcode = op_ldr) OR
                   (Opcode = op_str) OR
                   (Opcode = op_ldb) OR
                   (Opcode = op_ldi) OR
                   (Opcode = op_stb) OR
                   (Opcode = op_sti)) THEN 
               next_state <= CalcADDR;
            ELSIF (Opcode = op_not) THEN 
               next_state <= L_NOT;
            ELSIF (Opcode = op_and) THEN 
               next_state <= L_AND;
            ELSIF (Opcode = op_add) THEN 
               next_state <= ADD;
            ELSIF ((Opcode = op_shf) AND (shiftType=SHFT_SRL)) THEN 
               next_state <= aSRL;
            ELSIF ((Opcode = op_shf) AND (shiftType=SHFT_SLL)) THEN 
               next_state <= aSLL;
            ELSIF ((Opcode = op_shf) AND (shiftType=SHFT_SRA)) THEN 
               next_state <= aSRA;
            ELSE
               next_state <= IF1;
            END IF;
         WHEN BR1 => 
            IF (((n AND CheckN) OR
                (p AND CheckP) OR
                (z AND CheckZ)) = '1') THEN 
               next_state <= BR2;
            ELSE
               next_state <= IF1;
            END IF;
         WHEN BR2 => 
            next_state <= IF1;
         WHEN IF1 => 
            next_state <= IF2;
         WHEN CalcADDR => 
            IF (Opcode =op_str) THEN 
               next_state <= ST1;
            ELSE
               next_state <= LD1;
            END IF;
         WHEN IF2 => 
            IF (MRESP_H = '1') THEN 
               next_state <= IF3;
            ELSE
               next_state <= IF2;
            END IF;
         WHEN IF3 => 
            next_state <= Decode;
         WHEN ST1 => 
            IF (Opcode=op_stb) THEN 
               next_state <= stb;
            ELSE
               next_state <= ST2;
            END IF;
         WHEN LD1 => 
            IF (MRESP_H = '1') THEN 
               next_state <= MResph;
            ELSE
               next_state <= LD1;
            END IF;
         WHEN ST2 => 
            IF (MRESP_H ='1') THEN 
               next_state <= IF1;
            ELSE
               next_state <= ST2;
            END IF;
         WHEN LD2 => 
            next_state <= IF1;
         WHEN ADD => 
            next_state <= IF1;
         WHEN JMP_RET => 
            next_state <= IF1;
         WHEN LEA => 
            next_state <= IF1;
         WHEN SavePC => 
            IF (Opcode = op_trap) THEN 
               next_state <= trap1;
            ELSIF (offset11Flag = '0') THEN 
               next_state <= jsr;
            ELSIF (offset11Flag = '1') THEN 
               next_state <= jsrr;
            ELSE
               next_state <= SavePC;
            END IF;
         WHEN jsr => 
            next_state <= IF1;
         WHEN jsrr => 
            next_state <= IF1;
         WHEN LSByte => 
            IF (Opcode=op_ldb) THEN 
               next_state <= LD1;
            ELSIF (Opcode=op_stb) THEN 
               next_state <= ST1;
            ELSE
               next_state <= LSByte;
            END IF;
         WHEN LDB2 => 
            next_state <= IF1;
         WHEN LDI1 => 
            IF (Opcode=op_sti) THEN 
               next_state <= ST1;
            ELSE
               next_state <= LDI2;
            END IF;
         WHEN MResph => 
            IF (Opcode=op_ldb) THEN 
               next_state <= LDB2;
            ELSIF (Opcode = op_ldr) THEN 
               next_state <= LD2;
            ELSIF ((Opcode = op_ldi) OR
                   (Opcode = op_sti)) THEN 
               next_state <= LDI1;
            ELSE
               next_state <= MResph;
            END IF;
         WHEN LDI2 => 
            IF (MRESP_H = '1') THEN 
               next_state <= LD2;
            ELSE
               next_state <= LDI2;
            END IF;
         WHEN aSRL => 
            next_state <= IF1;
         WHEN aSLL => 
            next_state <= IF1;
         WHEN aSRA => 
            next_state <= IF1;
         WHEN stb => 
            IF (MRESP_H ='1') THEN 
               next_state <= IF1;
            ELSE
               next_state <= stb;
            END IF;
         WHEN trap1 => 
            next_state <= trap2;
         WHEN trap2 => 
            IF (MRESP_H = '1') THEN 
               next_state <= trap3;
            ELSE
               next_state <= trap2;
            END IF;
         WHEN trap3 => 
            next_state <= IF1;
         WHEN OTHERS =>
            next_state <= Reset;
      END CASE;
   END PROCESS nextstate_proc;
 
   -----------------------------------------------------------------
   output_proc : PROCESS ( 
      current_state,
      imm5Flag
   )
   -----------------------------------------------------------------
   BEGIN
      -- Default Assignment
      ALUMuxSel <= "00";
      ALUop <= "000";
      LoadIR <= '0';
      LoadMAR <= '0';
      LoadMDR <= '0';
      LoadNZP <= '0';
      LoadPC <= '0';
      MARMuxSel <= "00";
      MDRMuxSel <= '0';
      MDRZextSel <= '0';
      MREAD_L <= '1';
      MWRITEH_L <= '1';
      MWRITEL_L <= '1';
      PCMuxSel <= "00";
      RFMuxSel <= "00";
      RegWrite <= '0';
      StoreSR <= '1';
      destSel <= "00";
      shiftAdj6 <= '0';
      trapSel <= '0';

      -- Combined Actions
      CASE current_state IS
         WHEN L_AND => 
            ALUMuxSel<='0' & imm5Flag;
            ALUop <= alu_and;
            RegWrite <= '1';
            LoadNZP <= '1';
            RFMuxSel <= "01";
         WHEN L_NOT => 
            ALUop <= alu_not;
            RegWrite <= '1';
            LoadNZP <= '1';
            RFMuxSel <= "01";
         WHEN BR2 => 
            PCMuxSel <= "01";
            LoadPC <= '1';
         WHEN IF1 => 
            LoadMAR <= '1';
            LoadPC <= '1';
         WHEN CalcADDR => 
            shiftAdj6<='1';
            ALUMuxSel <= "10";
            ALUop <= alu_add;
            MARMuxSel <= "01";
            LoadMAR <= '1';
         WHEN IF2 => 
            LoadMDR <= '1';
            MREAD_L <= '0' after 6 ns;
         WHEN IF3 => 
            LoadIR <= '1';
         WHEN ST1 => 
            StoreSR <= '0';
            ALUop <= alu_pass;
            LoadMDR <= '1';
            MDRMuxSel <= '1';
         WHEN LD1 => 
            LoadMDR <= '1';
            MREAD_L <= '0' after 6 ns;
         WHEN ST2 => 
            MWRITEL_L <= '0' after 6 ns;
            MWRITEH_L <= '0' after 6 ns;
         WHEN LD2 => 
            RegWrite <= '1';
            LoadNZP <= '1';
         WHEN ADD => 
            ALUMuxSel<='0' & imm5Flag;
            ALUop <= alu_add;
            RegWrite <= '1';
            LoadNZP <= '1';
            RFMuxSel <= "01";
         WHEN JMP_RET => 
            PCMuxSel<= "10";
            LoadPC<='1';
         WHEN LEA => 
            RFMuxSel<="10";
            RegWrite<='1';
            LoadNZP<='1';
         WHEN SavePC => 
            destSel<="10";
            RFMuxSel<="11";
            RegWrite<='1';
         WHEN jsr => 
            destSel<="00";
            PCMuxSel<="10";
            LoadPC<='1';
         WHEN jsrr => 
            PCMuxSel<="11";
            LoadPC<='1';
         WHEN LSByte => 
            ALUMuxSel <= "10";
            ALUop <= alu_add;
            MARMuxSel <= "01";
            LoadMAR <= '1';
         WHEN LDB2 => 
            RegWrite<='1';
            LoadNZP<='1';
            MDRZextSel<='1';
         WHEN LDI1 => 
            MARMuxSel<="10";
            LoadMAR<='1';
         WHEN LDI2 => 
            LoadMDR<='1';
            MREAD_L<='0' after 6ns;
         WHEN aSRL => 
            ALUMuxSel<="11";
            ALUop<= ALU_SRL;
            RegWrite<='1';
            LoadNZP<='1';
            RFMuxSel<="01";
         WHEN aSLL => 
            ALUMuxSel<="11";
            ALUop<= ALU_SLL;
            RegWrite<='1';
            LoadNZP<='1';
            RFMuxSel<="01";
         WHEN aSRA => 
            ALUMuxSel<="11";
            ALUop<= ALU_SRA;
            RegWrite<='1';
            LoadNZP<='1';
            RFMuxSel<="01";
         WHEN stb => 
            MWRITEL_L<='0' after 6 ns;
         WHEN trap1 => 
            MARMuxSel <= "11";
            LoadMAR <= '1';
         WHEN trap2 => 
            LoadMDR <= '1';
            MREAD_L <= '0' after 6 ns;
         WHEN trap3 => 
            trapSel<='1';
            PCMuxSel<="10";
            LoadPC<='1';
         WHEN OTHERS =>
            NULL;
      END CASE;
   END PROCESS output_proc;
 
END fsm;
