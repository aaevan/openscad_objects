// designed (but not tested?) to work with 20x20 extrusion.

$fn = 50;
union() {
    difference() {
        minkowski() {
            union() {
                translate([0, 0, 1]) cylinder(1, 1, 0, center=true);
                scale(-1) translate([0, 0, 1]) cylinder(1, 1, 0, center=true);
            }
            cube([18, 18, 5], center=true);
        }
        cylinder(10, 1.5, 1.5, center=true);
        translate([0, 0, -6]) cylinder(10, 3, 3, center=true);
        translate([0, 0, .99]) cylinder(4, 3, 0, center=true);
        translate([0, 0, -2.1]) cylinder(4, 4, 0, center=true); // bottom fchamfer
    }
    translate([5, 0, 4]) cube([4, 4, 4], center=true);
    translate([-5, 0, 4]) cube([4, 4, 4], center=true);
}
