// a small, simple hook that accepts two drywall screws as anchors.

$fn = 50;
difference(){
    minkowski(){ // add vertical fillets and horizontal chamfers
        union(){
            // arm of hook
            rotate([0, 0, 60]) translate([0, 24, 0]) union(){
                translate([0, -12, 0]) cube([5, 24, 5], center=true);
                cylinder(5, 2.5, 2.5, center=true);
            }
            // body of hook
            translate([0, 0, 5.5]) cube([5, 24, 16], center=true);
        }
        // buck for minkowski function
        union(){
            translate([0, 0, .5]) cylinder(1, 1, 0);
            translate([0, 0, -.5]) cylinder(1, 0, 1);
        };
    }
    // +Y screw hole
    translate([5.5, 6, 8]) rotate([0, 90, 0]) union() {
        cylinder(20, 2, 2, center=true);
        translate([0, 0, -8])cylinder(4, 4, 0, center=true);
    }
    // -Y screw hole
    translate([5.5, -6, 8]) rotate([0, 90, 0]) union() {
        cylinder(20, 2, 2, center=true);
        translate([0, 0, -8])cylinder(4, 4, 0, center=true);
    }
}
