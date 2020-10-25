$fn = 50;
difference(){
    rotate([-90, 0, 0]) rotate([0, 0, 45]) minkowski(){
        difference(){
            //make quarter cylinder
            intersection(){
                cube([30, 30, 40], center=true);
                translate([15, 15, 0]) cylinder(30, 30, 30, center=true);
                //trim off corners
                translate([5, 5, 0]) rotate([0, 0, 45]) cube([40, 40, 50], center=true);
            }
            translate([-2, -2, 0]) cube([30, 30, 27], center=true);
            //lop of corner of cylinder
            translate([20, 20, 0]) rotate([0, 0, 45]) cube([40, 40, 40], center=true);
            //first chamfer
            translate([10, 10, 0]) cube([20, 20, 27], center=true);
            //inner chamfer
            translate([5, 5, 0]) rotate([0, 0, 45]) cube([15, 15, 27], center=true);
        }
        rotate([0, 0, 45]) rotate([0, 90, 0]) union(){
            translate([0, 0, .75]) cylinder(1.5, 1.5, 0, center=true);
            translate([0, 0, -.75]) cylinder(1.5, 0, 1.5, center=true);
        }
    }
    rotate([90, 0, 0]) cylinder(40, 3, 3);
}
