transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/ECE\ 550d/vgacontroller_restored/db {E:/ECE 550d/vgacontroller_restored/db/pll_altpll.v}
vcom -93 -work work {E:/ECE 550d/vgacontroller_restored/vgacontroller.vhd}
vcom -93 -work work {E:/ECE 550d/vgacontroller_restored/pll.vhd}
vcom -93 -work work {E:/ECE 550d/vgacontroller_restored/myvga.vhdl}
vcom -93 -work work {E:/ECE 550d/vgacontroller_restored/vmem.vhd}

