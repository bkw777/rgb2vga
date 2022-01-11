# rgb2vga
Convert 15khz RGB to 31khz VGA

Uses Altera DE0-Nano FPGA development board to convert analog 15Khz RGB signal to VGA 31Khz 256 color.

This is a modified version of the original [RGB2VGA by Luis Felipe da Costa Antoniosi](https://sites.google.com/site/tandycocoloco/rgb2vga).

The electronics and fpga code are the same as the original.

The resistor values are from [Roger Taylor](http://www.cococommunity.net/vga-for-the-coco-3/).

The physical layout is changed to make a more compact package and to build-in the two modifications described in the original docs.

The schematic and pcb layout are re-drawn from scratch in KiCad to provide editable source files.

The VHDL source is just a fork of [the original](https://github.com/lfantoniosi/rgb2vga) but with all the non-source files cleaned out.

The enclosure is new, and the OpenSCAD source provided.

Video showing v003 in action.  
[![](https://img.youtube.com/vi/MPYQRHWyUGA/hqdefault.jpg)](https://youtu.be/MPYQRHWyUGA)

![](PCB/rgb2vga.jpg)
![](PCB/rgb2vga.bottom.jpg)
![](PCB/rgb2vga.svg)
![](case/rgb2vga.png)

<!-- [PCB from OSHPark]()  -->
[PCB from PCBWAY](https://www.pcbway.com/project/shareproject/de0_nano_fpga_rgb2vga.html)  

[BOM from DigiKey](https://www.digikey.com/short/j4vbnmvj)

[DE0-Nano](http://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=593) (or [search ebay](https://www.ebay.com/sch/i.html?_nkw=de0-nano&_sacat=0&LH_TitleDesc=0&_odkw=de0+nano&_osacat=0&_sop=15))  
When searching, don't accidentally get **DE0-Nano-SoC**, that's something else.

[Enclosure from CraftCloud](https://craftcloud3d.com/offer/d4cd8db9-7730-4e94-9b07-fe7791e4c351)

[PCB Gerbers, FPGA Firmware, Enclosure STLs](../../releases/)

# Directions  
## Building the PCB  
- Remove pin #6 from the 2x5 coco3 rgb connector before soldering. Pin #6 is the center pin on the bottom row, opposite/away from the polarity notch.  
- Solder the LM1881 U1 before any of the other parts around it.  
- Solder the Artifact switch SW2 before soldering the trim pot R24.  
- Solder the 3-pin J7 on the bottom and flush-cut the legs on top before soldering the resistors on the top side.  
- Solder remaining parts in any order.  

## Programming the DE0-Nano  
Below is the minimum directions and minimum download possible, using the stand-alone Quartus programmer app and the pre-compiled firmware.  
Alternatively, [compile the firmware from the vhdl source](compile_vhdl.md).

### Install the Quartus Standalone Programmer  
https://fpgasoftware.intel.com/  
Select edition: Lite -> Additional Software -> Quartus Prime Programmer and Tools  
(For Linux, install: Individual Files -> Quartus Prime, not the stand-alone programmer package. The stand-alone Quartus programmer package for Linux is broken, missing ```libprotobuf.so.14.0.0```)

### Download the firmware
Download ```rgb2vga.jic``` from [releases](../../releases/)  

### Program the DE0-Nano  
Connect the usb cable  
Launch the Quartus Programmer app  
Hardware Setup... -> USB-Blaster  
Add File... -> ```rgb2vga.jic```  
Tick "Program/Configure"  
Start  

## Assemble
- Remove the acrylic cover and short upper stand-offs from the DE0-Nano. If using the printed enclosure, remove the lower stand-offs too. If not using the printed enclosure, keep the longer bottom standoffs, replace the short upper standoffs with the screws from the cover.  
- Put the RGB2VGA and DE0-Nano together with the trim pot on the same side as the USB connector.  
- For TANDY Color Computer 3, turn all dip switches off. For most games, turn the Artifact switch on. If using the printed enclosure with enclosure artifact switch, set the pcb artifact switch to OFF.  
- Turn the trim pot to 50%.  
- Insert the IDC pin block-off plugs into pin #6 on each end of the ribbon cable. Pin #6 is the center pin on the row opposite/away from the the polarity bump.  

## Enclosure
The source for the enclosure is the [rgb2vga.scad](case/rgb2vga.scad) OpenSCAD file.

The bottom part of the enclosure has screw holes that will accept the M3 screws that came on the rgb2vga, but the screws are not needed. You can simply remove all hardware parts from the DE0-Nano, put the DE0-Nano + rgb2vga in the case and snap it together.

## Artifact Switch
Cut the 3-pin female jumper cable in half. Set one half aside, it won't be used.  
Take one half and solder the cut ends to the slide switch as per the diagram on the silk screen on the bottom of the PCB.  
Place the switch onto the posts inside the top cover, and melt the posts with a soldering iron to secure the switch to the top cover.  
Plug the remaining 3-pin female plug onto the 3-pin male header on the pcb.  
Set the small artifact switch on the pcb to the "OFF" position before closing up the enclosure.

# Changelog
* 20220102 [v010](../../tree/v010)  
 Added remote artifact switch mounted on enclosure  
 Added labels to enclosure

* 20211211 [v009](../../tree/v009)  
 Added 3d-printable enclosure  
 Added optional remote artifact switch  
 Cleaned out non-source files from vhdl  
 Added directions how to compile and flash the firmware  

* 20211126 v004  
 Low profile pcb - flip the tall components to the bottom side  
 Move plugs to use only 2 sides instead of all 4  
 Ground the monitor sense pin on the coco3 rgb input.

* 20211104 [v003](../../tree/v003)  
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
