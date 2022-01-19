// Flat edge 6mm
// curve 8mm
// Depth... 4mm
$fn=100;

module pin() {
  pin_height=3;
  difference() {
    cylinder(h=pin_height, d=8);
    translate([-4, 3, 0]) cube([8, 1, pin_height]);
    translate([-4, -4, 0]) cube([8, 1, pin_height]);
  }
}

pin();
minkowski() { 
  translate([0,0,5]) cylinder(h=40, r1=10, r2=20);  
  sphere(d=4);
}