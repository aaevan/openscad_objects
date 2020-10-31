// 12 of these may be assembled into a dodecahedron,

// this model could easily be scaled up or down and the tolerances would still work.
// the tolerances are tight but this does go together with some force.
// wear gloves for assembly.


union(){
    difference(){
        // starting pentagon shape:
        cylinder(8, 50, 50, $fn=5, center=true);
        // interior pentagon cutout:
        cylinder(10, 40, 40, $fn=5, center=true);
        // small ledge for inserting a screen or other transparent material?
        translate([0, 0, 4]) cylinder(8, 45, 45, $fn=5, center=true);
    }
    // create a copy of the fastening nubs every 72 degrees in a full 360:
    for (rot =[0:72:360]){
        rotate([0, 0, rot]) difference(){
            union(){
                //nubs of 2x connector:
                translate([-46, 22, 0]) cube([11.5, 6, 8], center=true);
                translate([-46, 8, 0]) cube([11.5, 6, 8], center=true);
                // solo connector (with sphere nubs on both sides:
                union(){
                    translate([-46, -15, 0]) cube([11.5, 6, 8], center=true);
                    translate([-47, -15, 0]) difference(){
                        sphere(4.9, $fn=30);
                        translate([0, 0, -9]) cube([10, 10, 10], center=true);
                        translate([0, 0, 9]) cube([10, 10, 10], center=true);
                    }
                }
            }
            // remove spherical volume from inside faces of left pair of connectors:
            translate([-47, 15, 0]) difference(){
                sphere(5, $fn=30);
                translate([0, 0, -9]) cube([10, 10, 10], center=true);
                translate([0, 0, 9]) cube([10, 10, 10], center=true);
            }
            // lower chamfer for connectors (adds clearance)
            translate([-52, 0, -5]) rotate([0, 45, 0]) cube([5, 70, 5], center=true);
            // upper chamfer for connectors (also adds clearance)
            translate([-52, 0, 5]) rotate([0, 45, 0]) cube([5, 70, 5], center=true);
        }
    }
}
