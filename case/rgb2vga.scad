/* 3d-printable enclosure for github.com/bkw777/rgb2vga - v009 */

// This file contains both the top and bottom case parts.
// The "view = ..." setting below selects which part to render for STL export for printing,
// or shows both parts exploded or both parts together for viewing.

// "closed" = show both top & bottom shells and pcb model
// "explode" = show both top & bottom shells, seperated by explode_seperation, and pcb model
// "top" = show top shell alone, rotated and translated for FDM printing
// "bottom" = show bottom shell alone, rotated and translated for FDM printing
view = "explode";
explode_seperation = 30;

$fn = 90;

// To create pcb.stl:
//  pcbnew: export pcb.step
//  freecad: import pcb.step, export pcb.stl
// Both files are huge, exclude from git.
pcb_model_stl = "pcb.stl";

pcb_thickness = 1.6;
space_above = 4;       // rgb2vga pcb top to inside wall ceiling
space_between = 11.25; // de0nano pcb top to rgb2vga pcb bottom
space_below = 10;      // inside wall floor to de0nano pcb bottom

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

fc = 0.2; // part fitment clearance
wall_thickness = 2; // default thickness of all walls
port_gap = 1; // default gap around all port connectors
port_corner = port_gap; // default corner radius around ports

inner_height = space_below + pcb_thickness + space_between + pcb_thickness + space_above;
outer_height = wall_thickness + inner_height + wall_thickness;

pcb_model_elev = rgb2vga_pcb_elev;

// LENGTH - outer length flush with rgb2vga pcb length
outer_length = rgb2vga_pcb_length; // outside flush with rgb2vga pcb
inner_length = outer_length - wall_thickness - wall_thickness;

// WIDTH - inner width larger than de0-nano pcb length
inner_width = fc + de0nano_pcb_length + fc; // inside fit to de0-nano pcb
outer_width = wall_thickness + inner_width + wall_thickness;

inner_fillet = 1;
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

split_elev = outer_height/2; // where to cut for top & bottom parts

// 
clip_width = 3;
clip_depth = 6;
clip_height = 4;
clip_detent = 1;

pcb_mount_post_od = 8;   // fat enough for screw, but no screw needed
pcb_mount_post_id = 2.8; // M3 screw

o = 0.01; // overlap / overcut - ensure union parts overlap and cuts cupletely cut

include <fillet_circle.scad>;

module mirror_copy(vector) {
 children();
 mirror(vector) children();
}

// draws a cube the size of the pcb plus one fc on all sides
module de0nano_pcb_clearance () {
  l = fc + de0nano_pcb_length + fc;
  w = fc + de0nano_pcb_width + fc;
  h = fc + pcb_thickness + fc;
  translate([-w/2,-l/2,-fc+wall_thickness+de0nano_pcb_elev])
   cube([w,l,h]);
}

// with no args, draws a hull in the shape of the pcb
// but tall enough to cut through the whole top case
// with (false), draws a hull the size of the pcb plus one fc on all sides
module rgb2vga_pcb_clearance (tall=true) {
  h = (tall) ? rgb2vga_pcb_elev+pcb_thickness+fc : fc+pcb_thickness+fc ;
  e = (tall) ? wall_thickness : wall_thickness+rgb2vga_pcb_elev-fc ;
  translate([0,pcb_centers_offset,e])
   hull()
    mirror_copy([0,1,0])
     translate([0,rgb2vga_pcb_width/2-rgb2vga_pcb_corner,0])
      mirror_copy([1,0,0])
       translate([rgb2vga_pcb_length/2-rgb2vga_pcb_corner,0,0])
        cylinder(h=h,r=rgb2vga_pcb_corner+fc);
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

module usb_port () {
  w = (usb_gap+usb_width+usb_gap)/2-usb_corner;
  h = (usb_gap+usb_height+usb_gap)/2-usb_corner;
  translate([-11.5,-outer_width/2-o,wall_thickness+de0nano_pcb_elev+pcb_thickness+usb_height/2])
   rotate([-90,0,0])
    hull()
     mirror_copy([0,1,0])
      translate([0,h,0])
       mirror_copy([1,0,0])
        translate([w,0,0])
         cylinder(h=o+wall_thickness+o,r=usb_corner);
}

module top_window () {
  w = window_width/2-window_corner;
  h = window_height/2-window_corner;
  translate([-5.3,6.5,outer_height-wall_thickness-o]) {
   hull()
    mirror_copy([0,1,0])
     translate([0,h,0])
      mirror_copy([1,0,0])
       translate([w,0,0])
        cylinder(h=o+wall_thickness+o,r=window_corner); // window
   hull()
    mirror_copy([0,1,0])
     translate([0,h,0])
      mirror_copy([1,0,0])
       translate([w,0,-1.6])
        cylinder(h=window_corner*2,r1=0,r2=window_corner*2); // chamfer
  }
}

module pcb_model () {
 translate([0,pcb_centers_offset,wall_thickness+pcb_model_elev])
  import(pcb_model_stl);
  //#de0nano_pcb_clearance();
  //#rgb2vga_pcb_clearance(false);
}

module upper_clip () {
 e = 2; // bump extra length
 d = 4; // registration post depth
 w = 2; // registration post width
 l = w - o + fc + clip_width + e ;
 translate([-w,0,split_elev+clip_detent+fc]) {
  translate([o,0,0])
   rotate([0,90,0])
    cylinder(h=l,r=clip_detent); // bump
  difference () {
   // add registration post
   translate([0,-o,-clip_detent])
    cube([w,d+o,split_elev-wall_thickness+o]);
   // cut registration ramp
   translate([w-1,-o-o,-clip_detent-o])
    rotate([0,45,0])
     cube([w,o+d+o+o,w*2]);
  }
 }
}

module bottom_clip () {
 dr = clip_detent + fc;
 h = split_elev - wall_thickness;

