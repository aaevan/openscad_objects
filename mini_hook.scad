string_radius=1;
difference(){
    minkowski(){
        cube([3, 8, 3], center=true);
        sphere(r=1, center=true, $fn=50);
    }
    //hole cutout for hook
    translate([.8, 1.25, 0]) cylinder(r1=1.75, r2=1.75, h=20, center=true, $fn=50);
    //round of tips of hook
    translate([3, 1.25, 0]) cylinder(r1=1.5, r2=1.5, h=20, center=true, $fn=50);

    
    // L shaped hole for string
    union(){
        // hole on axis with main body
        translate([0, -7.5, 0]) rotate([90, 0, 0]) cylinder(r1=string_radius, r2=string_radius, h=10, center=true, $fn=50);
        // hole sticking out in direction of hook mouth
        translate([5, -2.5, 0]) rotate([90, 0, 90]) cylinder(r1=string_radius, r2=string_radius, h=10, center=true, $fn=50);
        // sphere of same diameter to join two cylinders at 90deg ball end
        translate([0, -2.5, 0]) sphere(r=string_radius, center=true, $fn=50);
    }
    //top chamfer of hook mouth
    translate([.8, 1.25, 2.75]) cylinder(r1=0, r2=5, h=5, center=true, $fn=50);
    //bottom chamfer of hook mouth
    translate([.8, 1.25, -2.75]) cylinder(r1=5, r2=0, h=5, center=true, $fn=50);
    //chamfer of string knot-side
    translate([3.5, -2.5, 0]) rotate([90, 0, 90]) cylinder(r1=0, r2=5, h=5, center=true, $fn=50);
    //chamfer for hole on-axis with main body
    translate([0, -6, 0]) rotate([90, 0, 0]) cylinder(r1=0, r2=5, h=5, center=true, $fn=50);
}

