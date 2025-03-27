#LED IO Standard
set_property IOSTANDARD LVCMOS18 [get_ports {leds_4bits_tri_o[*]}]

#I2C IO Standard
set_property IOSTANDARD LVCMOS18 [get_ports {IOBUF_SCL_0[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {IOBUF_SDA_0[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {IOBUF_SCL_1[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {IOBUF_SDA_1[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {IOBUF_SCL_2[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {IOBUF_SDA_2[0]}]



#Make sure to delete this. Only using to test output speed of IO pins.
set_property IOSTANDARD LVCMOS18 [get_ports P17]
set_property IOSTANDARD LVCMOS18 [get_ports P21]
set_property IOSTANDARD LVCMOS18 [get_ports P74]
set_property IOSTANDARD LVCMOS18 [get_ports P80]
set_property IOSTANDARD LVCMOS18 [get_ports P89]

#AFE7222 SPI IO Standard
set_property IOSTANDARD LVCMOS18 [get_ports MISO_0]
set_property IOSTANDARD LVCMOS18 [get_ports MOSI_0]
set_property IOSTANDARD LVCMOS18 [get_ports SCK_0]
set_property IOSTANDARD LVCMOS18 [get_ports {SS_0_4bits[*]}]

#LTC2666 SPI IO Standard
set_property IOSTANDARD LVCMOS18 [get_ports MISO_1]
set_property IOSTANDARD LVCMOS18 [get_ports MOSI_1]
set_property IOSTANDARD LVCMOS18 [get_ports SCK_1]
set_property IOSTANDARD LVCMOS18 [get_ports {SS_1_2bits[*]}]

#AFE7222 DATA & Digital CLK IO Standard
set_property IOSTANDARD LVCMOS18 [get_ports {IOBUF_DATA0[*]}]
set_property IOSTANDARD LVCMOS18 [get_ports {IOBUF_DATA1[*]}]
set_property IOSTANDARD LVCMOS18 [get_ports {IOBUF_DATA2[*]}]
set_property IOSTANDARD LVCMOS18 [get_ports {IOBUF_DATA3[*]}]
set_property IOSTANDARD LVCMOS18 [get_ports IOBUF_CLK0]
set_property IOSTANDARD LVCMOS18 [get_ports IOBUF_CLK1]
set_property IOSTANDARD LVCMOS18 [get_ports IOBUF_CLK2]
set_property IOSTANDARD LVCMOS18 [get_ports IOBUF_CLK3]

#AFE7222 Sample CLK IO Standard
set_property IOSTANDARD LVCMOS18 [get_ports {IOBUF_CLKP[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {IOBUF_CLKN[0]}]

#MISC Control Signal IO Standards
set_property IOSTANDARD LVCMOS18 [get_ports {ctrl_8bits_tri_o[*]}]

#SPDT Path Control IO Standards
set_property IOSTANDARD LVCMOS18 [get_ports {spdt_10bits_tri_o[*]}]

#Single Ended IO Standards
set_property IOSTANDARD LVCMOS18 [get_ports {IOBUF_SE_0_31[*]}]
set_property IOSTANDARD LVCMOS18 [get_ports {IOBUF_SE_32_37[*]}]

#Temp set diff IO as single ended for testing
set_property IOSTANDARD LVCMOS18 [get_ports {IOBUF_DS_0_21_p[*]}]
set_property IOSTANDARD LVCMOS18 [get_ports {IOBUF_DS_0_21_n[*]}]

#Differential Signal IO Standards
#set_property IOSTANDARD LVDS_18 [get_ports {IOBUF_DS_0_21_p[*]}]
#set_property IOSTANDARD LVDS_18 [get_ports {IOBUF_DS_0_21_n[*]}]

set_property DRIVE 12 [get_ports P89]
set_property SLEW FAST [get_ports P89]
set_property SLEW SLOW [get_ports {IOBUF_SE_32_37[5]}]
set_property SLEW SLOW [get_ports {IOBUF_SE_32_37[4]}]
set_property SLEW SLOW [get_ports {IOBUF_SE_32_37[3]}]
set_property SLEW SLOW [get_ports {IOBUF_SE_32_37[2]}]
set_property SLEW SLOW [get_ports {IOBUF_SE_32_37[1]}]
set_property SLEW SLOW [get_ports {IOBUF_SE_32_37[0]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[21]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[20]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[19]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[18]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[17]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[16]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[15]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[14]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[13]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[12]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[11]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[10]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[9]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[8]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[7]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[6]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[5]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[4]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[3]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[2]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[1]}]
set_property SLEW SLOW [get_ports {IOBUF_DS_0_21_p[0]}]
set_property SLEW FAST [get_ports P17]
set_property SLEW FAST [get_ports P21]
set_property SLEW FAST [get_ports P74]
set_property SLEW FAST [get_ports P80]

set_property DRIVE 12 [get_ports P80]

set_property OFFCHIP_TERM NONE [get_ports P17]
set_property OFFCHIP_TERM NONE [get_ports P74]
