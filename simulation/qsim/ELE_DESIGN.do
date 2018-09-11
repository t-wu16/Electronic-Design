onerror {quit -f}
vlib work
vlog -work work ELE_DESIGN.vo
vlog -work work ELE_DESIGN.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MotorTest_vlg_vec_tst
vcd file -direction ELE_DESIGN.msim.vcd
vcd add -internal MotorTest_vlg_vec_tst/*
vcd add -internal MotorTest_vlg_vec_tst/i1/*
add wave /*
run -all
