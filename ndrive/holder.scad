$fn=50;

module base() {
  union () { 
    minkowski() {
      cube([22.8 , 17.8, 3]);
      cylinder(h=0.1, d=1);
    }

    minkowski() {
      translate([0,0,0]) cube([4.2,4.2,9]);
      cylinder(h=0.1, d=1);
    }
    minkowski() {
     translate([0,13.6,0]) cube([4.2,4.2,9]);
     cylinder(h=0.1, d=1);
    }
    minkowski() {
     translate([18.6,0,0]) cube([4.2,4.2,9]);
     cylinder(h=0.1, d=1);
    }
    minkowski() {
     translate([18.6,13.6,0]) cube([4.2,4.2,9]);
     cylinder(h=0.1, d=1);
    }
  }  
}

module screws() {
  translate([20.5,15.5,0]) cylinder(h=10, d=3.5);
  translate([2.5,15.5,0]) cylinder(h=10, d=3.5);
  translate([2.5,2.5,0]) cylinder(h=10, d=3.5);
  translate([20.5,2.5,0]) cylinder(h=10, d=3.5);  
}

module pin_holder() {
  translate([1,4,1]) cube([1,10,2.1]);  
}

difference() {
  base();
  screws();
  pin_holder();
}




