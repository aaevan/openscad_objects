// a small object I made so eggs don't roll off of my kitchen counter

// squish along y axis
scale([.7, .5, .7]){
    // apply chamfers
    intersection(){
        difference(){
            //base cylinder
            translate([0, 0, -1]) cylinder(r1=25, r2=25, h=16, $fn=50);
            // remove divot from top face
            translate([0, 0, 50]) sphere(r=50, $fn=50);
            // top face smoothing
            translate([0, 0, 43.25]) cube([75, 75, 75], center=true);
        }
        //top edge chamfer
        translate([0, 0, -5])cylinder(r1=35, r2=0, h=35, $fn=50);
        // base chamfer
        translate([0, 0, -25.25])cylinder(r1=0, r2=35, h=35, $fn=50);
    }
}
