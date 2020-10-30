// used to push the top edge of a roll-down curtain against a windowframe
// with a 16.3mm/.65in diameter dowel

//at lines 81-86 and lines 97-102 note the option of toggling between a long version and short version

$fn = 50;
diameter = 17;
buck_height = 40;
bracket_thickness = (diameter / 2) + 6;

// commented out dowel to check clearances
translate([0, 0, -50]) %cylinder(r1=diameter/2, r2=diameter/2, h=100);
// wall clearance
%translate([0, -16, -5]) cube([10, 15, 10], center=true);
difference(){
    union(){
        //racetrack body of bracket before chamfer
        intersection(){
            difference(){
                //bracket_body
                translate([-10, 0, 0]){
                    hull(){
                        cylinder(r1=bracket_thickness, r2=bracket_thickness, h=10);
                        translate([20, 0, 0]){
                            cylinder(r1=bracket_thickness, r2=bracket_thickness, h=10);
                        }
                    }
                }

                // cutout for dowel
                translate([-10, 0, -(buck_height / 2)]){
                    hull(){
                        cylinder(r1=diameter/2, r2=diameter/2, h=buck_height);
                        translate([20, 0, 0]){
                            cylinder(r1=diameter/2, r2=diameter/2, h=buck_height);
                        }
                    }
                }
                //buck for UPPER inner chamfer of racetrack
                translate([-10, 0, .5]){
                    hull(){
                        cylinder(r1=0, r2=diameter, h=diameter);
                        translate([20, 0, 0]){
                            cylinder(r1=0, r2=diameter, h=diameter);
                        }
                    }
                }
                //buck for LOWER inner chamfer of racetrack
                translate([-10, 0, -7.5]){
                    hull(){
                        cylinder(r1=diameter, r2=0, h=diameter);
                        translate([20, 0, 0]){
                            cylinder(r1=diameter, r2=0, h=diameter);
                        }
                    }
                }
            }
            // buck for LOWER outer chamfer of racetrack
            translate([-10, 0, -13.5]){
                hull(){
                    cylinder(r1=0, r2=diameter * 2, h=diameter * 2);
                    translate([20, 0, 0]){
                        cylinder(r1=0, r2=diameter * 2, h=diameter * 2);
                    }
                }
            }
            // buck for UPPER outer chamfer of racetrack
            translate([-10, 0, -10.5]){
                hull(){
                    cylinder(r2=0, r1=diameter * 2, h=diameter * 2);
                    translate([20, 0, 0]){
                        cylinder(r2=0, r1=diameter * 2, h=diameter * 2);
                    }
                }
            }
        }
        // attachment plate
        minkowski(){
            union(){
                //vertical block
                // short version
                translate([0, -20.5, 11]) cube([24, 4, 20], center=true);
                translate([0, -15, 3]) rotate([90, 0, 0]) cube([24, 4, 10], center=true);
                // long version
                //translate([0, -25.5, 11]) cube([24, 4, 20], center=true);
                //translate([0, -20, 3]) rotate([90, 0, 0]) cube([24, 4, 14], center=true);
                //horizontal block
            }
            union(){
                cylinder(r1=1, r2=0, h=1);
                translate([0, 0, -1]) cylinder(r2=1, r1=0, h=1);
            }
        }
    }
    translate([-7, -15, 15]) rotate([90, 0, 0]) cylinder(r1=2, r2=2, h=30, center=true);
    translate([7, -15, 15]) rotate([90, 0, 0]) cylinder(r1=2, r2=2, h=30, center=true);
    // short version hole chamfers
    translate([-7, -18.5, 15]) rotate([90, 0, 0]) cylinder(r1=4, r2=0, h=4, center=true);
    translate([7, -18.5, 15]) rotate([90, 0, 0]) cylinder(r1=4, r2=0, h=4, center=true);
    // long version hole chamfers
    //translate([-7, -23.5, 15]) rotate([90, 0, 0]) cylinder(r1=4, r2=0, h=4, center=true);
    //translate([7, -23.5, 15]) rotate([90, 0, 0]) cylinder(r1=4, r2=0, h=4, center=true);
}
