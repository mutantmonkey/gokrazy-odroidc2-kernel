fatload mmc 2:1 0x11000000 vmlinuz

fatload mmc 2:1 0x12000000 cmdline.txt
setexpr.s bootargs *0x12000000

fatload mmc 2:1 0x1000000 meson-gxbb-odroidc2.dtb

fdt addr 0x1000000

bootz 0x10008000 - 0x14000000
