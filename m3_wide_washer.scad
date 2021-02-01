intersection(){
    difference(){
        // washer body
        cylinder(r1=10, r2=10, h=3, $fn=100, center=true);
        // center hole
        cylinder(r1=2, r2=2, h=5, $fn=100, center=true);
    }
    // upper chamfer
    translate([0, 0, 3.5]) cylinder(r1=15, r2=0, h=15, $fn=100, center=true);
    // lower chamfer
    translate([0, 0, -3.5]) cylinder(r1=0, r2=15, h=15, $fn=100, center=true);
}


