// from https://www.thingiverse.com/thing:38069
// modified fil_polar_o() so that h = total height

// examples
//$fn=90;
//translate([0,0,1.5]) fil_polar_o(18, 2, 1, angle=90);
//translate([0,0,3]) rotate([0,180,0]) fil_polar_o(18, 2, 1, angle=90);

// 2d primitive for outside fillets.
module fil_2d_o(r, angle=90) {
  intersection() {
    circle(r=r);
    polygon([
      [0, 0],
      [0, r],
      [r * tan(angle/2), r],
      [r * sin(angle), r * cos(angle)]
    ]);
  }
}

// 2d primitive for inside fillets.
module fil_2d_i(r, angle=90) {
  difference() {
    polygon([
      [0, 0],
      [0, -r],
      [-r * tan(angle/2), -r],
      [-r * sin(angle), -r * cos(angle)]
    ]);
    circle(r=r);
  }
}

// 3d polar outside fillet.
module fil_polar_o(R, r, h, angle=90) {
  union(){
	  translate([0,0,h-r]) {
		rotate_extrude(convexity=10)
                 translate([R-r, 0, r])
                  fil_2d_o(r, angle);
                cylinder(r=R-r, h=r);
      }
      cylinder(r=R, h=h-r);
  }
}

// 3d polar inside fillet.
module fil_polar_i(R, r, angle=90) {
  rotate_extrude(convexity=10) {
    translate([R, 0, 0]) {
      fil_2d_i(r, angle);
    }
  }
}

// 3d linear outside fillet.
module fil_linear_o(l, r, angle=90) {
  rotate([0, -90, 180]) {
    linear_extrude(height=l, center=false) {
      fil_2d_o(r, angle);
    }
  }
}

// 3d linear inside fillet.
module fil_linear_o(l, r, angle=90) {
  rotate([0, -90, 180]) {
    linear_extrude(height=l, center=false) {
      fil_2d_i(r, angle);
    }
  }
}
