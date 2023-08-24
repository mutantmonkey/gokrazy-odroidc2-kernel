fatload mmc 2:1 0x40008000 vmlinuz

fatload mmc 2:1 0x42000000 cmdline.txt
setexpr.s bootargs *0x42000000

fatload mmc 2:1 0x44000000 exynos5422-odroidhc1.dtb

fdt addr 0x44000000

bootz 0x40008000 - 0x44000000
