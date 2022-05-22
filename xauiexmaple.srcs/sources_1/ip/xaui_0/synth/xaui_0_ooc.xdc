#########################################################################################################
# This constraints file contains default clock frequencies to be used during creation of a
# Synthesis Design Checkpoint (DCP). For best results the frequencies should be modified
# to match the target frequencies. 
# This constraints file is not used in top-down/global synthesis (not the default flow of Vivado).
#########################################################################################################
create_clock -period 20,00 [get_ports dclk]

