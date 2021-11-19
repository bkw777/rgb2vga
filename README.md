# rgb2vga
Convert 15khz RGB to 31khz VGA

Uses Altera DE0-Nano FPGA development board to convert analog 15Khz RGB signal to VGA 31Khz 256 color.

This is a clone of the original design by Luis Felipe da Costa Antoniosi, to provide the schematic, pcb, vhdl, and docs all together in one place, and to provide editable work files.

For more information and directions see the [original documentation](https://sites.google.com/site/tandycocoloco/rgb2vga)

THIS BRANCH "rc003" IS UN-TESTED  
This will become "v003" after testing if it checks out.  

There are no gerbers or oshpark or pcbway links in this branch because this version has a lot of changes and has not been tested yet. Boards parts have been ordered, and testing is in the works.

![](PCB/rgb2vga.jpg)
![](PCB/rgb2vga.svg)

<!-- [PCB from OSHPark](https://oshpark.com/shared_projects/QwG4zF3f) -->
<!-- [PCB from PCBWAY]()  -->

[BOM from DigiKey](https://www.digikey.com/short/7f8hm2tm)

[DE0-Nano](http://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=593)  
 (or [search ebay](https://www.ebay.com/sch/i.html?_nkw=de0-nano&_sacat=0&LH_TitleDesc=0&_odkw=de0+nano&_osacat=0&_sop=15))

<!-- [Gerbers](../../releases/latest) -->

# TODO
* Name the nets in the schematic from the names in the imported pcb.  
* Flip the symbols in the schematic as necessary to match the pcb so the pad nets won't break on update from schematic.  
* Test & verify this new schematic and pcb layout.  
* Write directions for flashing the DE0-Nano.  

# Changelog
* 20201104<!-- [v003](../../tree/v003) -->  
 Created a new schematic based on the original png image. Same circuit, different layout.  
 Ed Snider / Roger Taylor resistor values.  
 Add the RGBI mod resistors  
 Full BOM from DigiKey, except for the DE0-Nano.  

* 20211101 [v002](../../tree/v002)  
 Luis Antoniosi's original updated resistor values  
 Incorporate the additional bodge resistor (now R26)  
 Routing cleanups for clearances and zone fills  

* 20211101 [v001](../../tree/v001) - Initial commit.  
 Import \*.brd file from https://oshpark.com/shared_projects/QwG4zF3f to make KiCad pcb file.  
 Copy vhdl from https://github.com/lfantoniosi/rgb2vga (forked that repo to start this one).  
 This initial commit preserves the original pcb design for reference.  
