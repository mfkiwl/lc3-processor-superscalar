onerror {resume}
radix fpoint 22
quietly WaveActivateNextPane {} 0
add wave -noupdate /mp2_cpu/RESET_L
add wave -noupdate /mp2_cpu/START_H
add wave -noupdate /mp2_cpu/clk
add wave -noupdate /mp2_cpu/theDatapath/PCout
add wave -noupdate /mp2_cpu/theDatapath/ADDRESS
add wave -noupdate /mp2_cpu/DRAM/MWRITEL_L
add wave -noupdate /mp2_cpu/DRAM/MWRITEH_L
add wave -noupdate /mp2_cpu/DRAM/MREAD_L
add wave -noupdate /mp2_cpu/DRAM/DataIn
add wave -noupdate /mp2_cpu/DRAM/DataOut
add wave -noupdate -expand /mp2_cpu/theDatapath/aRegFile/RAM
add wave -noupdate /mp2_cpu/ControlUnit/current_state
add wave -noupdate /mp2_cpu/DRAM/Cache_Cont/current_state
add wave -noupdate /mp2_cpu/DRAM/Cache_Cont/writeBack
add wave -noupdate /mp2_cpu/DRAM/Cache_Cont/WriteCache
add wave -noupdate /mp2_cpu/DRAM/Cache_Cont/ReplaceCache
add wave -noupdate /mp2_cpu/DRAM/Cache_Cont/miss
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/Way0/DataWrite
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/Way1/DataWrite
add wave -noupdate /mp2_cpu/DRAM/MRESP_H
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/U_3/MWRITEH_L
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/U_3/MWRITEL_L
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/U_3/data
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/U_3/FixedDataOut
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/Way0/DataIn
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/Index
add wave -noupdate /mp2_cpu/DRAM/Cache_Cont/WriteTagsFlags
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/U_1/lru
add wave -noupdate -radix hexadecimal -childformat {{/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(127) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(126) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(125) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(124) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(123) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(122) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(121) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(120) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(119) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(118) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(117) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(116) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(115) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(114) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(113) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(112) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(111) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(110) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(109) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(108) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(107) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(106) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(105) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(104) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(103) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(102) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(101) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(100) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(99) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(98) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(97) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(96) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(95) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(94) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(93) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(92) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(91) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(90) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(89) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(88) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(87) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(86) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(85) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(84) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(83) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(82) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(81) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(80) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(79) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(78) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(77) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(76) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(75) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(74) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(73) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(72) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(71) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(70) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(69) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(68) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(67) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(66) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(65) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(64) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(63) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(62) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(61) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(60) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(59) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(58) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(57) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(56) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(55) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(54) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(53) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(52) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(51) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(50) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(49) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(48) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(47) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(46) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(45) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(44) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(43) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(42) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(41) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(40) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(39) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(38) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(37) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(36) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(35) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(34) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(33) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(32) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(31) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(30) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(29) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(28) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(27) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(26) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(25) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(24) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(23) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(22) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(21) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(20) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(19) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(18) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(17) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(16) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(15) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(14) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(13) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(12) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(11) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(10) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(9) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(8) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(7) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(6) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(5) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(4) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(3) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(2) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(1) -radix fpoint#22} {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(0) -radix fpoint#22}} -subitemconfig {/mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(127) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(126) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(125) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(124) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(123) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(122) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(121) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(120) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(119) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(118) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(117) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(116) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(115) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(114) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(113) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(112) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(111) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(110) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(109) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(108) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(107) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(106) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(105) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(104) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(103) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(102) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(101) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(100) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(99) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(98) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(97) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(96) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(95) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(94) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(93) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(92) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(91) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(90) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(89) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(88) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(87) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(86) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(85) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(84) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(83) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(82) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(81) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(80) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(79) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(78) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(77) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(76) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(75) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(74) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(73) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(72) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(71) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(70) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(69) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(68) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(67) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(66) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(65) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(64) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(63) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(62) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(61) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(60) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(59) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(58) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(57) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(56) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(55) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(54) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(53) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(52) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(51) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(50) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(49) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(48) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(47) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(46) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(45) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(44) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(43) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(42) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(41) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(40) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(39) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(38) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(37) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(36) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(35) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(34) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(33) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(32) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(31) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(30) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(29) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(28) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(27) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(26) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(25) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(24) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(23) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(22) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(21) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(20) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(19) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(18) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(17) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(16) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(15) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(14) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(13) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(12) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(11) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(10) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(9) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(8) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(7) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(6) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(5) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(4) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(3) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(2) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(1) {-height 16 -radix fpoint#22} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag(0) {-height 16 -radix fpoint#22}} /mp2_cpu/DRAM/Cache_DP/U_4/newTagFlag
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/U_4/wantedTag
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/Replace0
add wave -noupdate -expand /mp2_cpu/DRAM/Cache_DP/Way0/Data
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/Replace1
add wave -noupdate -expand /mp2_cpu/DRAM/Cache_DP/Way1/Data
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/writeFlags
add wave -noupdate -expand /mp2_cpu/DRAM/Cache_DP/tagsFlags/Data
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/Way1/Index
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/U_2/line
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/U_2/offsetIntoLine
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/U_2/DataIn
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {23 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 313
configure wave -valuecolwidth 87
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {5491 ns} {5875 ns}