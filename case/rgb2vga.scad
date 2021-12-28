/* 3d-printable enclosure for github.com/bkw777/rgb2vga - v009 */

// This file contains both the top and bottom case parts.
// The "view = ..." setting below selects which part to render for STL export for printing,
// or shows both parts exploded or both parts together for viewing.

// "closed" = show both top & bottom shells and pcb model
// "explode" = show both top & bottom shells, seperated by explode_seperation, and pcb model
// "top" = show top shell alone, rotated and translated for FDM printing
// "bottom" = show bottom shell alone, rotated and translated for FDM printing
view = "bottom";
explode_seperation = 30;

// customizable options
wall_thickness = 1.0;
fc = 0.2; // fitment clearance
inner_corner_h = 6;  // main shell inside corner horizontal radius
inner_corner_v = 2;  // main shell inside corner vertical radius
df = 1;   // default fillet
pcb_mount_post_id = 2.6;  // M3 screw, but not needed
//pcb_mount_post_od = 4.8;  // 6.8 , max 8
pcb_mount_post_wall = 1.8;
pcb_mount_post_od = pcb_mount_post_id + pcb_mount_post_wall*2;   // 6.8 , max 8 possible

// arc smoothness
$fs = 0.2;
$fa = 1;

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

de0nano_pcb_length = 75.4;
de0nano_pcb_width = 49.2;
de0nano_pcb_elev = space_below;
de0nano_pcb_mount_l = 68.6; // from pcbnew
de0nano_pcb_mount_w = 42.4; // from pcbnew

rgb2vga_pcb_length = 70.48; // from pcbnew
rgb2vga_pcb_width = 55.88;  // from pcbnew
rgb2vga_pcb_corner = 3.175; // from pcbnew
rgb2vga_pcb_elev = de0nano_pcb_elev + pcb_thickness + space_between;

port_gap = 1; // gap around port connectors
port_corner = port_gap; // inside corner radius around port connectors

inner_height = space_below + pcb_thickness + space_between + pcb_thickness + space_above;
outer_height = wall_thickness + inner_height + wall_thickness;

pcb_model_elev = rgb2vga_pcb_elev;

// LENGTH - outer length flush with rgb2vga pcb length
outer_length = rgb2vga_pcb_length; // outside flush with rgb2vga pcb
inner_length = outer_length - wall_thickness - wall_thickness;

// WIDTH - inner width larger than de0-nano pcb length
inner_width = fc + de0nano_pcb_length + fc; // inside fit to de0-nano pcb
outer_width = wall_thickness + inner_width + wall_thickness;

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

clip_width = 3;
clip_depth = 6;
clip_height = 4;
clip_detent = 1;

reg_post_width = 2;
reg_post_depth = 4;

top_ribs_loc = 18.85; // 18.85 inside, 21.7 gpio, 25.3 outside
top_ribs_width = 1;

rca_pin_l = 18.41;
rca_pin_i = 2.75;
rca_pin_r = 1.8;
rca_pin_h = 3;

o = 0.01; // overlap / overcut - ensure union parts overlap and cuts cupletely cut

include <handy.scad>;

module de0nano_pcb_clearance () {
  l = fc + de0nano_pcb_length + fc;
  w = fc + de0nano_pcb_width + fc;
  h = fc + pcb_thickness + fc;
  translate([-w/2,-l/2,-fc+wall_thickness+de0nano_pcb_elev])
   cube([w,l,h]);
}

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

module rca_pin_clearance() {
  translate([rgb2vga_pcb_length/2-rca_pin_i,rca_pin_l+pcb_centers_offset,wall_thickness+rgb2vga_pcb_elev+pcb_thickness+rca_pin_h/2-o])
   cylinder(h=rca_pin_h/2,r1=rca_pin_r+fc,r2=(rca_pin_r+fc)/2);
  translate([rgb2vga_pcb_length/2-rca_pin_i,rca_pin_l+pcb_centers_offset,wall_thickness+rgb2vga_pcb_elev+pcb_thickness])
   cylinder(h=rca_pin_h/2,r=rca_pin_r+fc);
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

module top_clip () {
 d = reg_post_depth; // registration post depth
 w = reg_post_width; // registration post width
 l = inner_length/2-de0nano_pcb_width/2+w+o ; // bump cylinder length
 translate([-w,0,split_elev+clip_detent+fc]) {
  difference() {
   translate([o,0,0]) rotate([0,90,0]) cylinder(h=l,r=clip_detent); // bump
   difference () { // cut bump cylinder to inner shell + o
    translate([l-inner_corner_h,inner_corner_h-o,-clip_detent-o]) rotate([0,0,-90]) cube([inner_corner_h+wall_thickness,inner_corner_h+wall_thickness,o+clip_detent*2+o]);
    translate([l-inner_corner_h+o,inner_corner_h-o,-clip_detent-o-o]) cylinder(h=o+o+clip_detent*2+o+o,r=inner_corner_h+o);
   }
  }
  difference () {
   union(){
    translate([0,-o,-clip_detent]) cube([w,d+o,split_elev-wall_thickness+o-fc]); // registration post
    translate([df+w-o,df-o,o-fc]) rotate([0,0,180]) fillet_linear(l=split_elev-wall_thickness+o-clip_detent-inner_corner_v,r=df); // vertical outside fillet
    translate([-df+o,df-o,-wall_thickness]) rotate([0,0,-90]) fillet_linear(l=split_elev-wall_thickness-inner_corner_v-fc+o,r=df); // vertical inside fillet
    translate([w/2,0,-wall_thickness+df]) mirror_copy([1,0,0]) {
      translate([df+w/2-o,inner_corner_v/2-o,-df*2+split_elev-wall_thickness+o-fc]) rotate([90,0,180]) fillet_linear(l=d-inner_corner_v/2+o,r=df); // horizontal depth fillets
      translate([-w/2+o,d-o,-df-df+split_elev-wall_thickness-fc+o]) rotate([0,0,-90]) fillet_polar(R=0,r=df);
      translate([df+w/2-o,inner_corner_v-o,-df+split_elev-wall_thickness-inner_corner_v-fc+o]) rotate([90,0,-90]) fillet_polar(R=inner_corner_v,r=df);
    }
   }
   translate([w-1,-o-o,-clip_detent-o]) rotate([0,45,0]) cube([w,o+d+o+o,clip_detent*1.6]); // registration ramp
  }
 }
 translate([0,d+df-o,-df+outer_height-wall_thickness+o]) rotate([90,0,-90]) fillet_linear(l=w,r=df); // horizontal end fillet
}

module bottom_clip () {
 dr = clip_detent + fc;
 h = split_elev - wall_thickness;

