// for use with 17mm/.75" metal wire shelving.
// fails after a few months due to cold forming of PLA.
$fn = 50;
thickness = 5;
intersection() {
    difference(){
        union(){
            // starting volume of tube clip body:
            minkowski(){
                cylinder(20, 10 + thickness, 10 + thickness, center=true);
                sphere(r=1);
            }
            // hook body (before trimming)
            translate([-24, 0, -6]) {
                minkowski(){ // add rounding to all surfaces of hook body
                    union(){
                        cube([30, 10, 6], center=true);
                        translate([-12, 0, 3]) cube([6, 10, 12], center=true);
                    }
                    sphere(r=2);
                }
            }
        }
        // remove tube volume from clip body:
        cylinder(24, 9.5, 9.5, center=true);
        // trim +X edge of clip body:
        translate([24.5, 0, 0]) cube([40, 40, 40], center=true);
        // upper clip edge chamfer:
        translate([0, 0, 10]) cylinder(20, 0, 20, center=true);
        // lower clip body chamfer:
        translate([0, 0, -9]) cylinder(20, 20, 0, center=true);
        // inner chamfer for clip vertical edges:
        translate([7.5, 0, 0]) rotate([0, 0, 45]) cube([20, 20, 25], center=true);
    }
    // outer chamfer for clip vertical edges:
    translate([-23.5, 0, 0]) rotate([0, 0, 45]) cube([60, 60, 25], center=true);
}



