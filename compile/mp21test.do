echo "--- Executing initialization force file for ../testcode/mp21test.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp21test.asm program code."
run 5
change /mp2_cpu/dram/vhdl_memory/mem(0) X"00"
change /mp2_cpu/dram/vhdl_memory/mem(1) X"00"
change /mp2_cpu/dram/vhdl_memory/mem(2) X"20"
change /mp2_cpu/dram/vhdl_memory/mem(3) X"00"
change /mp2_cpu/dram/vhdl_memory/mem(4) X"E0"
change /mp2_cpu/dram/vhdl_memory/mem(5) X"16"
change /mp2_cpu/dram/vhdl_memory/mem(6) X"10"
change /mp2_cpu/dram/vhdl_memory/mem(7) X"0A"
change /mp2_cpu/dram/vhdl_memory/mem(8) X"40"
change /mp2_cpu/dram/vhdl_memory/mem(9) X"61"
change /mp2_cpu/dram/vhdl_memory/mem(10) X"3F"
change /mp2_cpu/dram/vhdl_memory/mem(11) X"90"
change /mp2_cpu/dram/vhdl_memory/mem(12) X"40"
change /mp2_cpu/dram/vhdl_memory/mem(13) X"63"
change /mp2_cpu/dram/vhdl_memory/mem(14) X"7F"
change /mp2_cpu/dram/vhdl_memory/mem(15) X"92"
change /mp2_cpu/dram/vhdl_memory/mem(16) X"02"
change /mp2_cpu/dram/vhdl_memory/mem(17) X"E4"
change /mp2_cpu/dram/vhdl_memory/mem(18) X"80"
change /mp2_cpu/dram/vhdl_memory/mem(19) X"C0"
change /mp2_cpu/dram/vhdl_memory/mem(20) X"21"
change /mp2_cpu/dram/vhdl_memory/mem(21) X"10"
change /mp2_cpu/dram/vhdl_memory/mem(22) X"29"
change /mp2_cpu/dram/vhdl_memory/mem(23) X"10"
change /mp2_cpu/dram/vhdl_memory/mem(24) X"01"
change /mp2_cpu/dram/vhdl_memory/mem(25) X"52"
change /mp2_cpu/dram/vhdl_memory/mem(26) X"40"
change /mp2_cpu/dram/vhdl_memory/mem(27) X"12"
change /mp2_cpu/dram/vhdl_memory/mem(28) X"77"
change /mp2_cpu/dram/vhdl_memory/mem(29) X"12"
change /mp2_cpu/dram/vhdl_memory/mem(30) X"63"
change /mp2_cpu/dram/vhdl_memory/mem(31) X"52"
change /mp2_cpu/dram/vhdl_memory/mem(32) X"41"
change /mp2_cpu/dram/vhdl_memory/mem(33) X"73"
change /mp2_cpu/dram/vhdl_memory/mem(34) X"41"
change /mp2_cpu/dram/vhdl_memory/mem(35) X"67"
change /mp2_cpu/dram/vhdl_memory/mem(36) X"FF"
change /mp2_cpu/dram/vhdl_memory/mem(37) X"96"
change /mp2_cpu/dram/vhdl_memory/mem(38) X"C0"
change /mp2_cpu/dram/vhdl_memory/mem(39) X"C1"
change /mp2_cpu/dram/vhdl_memory/mem(40) X"FF"
change /mp2_cpu/dram/vhdl_memory/mem(41) X"0F"
run 5
echo "Done loading ../testcode/mp21test.asm program code."
