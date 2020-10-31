// a clip for use with 3/4"/19mm metal wire rack shelving.
// long term use note: PLA tends to warp over time when under tension. Holds snugly for only a few months.
// question: does ABS do the same thing? I don't have a heated build chamber to test this.

$fn = 50;
thickness = 5;
intersection() {
    difference(){
        difference(){
            union(){
                // round outer edge of main tube clip
                minkowski(){
                    cylinder(20, 10 + thickness, 10 + thickness, center=true);
                    sphere(r=1);
                }
                // move rounded block into place
                translate([-24, 0, -6]) {
                    // create rounded block
                    minkowski(){
                        cube([30, 20, 6], center=true);
                        sphere(r=2);
                    }
                }
            }
            cylinder(24, 9.5, 9.5, center=true);
            translate([24.5, 0, 0]) cube([40, 40, 40], center=true);
        }
        // position tool hole and chamfers in horizontal block
        translate([-29, 0, 0]) {
            union(){
                // vertical hole for tool
                cylinder(30, 2, 2, center=true);
                // top chamfer for tool hole
                translate([0, 0, 1]) cylinder(10, 0, 10, center=true);
                // bottom chamfer for tool hole
                translate([0, 0, -13]) cylinder(10, 10, 0, center=true);
            }
        }
        // top chamfer for main tube clip
        translate([0, 0, 10]) cylinder(20, 0, 20, center=true);
        // bottom chamfer for main tube clip
        translate([0, 0, -9]) cylinder(20, 20, 0, center=true);
        // chamfer tube clip opening
        translate([7.5, 0, 0]) rotate([0, 0, 45]) cube([20, 20, 25], center=true);
    }
    // chamfer outer edges of tube clip opening
    translate([-23.5, 0, 0]) rotate([0, 0, 45]) cube([60, 60, 25], center=true);
}



