# rgb2vga
Convert 15khz RGB to 31khz VGA

Uses Altera DE0-Nano FPGA development board to convert analog 15Khz RGB signal to VGA 31Khz 256 color.

This is a clone of the original design by Luis Felipe da Costa Antoniosi, to provide the schematic, pcb, vhdl, and docs all together in one place, and to provide editable work files.

For more information and directions see the [original documentation](https://sites.google.com/site/tandycocoloco/rgb2vga)

![](PCB/rgb2vga.jpg)
<!-- ![](PCB/rgb2vga.svg) -->

[PCB from OSHPark](https://oshpark.com/shared_projects/QwG4zF3f)
<!-- [PCB from PCBWAY]()  -->

<!-- [BOM from DigiKey]() -->

[Gerbers](../../releases/latest)

# TODO
* Manually redraw schematic from ref/schematic.png
* Incorporate the extra resitor mod
* Roger Taylor's resistor values

# Changelog
* 20211101 [v001](../../tree/v001) - Initial commit.  
 Import \*.brd file from https://oshpark.com/shared_projects/QwG4zF3f to make KiCad pcb file.  
 Copy vhdl from https://github.com/lfantoniosi/rgb2vga (forked that repo to start this one).  
 This initial commit preserves the original pcb design for reference.  
