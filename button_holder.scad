// An mount (uses 2 drywall screws) for a 17.5mm touch-sensitive strip-lighting control 
// button that I bought on aliexpress.

// last known link: "https://www.aliexpress.com/item/4000106862374.html"
// search term to find the same object: "LED dimmer 12v touch button"

difference(){
    minkowski(){
        difference(){ // remove rounded part on flat face
            union(){
                translate([0, 0, 1.5]) cylinder(r1=(17.5 / 2)+3.5, h=12, r2=(17.5 / 2)+3.5, $fn=50);
                translate([0, -9, 7.5])cube([50, 5, 12], center=true);
            }
            translate([0, -15.2, 7.5])cube([52, 8, 16], center=true);
        }
        union(){ // buck for minkowski rounding
            // A small double ended cone works well to round off sharp areas 
            // along upper and lower faces while also rounding vertical edges.
            translate([0, 0, 2]) cylinder(r1=1.5, r2=0, h=2, $fn=50);
            translate([0, 0, 0]) cylinder(r1=0, r2=1.5, h=2, $fn=50);
        }
    }
    //remove profile of switch
    cylinder(r1=(17.5 / 2), h=18, r2=(17.5 / 2), $fn=50);
    union(){
        //screw holes (takes drywall screws)
        translate([20, 0, 9.5]) rotate([90, 0, 0]) cylinder(r1=2.5, r2=2.5, h=25, $fn=50);
        translate([-20, 0, 9.5]) rotate([90, 0, 0]) cylinder(r1=2.5, r2=2.5, h=25, $fn=50);
        //chamfers on screw holes' top face
        translate([20, -4.5, 9.5]) rotate([90, 0, 0]) cylinder(r1=4, r2=0, h=5, $fn=50);
        translate([-20, -4.5, 9.5]) rotate([90, 0, 0]) cylinder(r1=4, r2=0, h=5, $fn=50);
        //smaller chamfers on screw holes' bottom face
        translate([20, -8.75, 9.5]) rotate([90, 0, 0]) cylinder(r1=0, r2=4, h=5, $fn=50);
        translate([-20, -8.75, 9.5]) rotate([90, 0, 0]) cylinder(r1=0, r2=4, h=5, $fn=50);
        //chamfers on switch cutout:
        translate([0, 0, -.5]) cylinder(r1=12, r2=0, h=12, $fn=50);
        translate([0, 0, 7.5]) cylinder(r1=0, r2=12, h=12, $fn=50);
    }
}




