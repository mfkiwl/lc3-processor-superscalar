echo "--- Executing initialization force file for ../testcode/factorial.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/factorial.asm program code."
run 5
change /mp1_cpu/dram/vhdl_memory/mem(0) X"05"
change /mp1_cpu/dram/vhdl_memory/mem(1) X"00"
change /mp1_cpu/dram/vhdl_memory/mem(2) X"00"
change /mp1_cpu/dram/vhdl_memory/mem(3) X"00"
change /mp1_cpu/dram/vhdl_memory/mem(4) X"01"
change /mp1_cpu/dram/vhdl_memory/mem(5) X"00"
change /mp1_cpu/dram/vhdl_memory/mem(6) X"41"
change /mp1_cpu/dram/vhdl_memory/mem(7) X"61"
change /mp1_cpu/dram/vhdl_memory/mem(8) X"40"
change /mp1_cpu/dram/vhdl_memory/mem(9) X"63"
change /mp1_cpu/dram/vhdl_memory/mem(10) X"41"
change /mp1_cpu/dram/vhdl_memory/mem(11) X"65"
change /mp1_cpu/dram/vhdl_memory/mem(12) X"42"
change /mp1_cpu/dram/vhdl_memory/mem(13) X"67"
change /mp1_cpu/dram/vhdl_memory/mem(14) X"41"
change /mp1_cpu/dram/vhdl_memory/mem(15) X"69"
change /mp1_cpu/dram/vhdl_memory/mem(16) X"42"
change /mp1_cpu/dram/vhdl_memory/mem(17) X"6D"
change /mp1_cpu/dram/vhdl_memory/mem(18) X"BF"
change /mp1_cpu/dram/vhdl_memory/mem(19) X"9F"
change /mp1_cpu/dram/vhdl_memory/mem(20) X"C6"
change /mp1_cpu/dram/vhdl_memory/mem(21) X"1F"
change /mp1_cpu/dram/vhdl_memory/mem(22) X"41"
change /mp1_cpu/dram/vhdl_memory/mem(23) X"6B"
change /mp1_cpu/dram/vhdl_memory/mem(24) X"47"
change /mp1_cpu/dram/vhdl_memory/mem(25) X"12"
change /mp1_cpu/dram/vhdl_memory/mem(26) X"07"
change /mp1_cpu/dram/vhdl_memory/mem(27) X"04"
change /mp1_cpu/dram/vhdl_memory/mem(28) X"06"
change /mp1_cpu/dram/vhdl_memory/mem(29) X"10"
change /mp1_cpu/dram/vhdl_memory/mem(30) X"06"
change /mp1_cpu/dram/vhdl_memory/mem(31) X"14"
change /mp1_cpu/dram/vhdl_memory/mem(32) X"C5"
change /mp1_cpu/dram/vhdl_memory/mem(33) X"18"
change /mp1_cpu/dram/vhdl_memory/mem(34) X"87"
change /mp1_cpu/dram/vhdl_memory/mem(35) X"14"
change /mp1_cpu/dram/vhdl_memory/mem(36) X"F9"
change /mp1_cpu/dram/vhdl_memory/mem(37) X"05"
change /mp1_cpu/dram/vhdl_memory/mem(38) X"03"
change /mp1_cpu/dram/vhdl_memory/mem(39) X"17"
change /mp1_cpu/dram/vhdl_memory/mem(40) X"FC"
change /mp1_cpu/dram/vhdl_memory/mem(41) X"0F"
change /mp1_cpu/dram/vhdl_memory/mem(42) X"FF"
change /mp1_cpu/dram/vhdl_memory/mem(43) X"0F"
run 5
echo "Done loading ../testcode/factorial.asm program code."
