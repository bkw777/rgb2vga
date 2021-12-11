/* 3d-printable enclosure for github.com/bkw777/rgb2vga */

// "closed" = show both top & bottom shells and pcb model
// "explode" = show both top & bottom shells, seperated by explode_seperation, and pcb model
// "top" = show top shell alone, rotated and translated for FDM printing
// "bottom" = show bottom shell alone, rotated and translated for FDM printing
view = "closed";
explode_seperation = 30;

// comment this before importing .scad into freecad
$fn = 180;

// To create this STL file:
//  pcbnew: export pcb.step
//  freecad: import pcb.step, export pcb.stl
// Both files are huge, use temporarily and delete.
// Exclude from git.
pcb_model_stl = "pcb.stl";

pcb_thickness = 1.6;
space_above = 4;
space_between = 11.25; // cad models 11.25 - measured 11.0
space_below = 10;

// difference between de0-nano center and rgb2vga center
pcb_centers_offset = 2.7;   // from pcbnew

de0nano_pcb_length = 75.2;
de0nano_pcb_width = 49;
de0nano_pcb_elev = space_below;
de0nano_pcb_mount_l = 68.6; // from pcbnew
de0nano_pcb_mount_w = 42.4; // from pcbnew

rgb2vga_pcb_length = 70.48; // from pcbnew
rgb2vga_pcb_width = 55.88;  // from pcbnew
rgb2vga_pcb_corner = 3.175; // from pcbnew
rgb2vga_pcb_elev = de0nano_pcb_elev + pcb_thickness + space_between;

o = 0.1;  // overlap / overcut
fc = 0.2; // fitment clearance
wall_thickness = 2; // default thickness of all walls
port_gap = 1; // default gap around all port connectors
port_corner = port_gap;

inner_height = space_below + pcb_thickness + space_between + pcb_thickness + space_above;
outer_height = wall_thickness + inner_height + wall_thickness;

pcb_model_elev = rgb2vga_pcb_elev;

// LENGTH - outer length flush with rgb2vga pcb length
outer_length = rgb2vga_pcb_length; // outside flush with rgb2vga pcb
inner_length = outer_length - wall_thickness - wall_thickness;

// WIDTH - inner width larger than de0-nano pcb length
inner_width = fc + de0nano_pcb_length + fc; // inside touching de0-nano pcb
outer_width = wall_thickness + inner_width + wall_thickness;

inner_corner = 3;
outer_corner = inner_corner + wall_thickness;

window_height = 28;
window_width = 23.5;
window_corner = 2;

usb_width = 7.8;
usb_height = 4.1;
usb_gap = 1 + port_gap;
usb_corner = max(0.1,usb_gap);

hd15_height = 12.6;
ports_width = rgb2vga_pcb_width - 3.5;
ports_height = hd15_height + pcb_thickness; // + pcb_thickness;
ports_gap = fc;
ports_corner = 2;
ports_elev = rgb2vga_pcb_elev-ports_height/2+pcb_thickness;

//split_elev = rca_elev - 0.5;
split_elev = outer_height/2;

clip_width = 3;
clip_depth = 6;
clip_height = 4;
clip_detent = 1;

mount_post_od = 8; // fat enough for screw, but no screw needed
mount_post_id = 2.8; // M3 screw

module mirror_copy(vector) {
 children();
 mirror(vector) children();
}

module de0nano_pcb_clearance () {
  l = fc + de0nano_pcb_length + fc;
  w = fc + de0nano_pcb_width + fc;
  h = fc + pcb_thickness + fc;
  translate([-w/2,-l/2,-fc+wall_thickness+de0nano_pcb_elev])
   cube([w,l,h]);
}

module rgb2vga_pcb_clearance () {
  translate([0,pcb_centers_offset,-fc+wall_thickness+rgb2vga_pcb_elev])
   hull()
    mirror_copy([0,1,0])
     translate([0,rgb2vga_pcb_width/2-rgb2vga_pcb_corner,0])
      mirror_copy([1,0,0])
       translate([rgb2vga_pcb_length/2-rgb2vga_pcb_corner,0,0])
        cylinder(h=fc+pcb_thickness+fc,r=rgb2vga_pcb_corner+fc);
}

module main_ports () {
  pw = (ports_gap+ports_width+ports_gap)/2-ports_corner;
  ph = (ports_gap+ports_height+ports_gap)/2-ports_corner;
  translate([-outer_length/2-o,pcb_centers_offset,wall_thickness+ports_elev])
   rotate([90,0,90])
    hull()
     mirror_copy([0,1,0])
      translate([0,ph,0])
       mirror_copy([1,0,0])
        translate([pw,0,0])
         cylinder(h=o+outer_length+o,r=ports_corner);
}

module pcb_model () {
 translate([0,pcb_centers_offset,wall_thickness+pcb_model_elev])
  import(pcb_model_stl);
 //#de0nano_pcb_clearance();
 //#rgb2vga_pcb_clearance();
}

module upper_clip () {
 e = 2; // extra wider than the female part
 w = 2; // clip_width;
 d = 4; // clip_depth;
 l = w + clip_width + e;
 translate([-clip_width/2-w-fc/2,0,split_elev+clip_detent+fc]) {
  rotate([0,90,0])
   cylinder(h=l,r=clip_detent); // bump
  difference () {
   // add registration rib
   translate([0,-o,-clip_detent])
    cube([w,d+o,split_elev-wall_thickness+o]);
   // cut registration ramp
   translate([w-1,-o-o,-clip_detent-o])
    rotate([0,45,0])
     cube([w,o+d+o+o,w*2]);
  }
 }
}

