# ASAP7_Digital-Design-Template
## Introduction

This template repository is suited for digital signal design (OpenROAD flow-scripts) with the 7nm FinFET open-source ASAP7 PDK and the IIC-OSIC-Tools by IIC JKU.

ARM ASAP7 PDK: https://github.com/The-OpenROAD-Project/asap7 & https://www.sciencedirect.com/science/article/pii/S002626921630026X

IIC-OSIC-Tools: https://github.com/iic-jku/IIC-OSIC-TOOLS

The installation of IIC-OSIC-Tools is explained under `ASAP7_OpenROAD-Template/doc/Docker-Tutorial.pdf` or in this YouTube video: https://www.youtube.com/watch?v=azgFzleiBW8&t=1943s.

The recommended folder structure makes it easy to automate with shell scripts. VHDL files are read and converted into Verilog files (`vhdl2verilog.sh`). If Verilog files are available directly, this step can be skipped. With OpenROAD flow-scripts (ORFS) the newly generated Verilog file is synthesized and a layout is created. All these scripts are automated with `run_all.sh` and can be cleaned again with `clean_all.sh`. The template contains a 4-Bit counter with an enable input to get a better understanding of the structure and the file paths within the scripts.

I have also made a short video on how to use this repo: https://www.youtube.com/watch?v=UrUOg9s7gsM (video uses IHP's SG13G2 PDK)

## How to use this template for your design

#### Step-by-step introduction:

1. Clone this repo into the `foss/designs` folder of your IIC-OSIC-Tools environment with `git clone https://github.com/simi1505/SG13G2_ASIC-Design-Template.git`.
3. Rename the repo as you wish.
4. Execute `clean\_all.sh` to remove any build files.
5. Add your VHDL code to the `vhdl` folder. It is advised that the same folder structure with `rtl` and `sim` is used.
6. Add your `Xschem` files and testbenches to the `xschem` folder
7. Adapt VHDL paths in `vhdl2verilog.sh` in the `verilog` folder. If the design is already done in Verilog, this step can be skipped. Do not forget to also comment out this step in `run\_all.sh`.
8. Add config files to `orfs/flow/designs/asap7`. It is a good idea to copy an existing folder (e.g. `counter_board`) and adapt these files. Do not forget to set the path to the Verilog file in `config.mk` and set up the `constraint.sdc` and `autotuner.json`.
9. Adapt name and Verilog path in `run\_all.sh`.

#### Simulation details:

The VHDL code is simulated with `GHDL` & `GTKWave` (counter_tb.gtkw ) or `Modelsim` (sim.do). The VHDL simulation can be executed with `simulate_vhdl.sh`. The Verilog code is simulated with `verilator` & `iverilog` & `GTKWave` or `Modelsim` (sim_verilog_tb.do or sim_vhdl_tb.do). The Verilog simulation can be executed with `simulate_verilog.sh`. Alternatively, one can use `Surfer` instead of `GTKWave`. Further information can be found in the YouTube video.
