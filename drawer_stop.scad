// a small block to prevent my old dresser's drawers from sliding too far 
// back into the frame

difference(){
    minkowski(){
        // body of drawer stop, probably doesn't need to be this beefy.
        union(){
            translate([0, 0, 10]) cube([20, 10, 20], center=true);
            translate([0, 0, 0]) cube([40, 10, 5], center=true);
        };
        // double cone buck for adding a chamfer to horizontal lines and fillets to the verticals
        union(){
            translate([0, 0, -1]) cylinder(r1=0, h=1, r2=1, $fn=50, center=true);
            cylinder(r1=1, h=1, r2=0, $fn=50, center=true);
        }
    }
    // +X hole
    translate([15, 0, 0,]) cylinder(h=10, r=2, $fn=50, center=true);
    // -X hole
    translate([-15, 0, 0,]) cylinder(h=10, r=2, $fn=50, center=true);
    // chamfer on top of holes
    translate([15, 0, 1.5]) cylinder(r1=0, h=3.1, r2=3, $fn=50, center=true); // +X
    translate([-15, 0, 1.5]) cylinder(r1=0, h=3.1, r2=3, $fn=50, center=true); // -X
    // chamfer on bottom of holes
    translate([15, 0, -2.5]) cylinder(r1=3, h=3.1, r2=0, $fn=50, center=true); // +X
    translate([-15, 0, -2.5]) cylinder(r1=3, h=3.1, r2=0, $fn=50, center=true); // -X
}



