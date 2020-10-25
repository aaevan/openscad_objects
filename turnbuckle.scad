$fn = 50;
difference(){
    minkowski(){
        union(){
            rotate([0, 0, 22]) translate([0, 24, 0]) union(){
                translate([0, -12, 0]) cube([5, 24, 5], center=true);
                cylinder(5, 2.5, 2.5, center=true);
            }
            rotate([0, 0, 158]) translate([0, 24, 0]) union(){
                translate([0, -12, 0]) cube([5, 24, 5], center=true);
                cylinder(5, 2.5, 2.5, center=true);
            }
            translate([0, 0, 5.5]) cube([5, 24, 16], center=true);
        }
        union(){
            translate([0, 0, .5]) cylinder(1, 1, 0);
            translate([0, 0, -.5]) cylinder(1, 0, 1);
        };
    }
    //translate([0, 6, 8]) rotate([0, 90, 0]) %cylinder(20, 2, 2, center=true);
    translate([5.5, 6, 8]) rotate([0, 90, 0]) union() {
        cylinder(20, 2, 2, center=true);
        translate([0, 0, -8])cylinder(4, 4, 0, center=true);
    }
    translate([5.5, -6, 8]) rotate([0, 90, 0]) union() {
        cylinder(20, 2, 2, center=true);
        translate([0, 0, -8])cylinder(4, 4, 0, center=true);
    }
    //translate([0, -6, 8]) rotate([0, 90, 0]) %cylinder(20, 2, 2, center=true);
}
