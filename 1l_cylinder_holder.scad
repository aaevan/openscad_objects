difference(){
    minkowski(){
        difference(){
            union(){
                //screw base
                cube([9, 40, 20]);
                //wide flat hook arm
                translate([2, 15, 0]) rotate([0, 0, -5]) cube([5, 80, 12]);
                //support fin
                translate([8, 0, 0]) rotate([0, 0, 0]) cube([12, 85, 5]);
            }
            //smooth tip
            translate([0, 80, -5]) rotate([0, 0, -6]) cube([30, 30, 30]);
            //chamfer bottom edge
            //translate([32, -30, -5]) rotate([0, 0, 45]) cube([40, 40, 40]);
            translate([12, 15, 10]) rotate([0, 0, 108])
            difference(){
                cube([30, 30, 30], center=true);
                translate([25, 25, 5]) cylinder(r1=40, r2=40, h=50, center=true, $fn=100);
            }
            //remove small bit of chaff
            translate([23, 0, 0]) rotate([0, 0, 45]) cube([20, 20, 20], center=true);
                    }
        //mirrored cone buck for adding a chamfer and rounded edges
        union(){
            cylinder(r1=1, r2=0, h=1, $fn=50);
            translate([0, 0, -1]) cylinder(r1=0, r2=1, h=1, $fn=50);
        }
    }
    // origin-most hole
    translate([-10, 9, 11]) rotate([0, 90, 0]) cylinder(r1=2, r2=2, h=30, $fn=50);
    // distal from origin hole
    translate([-10, 32, 11]) rotate([0, 90, 0]) cylinder(r1=2, r2=2, h=30, $fn=50);
    // chamfers for hole edges
    translate([6, 9, 11]) rotate([0, 90, 0]) cylinder(r1=0, r2=4, h=5, $fn=50);
    translate([6, 32, 11]) rotate([0, 90, 0]) cylinder(r1=0, r2=4, h=5, $fn=50);
}