 difference() {
  union() {
   // add main post
   translate([0,0,0]) cube([clip_width,clip_depth+o,o+h+clip_height]);
  }
  union(){
   // cut main outside fitment clearance
   translate([-o,clip_depth-fc,h+o+dr])
    cube([o+clip_width+o,fc+o+o,clip_height+o]);
   // cut detent ramp
   translate([clip_width+o,clip_depth-fc+o,h+dr*2+0.75])
    rotate([45,0,180])
     cube([o+clip_width+o,clip_depth,clip_height]);
   // cut lid X-registration ramp
   translate([-o,clip_depth-fc+o,h+dr*2+0.75])
    rotate([0,-45,180])
     cube([clip_width,o+clip_depth-fc+o,clip_height]);
   // cut detent
   translate([-o,clip_depth,h+o+dr])
    rotate([0,90,0])
     cylinder(h=o+clip_width+o,r=dr);
   translate([-o,clip_depth,h+o])
    cube([o+clip_width+o,wall_thickness+o,dr*2]);
  }
 }
}

module bottom_tower () {
 h = de0nano_pcb_elev + o - fc;
 aw = inner_width/2-de0nano_pcb_mount_l/2;
 bw = min(clip_depth,aw+pcb_mount_post_od/2);
 bl = de0nano_pcb_width/2-de0nano_pcb_mount_w/2+fc;

 // pcb mount post
 difference () {
  union() {
   cylinder(d=pcb_mount_post_od,h=h); // screw post
   translate ([-pcb_mount_post_od/2,0,0]) cube([pcb_mount_post_od/2+bl+o,aw+o,h]); // fill from post to end wall
   translate ([0,aw-bw,0]) cube([bl+o,bw+o,h]); // fill from post to case clip
  }
  translate ([0,0,o]) cylinder(d=pcb_mount_post_id,h=h); // screw hole
  translate([0,0,de0nano_pcb_elev-fc-pcb_mount_post_id*0.7]) cylinder(h=pcb_mount_post_id,r1=0,r2=pcb_mount_post_id); // chamfer
 }

 // case clip
 translate ([bl,aw-clip_depth,0]) bottom_clip();

}

module bottom_towers () {
 // center of bottom_tower() is center of the pcb mounting hole
 mirror_copy([1,0,0])
  translate([de0nano_pcb_mount_w/2,0,0])
   mirror_copy([0,1,0])
    translate([0,de0nano_pcb_mount_l/2,wall_thickness-o])
     bottom_tower();
}

module main_shell() {
 difference() {

  union() { // add

   // outer hull
   hull()
    mirror_copy([0,1,0])
     translate([0,-(outer_width/2-outer_corner),0])
      mirror_copy([1,0,0])
       // fast plain cylinder hull
       //translate([-(outer_length/2-outer_corner),0,0])
        //cylinder(h=outer_height,r=outer_corner);
       // slow as balls version just to get rounded corners
       translate([-(outer_length/2-outer_corner),0,outer_height/2])
        mirror_copy([0,0,1]) fil_polar_o(R=outer_corner,inner_fillet+wall_thickness,outer_height/2);
  } // union add

  union() { // remove

  // inner hull
  hull()
   mirror_copy([0,1,0])
    translate([0,-(inner_width/2-inner_corner),0])
     mirror_copy([1,0,0])
      // fast plain cylinder hull
      //translate([-(inner_length/2-inner_corner),0,2])
       //cylinder(h=inner_height,r=inner_corner);
      // slow as balls version just to get rounded corners
      translate([-(inner_length/2-inner_corner),0,inner_height/2+wall_thickness])
       mirror_copy([0,0,1]) fil_polar_o(R=inner_corner,inner_fillet,inner_height/2);

  // usb
  usb_port();
  
  // main ports
  main_ports();
  
  // cut-aways for seeing inside
  //rotate([0,0,180])
  //translate([-outer_length/2-o,0,-o]) cube([o+outer_length+o,outer_width/2+o,o+outer_height+o]);
  //rotate([0,0,180])
  //translate([0,-outer_width/2-o,-o]) cube([outer_length/2+o,o+outer_width+o,o+outer_height+o]);

  } // union remove

 } // difference
  
} // main_shell()

module top_case () {
 difference () {
   union () { // add
    main_shell();

    // add retainer clips
    mirror_copy([1,0,0])
     translate([de0nano_pcb_width/2,0,0])
      mirror_copy([0,1,0])
       translate([0,-inner_width/2,0])
        upper_clip();
    
    // add pcb-hold-down ribs
    mirror_copy([1,0,0])
     translate([17.9,-inner_width/2-o,wall_thickness+inner_height-space_above+fc])
      cube([2,o+inner_width+o,space_above-fc+o]);

   } // add

   union () { // remove
    // cut away the bottom half at split_elev
    tch = split_elev + o;
    translate([0,0,tch/2-o])
     cube([o+outer_length+o,o+outer_width+o,tch],center=true);

    // pcb corners clearance
    rgb2vga_pcb_clearance();
     
    // top window
    top_window();

   } // remove

 } // difference

} // top_case

module bottom_case () {
 difference() {
   main_shell();
   translate([0,0,outer_height/2+split_elev])
    cube([o+outer_length+o,o+outer_width+o,outer_height],center=true);
 } // difference

 bottom_towers();

} // bottom_case

if (view == "closed") {
 //%pcb_model();
 %top_case();
 bottom_case();
}
if (view == "explode") {
 %pcb_model();
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