module lower_clip () {
 dr = clip_detent + fc;
 ih = inner_height/2;
 difference() {
  union() {
   // add main post
   translate([-clip_width/2,-o,wall_thickness-o]) cube([clip_width,clip_depth+o,o+ih+clip_height]);
   //translate([-clip_width/2,fc,wall_thickness-o]) cube([clip_width,clip_depth-fc,ih+o+clip_height]);
  }
  union(){
   // cut detent
   translate([-clip_width/2-o,0,wall_thickness+ih+dr])
    rotate([0,90,0])
     cylinder(h=o+clip_width+o,r=dr);
   // cut fitment clearance
   translate([clip_width/2+o,fc,wall_thickness+ih+dr])
    rotate([0,0,180])
     cube([o+clip_width+o,dr*2,o+clip_height+o]);
   // cut detent ramp
   translate([clip_width/2+o,0,wall_thickness+ih+dr*2+0.5])
    rotate([30,0,180])
     cube([o+clip_width+o,clip_depth,o+clip_height+o]);
   // cut lid X-registration ramp
   translate([-clip_width/2-o,clip_depth+o,wall_thickness+ih+dr*2+0.5])
    rotate([0,-45,180])
     cube([clip_width,o+clip_depth+o,o+clip_height+o]);
  }
 }
}

module mount_posts () {
 mirror_copy([0,1,0])
  translate([0,de0nano_pcb_mount_l/2,0])
   mirror_copy([1,0,0])
    translate([de0nano_pcb_mount_w/2,0,wall_thickness-o])
     difference() {
      cylinder(d=mount_post_od,h=o+de0nano_pcb_elev-fc/2);
      translate([0,0,-o]) cylinder(d=mount_post_id,h=o+de0nano_pcb_elev+o);
     }
}

module main_shell() {
 difference() {

  union() { // add

   // outer hull
   hull()
    mirror_copy([0,1,0])
     translate([0,-(outer_width/2-outer_corner),0])
      mirror_copy([1,0,0])
       translate([-(outer_length/2-outer_corner),0,0])
        cylinder(h=outer_height,r=outer_corner);

  } // union add

  union() { // remove

  // inner hull
  hull()
   mirror_copy([0,1,0])
    translate([0,-(inner_width/2-inner_corner),0])
     mirror_copy([1,0,0])
      translate([-(inner_length/2-inner_corner),0,2])
       cylinder(h=inner_height,r=inner_corner);

  // top window for dip switches
  ww = window_width/2-window_corner;
  wh = window_height/2-window_corner;
  translate([-5.3,6.5,outer_height-wall_thickness-o])
   hull()
    mirror_copy([0,1,0])
     translate([0,wh,0])
      mirror_copy([1,0,0])
       translate([ww,0,0])
        cylinder(h=o+wall_thickness+o,r=window_corner);

  // usb
  uw = (usb_gap+usb_width+usb_gap)/2-usb_corner;
  uh = (usb_gap+usb_height+usb_gap)/2-usb_corner;
  translate([-11.5,-(outer_width/2+o),wall_thickness+de0nano_pcb_elev+pcb_thickness+usb_height/2])
   rotate([-90,0,0])
    hull()
     mirror_copy([0,1,0])
      translate([0,uh,0])
       mirror_copy([1,0,0])
        translate([uw,0,0])
         cylinder(h=o+wall_thickness+o,r=usb_corner);
  
  // main ports
  main_ports();

  // pcb corners clearance
  rgb2vga_pcb_clearance();
  
  // cut-aways for seeing inside
  //translate([0,-40,0]) cube([100,50,100],center=true);
  //translate([-40,0,0]) cube([50,100,100],center=true);

  } // union remove

 } // difference
  
} // main_shell()

module top_case () {
 difference () {
   union () { // add
    main_shell();

    // add retainer clips
    mirror_copy([1,0,0])
     translate([de0nano_pcb_width/2+clip_width/2+0.1,0,0])
      mirror_copy([0,1,0])
       translate([0,-inner_width/2,0])
        upper_clip();
    
    // add registration/stiffener ribs
    mirror_copy([1,0,0])
     translate([17.9,-inner_width/2+o,wall_thickness+inner_height-space_above+fc])
      cube([2,o+inner_width+o,space_above-fc+o]);

   } // add

   union () { // remove
    // cut away the bottom half at split_elev
    tch = split_elev + o;
    translate([0,0,tch/2-o])
     cube([o+outer_length+o,o+outer_width+o,tch],center=true);
   } // remove

 } // difference

} // top_case

module bottom_case () {

 union () {
  difference () {
   union () { // add
    main_shell();
   } // add
   union () { // remove
    bch = outer_height - split_elev + o;
    translate([0,0,split_elev+bch/2])
     cube([o+outer_length+o,o+outer_width+o,bch],center=true);
   } // remove
  } // difference

  mirror_copy([1,0,0])
   translate([de0nano_pcb_width/2+clip_width/2+0.1,0,0])
    mirror_copy([0,1,0])
     translate([0,-inner_width/2,0])
      lower_clip();
 } // union

 // mount posts
 mount_posts();

} // bottom_case

if (view == "closed") {
 
pcb_model();
 %top_case();
 bottom_case();
}
if (view == "explode") {
 pcb_model();
 translate([0,0,explode_seperation/2]) top_case();
 translate([0,0,-explode_seperation/2]) bottom_case();
}
if (view == "top") {
 translate([0,0,outer_height])
  rotate([180,0,0]) {
   //%pcb_model();
   top_case();
  }
}
if (view == "bottom") {
 //%pcb_model();
 bottom_case();
}

