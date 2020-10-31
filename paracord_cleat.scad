// a light duty cleat for use with parachute cord.
// may be attached to wall with 2x drywall screws (or similar).

$fn = 50;
// rotation applied for a prettier preview image:
rotate([0, 0, 270]) difference(){
    minkowski(){
        // body of hook pre-smoothing:
        union(){
            // +Y hook body:
            rotate([0, 0, 22]) translate([0, 24, 0]) union(){
                translate([0, -12, 0]) cube([5, 24, 5], center=true);
                // rounded hook tip:
                cylinder(5, 2.5, 2.5, center=true);
            }
            // -Y hook body:
            rotate([0, 0, 158]) translate([0, 24, 0]) union(){
                translate([0, -12, 0]) cube([5, 24, 5], center=true);
                // rounded hook tip:
                cylinder(5, 2.5, 2.5, center=true);
            }
            translate([0, 0, 5.5]) cube([5, 24, 16], center=true);
        }
        // add chamfer to horizontals and fillet to verticals:
        union(){
            translate([0, 0, .5]) cylinder(1, 1, 0);
            translate([0, 0, -.5]) cylinder(1, 0, 1);
        };
    }
    // +Y hole for drywall screw
    translate([5.5, 6, 8]) rotate([0, 90, 0]) union() {
        cylinder(20, 2, 2, center=true);
        translate([0, 0, -8])cylinder(4, 4, 0, center=true);
    }
    // -Y hole for drywall screw
    translate([5.5, -6, 8]) rotate([0, 90, 0]) union() {
        cylinder(20, 2, 2, center=true);
        translate([0, 0, -8])cylinder(4, 4, 0, center=true);
    }
}
