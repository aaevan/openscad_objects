// a small cup to measure out a consistent volume of salt for batch cooking
difference() {
    difference() {
        union(){
            // starting cube
            cube([34, 34, 34], true);
            difference(){
                // add top flared edge
                translate([0, 0, 17]) rotate([180, 0, 45]) cylinder(28,28,0,$fn=4);
                // trim outer sharp edge of flared edge
                difference(){
                    cube([42, 42, 50], true);
                    cube([38, 38, 52], true);
                }
            }
        }
        // remove inside volume:
        translate([0, 0, 4]) cube([32, 32, 34], true);
    }
    // remove inside of flared edge:
    translate([0, 0, 18]) rotate([180, 0, 45]) cylinder(26,26,0,$fn=4);
}
