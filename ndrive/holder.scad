$fn=50;

module base() {
  union () { 
    minkowski() {
      cube([22.9 , 18, 3]);
      cylinder(h=0.1, d=1);
    }

    minkowski() {
      translate([0,0,0]) cube([3.9,4,9]);
      cylinder(h=0.1, d=1);
    }
    minkowski() {
     translate([0,14,0]) cube([3.9,4,9]);
     cylinder(h=0.1, d=1);
    }
    minkowski() {
     translate([19,0,0]) cube([3.9,4,9]);
     cylinder(h=0.1, d=1);
    }
    minkowski() {
     translate([19,14,0]) cube([3.9,4,9]);
     cylinder(h=0.1, d=1);
    }
  }  
}

module screws() {
  translate([21,16,0]) cylinder(h=10, d=3.5);
  translate([2,16,0]) cylinder(h=10, d=3.5);
  translate([2,2,0]) cylinder(h=10, d=3.5);
  translate([21,2,0]) cylinder(h=10, d=3.5);  
}

module pin_holder() {
  translate([1,4,1]) cube([1,10,2.1]);  
}

difference() {
  base();
  screws();
  pin_holder();
}




