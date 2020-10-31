// made to hold a tablet against a wall

difference(){
    minkowski(){
        intersection(){
            difference(){
                // starting box tipped on one edge
                translate([0, 0, 15]) rotate([45, 0, 0]) cube([20, 40, 40], center=true);
                // lop off bottom corner
                translate([0, 0, -10]) cube([40, 40, 20], center=true);
                // lop off top half
                translate([0, 0, 55]) cube([80, 80, 80], center=true);
                // cutout for tablet clearance
                translate([0, 0, 25]) rotate([45, 0, 0]) cube([12.5, 45, 45], center=true);
                // chamfer bottom opening
                //translate([0, 0, -23]) rotate([45, 0, 0]) cube([12.5, 45, 45], center=true);
            }
            // chamfer outer corners
            translate([0, 0, 12]) rotate([45, 0, 0]) cube([25, 40, 40], center=true);
        }
        // buck for minkowski chamfering
        intersection(){
            union(){
                cylinder(r1=1, r2=0, h=1, $fn=50);
                translate([0, 0, -1]) cylinder(r2=1, r1=0, h=1, $fn=50);
            }
            // nicked off horizontal edges to save an extra step later
            cylinder(r1=.6, r2=.6, h=3, center=true, $fn=50);
        }
    }   
    // -Y screw hole and screw head clearance
    translate([0, -7.5, 8]) rotate([0, 90, 0]) union(){
        cylinder(r1=2, r2=2, h=40, $fn=50, center=true);
        translate([0, 0, 10.5]) cylinder(r1=4.25, r2=4.25, h=21, $fn=50, center=true);
        // screw hole chamfer
        translate([0, 0, -7]) cylinder(r1=0, r2=4, h=4, $fn=50, center=true);
    }
    // Y screw hole and screw head clearance
    translate([0, 7.5, 8]) rotate([0, 90, 0]) union(){
        cylinder(r1=2, r2=2, h=40, $fn=50, center=true);
        translate([0, 0, 10.5]) cylinder(r1=4.25, r2=4.25, h=21, $fn=50, center=true);
        // screw hole chamfer
        translate([0, 0, -7]) cylinder(r1=0, r2=4, h=4, $fn=50, center=true);
    }
}