 difference() {
  union() {
   // add main post
   cube([clip_width,clip_depth+o,o+h+clip_height]);
   translate([clip_width+df-o,clip_depth-df+o,0]) rotate([0,0,90]) fillet_linear(l=h+o,r=df);
   translate([clip_width+df-o,0,df]) rotate([-90,90,0]) fillet_linear(l=clip_depth+o,r=df);
   translate([clip_width+df-o,clip_depth-df+o,df]) rotate([0,0,90]) fillet_polar(R=df,r=df,as=90);
   translate([clip_width-o,o,df]) rotate([0,0,90]) fillet_polar(R=0,r=df,A=90,as=90);
   //translate([0,-df+o,df]) rotate([0,90,0]) #fillet_linear(l=clip_width,r=df); // moved to bottom_tower()

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
 bfl = pcb_mount_post_od/2+bl+clip_width;

 // pcb mount post
 difference () {
  union() {
   screw_post(h=h,od=pcb_mount_post_od,fr=df,o=o);
   translate([-pcb_mount_post_od/2,0,0]) {
     cube([pcb_mount_post_od/2+bl+o,aw+o,h]); // fill from post to end wall
     translate([-df+o,aw-df+o,0]) fillet_linear(l=h,r=df);
     translate ([bfl/2,0,0]) mirror_copy([1,0,0]) translate([-df-bfl/2+o,aw-inner_corner_v+o,inner_corner_v]) rotate([0,90,0]) fillet_polar(R=inner_corner_v,r=df,a=90);
     translate([-df+o,0,df]) rotate([270,0,0]) fillet_linear(r=df,l=aw+o);
   }
   translate([0,aw-bw,0]) {
     cube([bl+o,bw+o,h]); // fill from post to case clip
     translate([0,-df+o,df]) rotate([0,90,0]) fillet_linear(l=bl+clip_width,r=df); // moved from bottom_clip()
   }
  }
  union(){
  translate([0,0,o]) cylinder(d=pcb_mount_post_id,h=h); // screw hole
  translate([0,0,de0nano_pcb_elev-fc-pcb_mount_post_id*0.7]) cylinder(h=pcb_mount_post_id,r1=0,r2=pcb_mount_post_id); // chamfer

  // kludge-tastic... just to trim the fillet down to the inner hull + o
  translate([-10,inner_width/2-de0nano_pcb_mount_l/2-df+o,df-o])
   rotate([0,90,0])
    difference() {
     cube([10,10,20]);
     translate([0,0,-o]) cylinder(r=df+o,h=o+20+o);
    }
  }
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
  translate([0,0,outer_height/2]) rounded_cube(w=inner_length,d=inner_width,h=inner_height,rh=inner_corner_h,rv=inner_corner_v,t=wall_thickness);
  union(){
   usb_port();
   main_ports();
  }
 }
}

module top_case () {

 difference () {
  union() {
   main_shell(); // add main shell
   // top ribs
   mirror_copy([1,0,0]) // add pcb-hold-down / panel stiffener ribs
    translate([top_ribs_loc-top_ribs_width/2,-inner_width/2-o,wall_thickness+inner_height-space_above+fc+o])
     union() {
      cube([top_ribs_width,o+inner_width+o,space_above-fc]); // main rib
      translate([top_ribs_width/2,o+inner_width+o,space_above-df-fc])
       rotate([90,0,0])
        mirror_copy([1,0,0])
         translate([-df-top_ribs_width/2+o,0,0]) {
          fillet_linear(l=o+inner_width+o,r=df); // main fillet
          translate([0,0,inner_width/2]) mirror_copy([0,0,1]) translate([0,0,-df+inner_width/2+o]) {
            translate([0,df-inner_corner_v,df-inner_corner_v]) rotate([90,0,90]) fillet_polar(R=inner_corner_v,r=df);
            translate([0,df,0]) rotate([90,0,0]) fillet_linear(l=space_above-fc,r=df);
            translate([df,-space_above+df+fc+o,0]) fillet_polar(R=0,r=df);
          }
         }
      translate([0,inner_width/2+o+o,o]) mirror_copy([0,1,0]) translate([top_ribs_width,-inner_width/2+df-o,-df]) rotate([90,0,-90]) fillet_linear(l=top_ribs_width,r=df);
     }
  }

  union () {
   tch = split_elev + o; // cut bottom half
   translate([0,0,tch/2-o]) cube([o+outer_length+o,o+outer_width+o,tch],center=true);
   rgb2vga_pcb_clearance(); // cut pcb clearance
   top_window(); // cut top window
   rca_pin_clearance();
  }
 } // difference

 // add retainer clips
 mirror_copy([1,0,0])
  translate([de0nano_pcb_width/2,0,0])
   mirror_copy([0,1,0])
    translate([0,-inner_width/2,0])
     top_clip();

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
 %pcb_model();
 top_case();
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
