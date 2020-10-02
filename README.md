# msim-sample-verilog

ModelSim verilog simulation environment sample

## Directories
rtl/            - verilog source code
scenario/       - test scenario
bin/            - bash script
work/           - simulation work directory

## How to Run
1. add ModelSim bin path to the bash $PATH
```
$export PATH=$PATH:/your-path/modelsim_ase/bin
```
2. run the bash script in the work directory

```
$cd work
$../bin/run_msin.sh ../scenario/test_1.v

Test Scenario= ../scenario/test_1.v
vlog "+notimingchecks" -sv -y ../rtl "+incdir+../rtl/+" "+libext+.v+" ../scenario/test_1.v 
-- Compiling module test_module
-- Scanning library directory '../rtl'
-- Compiling module mod_top
-- Compiling module mod_a
-- Compiling module mod_b

Top level modules:
	test_module
Errors: 0, Warnings: 0
Reading pref.tcl

# 10.5b

# vsim -c -keepstdout test_module 
# Loading sv_std.std
# Loading work.test_module
# Loading work.mod_top
# Loading work.mod_a
# Loading work.mod_b
VSIM 1> run -all
# ModelSim simulation sample
# ** Note: $finish    : ../scenario/test_1.v(72)
#    Time: 410 ps  Iteration: 1  Instance: /test_module
# Errors: 0, Warnings: 0
```
