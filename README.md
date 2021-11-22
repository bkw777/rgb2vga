# rgb2vga
Convert 15khz RGB to 31khz VGA

Uses Altera DE0-Nano FPGA development board to convert analog 15Khz RGB signal to VGA 31Khz 256 color.

This is a clone of the original design by Luis Felipe da Costa Antoniosi, to provide the schematic, pcb, vhdl, and docs all together in one place, and to provide editable work files.

For more information and directions see the [original documentation](https://sites.google.com/site/tandycocoloco/rgb2vga)

Don't rush out to buy the parts yet. As of v003 this is tested, the PCB and BOM links are good and it works. That's what's in the video. But there is already some updates on the way, so I suggest wait for v004. The "lowprofile" branch is v004, but isn't done yet.

[![](https://img.youtube.com/vi/MPYQRHWyUGA/hqdefault.jpg)](https://youtu.be/MPYQRHWyUGA)

![](PCB/rgb2vga.jpg)
![](PCB/rgb2vga.svg)

[PCB from OSHPark](https://oshpark.com/shared_projects/a1T9J3OD)  
[PCB from PCBWAY](https://www.pcbway.com/project/shareproject/de0_nano_fpga_rgb2vga.html)  

[BOM from DigiKey](https://www.digikey.com/short/7fwcd5wr)

[DE0-Nano](http://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=593)  
 (or [search ebay](https://www.ebay.com/sch/i.html?_nkw=de0-nano&_sacat=0&LH_TitleDesc=0&_odkw=de0+nano&_osacat=0&_sop=15))

<!-- [Gerbers](../../releases/latest) -->

# TODO
* Write directions for flashing the DE0-Nano  
* Design a 3D-printable enclosure  
* Test the lowprofile branch (aka v004)  
* Move the artifact switch from the dip switch to a larger toggle or rocker or push-on-push-off etc

# Changelog
* 20201104 [v003](../../tree/v003)  
 Re-draw the schematic in KiCad from the original png image. Same circuit, different layout.  
 Ed Snider / Roger Taylor resistor values.  
 Add the RGBI bright channel resistors  
 Full BOM from DigiKey, except for the DE0-Nano.  

* 20211101 [v002](../../tree/v002)  
 Incorporate the additional blue channel bodge resistor (now R26)  
 Routing cleanups for clearances and zone fills  

* 20211101 [v001](../../tree/v001) - Initial commit.  
 Import \*.brd file from https://oshpark.com/shared_projects/QwG4zF3f to make KiCad pcb file.  
 Copy vhdl from https://github.com/lfantoniosi/rgb2vga (forked that repo to start this one).  
 This initial commit preserves the original pcb design for reference.  
