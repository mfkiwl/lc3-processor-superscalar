onerror {resume}
add list -hex -notrig /mp2_cpu/DRAM/PMDATAOUT
add list -hex -notrig /mp2_cpu/DRAM/PMADDRESS
add list -hex /mp2_cpu/DRAM/PMWRITE_L
configure list -usestrobe 0
configure list -strobestart {0 ns} -strobeperiod {0 ns}
configure list -usesignaltrigger 1
configure list -delta all
configure list -signalnamewidth 0
configure list -datasetprefix 0
configure list -namelimit 5
