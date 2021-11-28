## Programming the DE0-Nano from source  

### Install Quartus  
https://fpgasoftware.intel.com/  
Select edition: Lite -> Individual Files  
Download these two parts:  
- Quartus Prime  
- Cyclone IV device support  

### Compile the VHDL  
Connect the usb cable  
Start Quartus  
Open Project -> ```vhdl/rgb2vga.qpf```  
Processing -> Start Compilation  

This produces the file: ```output_files/rgb2vga.sof```

File -> Convert Programming Files...  
Open Conversion Setup Data... -> ```DE0-Nano.cof  ```
Generate  
Close  

This produces the file: ```output_files/rgb2vga.jic```

### Program the DE0-Nano  
Tools -> Programmer  
Hardware Setup... -> USB-Blaster  (should be already autodetected)  
Delete any entries pre-loaded in the middle section (probably has ```output_files/rgb2vga.sof```)  
Add File... -> ```output_files/rgb2vga.jic```  
Tick "Program/Configure"  
Start  

## The DE0-Nano is now programmed
