
clear -all

# Load checks that will be verified
# config_rtlds -rule -load /home/jef/cadence/installs/jasper_2023.09p002/etc/res/rtlds/rules/superlint_VHDL.def
# config_rtlds -rule -load /home/jef/cadence/installs/jasper_2023.09p002/etc/res/rtlds/rules/superlint_Verilog_SystemVerilog.def 
config_rtlds -rule -load Superlint_Deployment_Rulefile_Lint_2022_09_Customer.def


# analyze -register -vhdl -f files_vhd.f
# analyze -sort -vhdl -f files_vhd.f
analyze -vhdl ../rtl/statemanager.vhd
analyze -vhdl ../rtl/bus_savestates.vhd
analyze -vhdl ../rtl/savestates.vhd
analyze -vhdl ../rtl/t65/T65_Pack.vhd
analyze -vhdl ../rtl/t65/T65_MCode.vhd
analyze -vhdl ../rtl/t65/T65_ALU.vhd
analyze -vhdl ../rtl/t65/T65.vhd



analyze -sv -f files_sv.f
analyze -sv -f files_mappers_sv.f




# elaborate -top sys_top -bbox_m DSP48A1 -bbox_m dpram


# clock -infer
# reset -none

# # Extract properties
# check_superlint -extract


