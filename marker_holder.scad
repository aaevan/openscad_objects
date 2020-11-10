// print a pair of these to hold a whiteboard marker. 
// Accepts drywall screws

$fn=50;

//check clearances:
%cube(18, center=true);

difference() {
    // add chamfers to bottom surfaces and fillets to verticals:
    minkowski(){
        // main body with cutout removed and minkowski allowances
        difference(){
            cube (26, center=true);
            translate([5, 0, 5]) cube ([30, 20, 30], center=true);
        }
        // tool for minkowski function:
        union() {
            cylinder(r1=1, r2=0, h=1);
            translate([0, 0, -1]) cylinder(r2=1, r1=0, h=1);
        }
    }
    // position copies of horizontal holes:
    for (i = [[-4, 0, 7], [6, 0, -4]]) {
        translate(i) {
            rotate([90, 0, 0]) union() {
                cylinder(r1=2.5, r2=2.5, h=40, center=true);
                translate([0, 0, 20]) cylinder(r1=4.5, r2=4.5, h=40, center=true);
                translate([0, 0, -13]) cylinder(r1=0, r2=5, h=5);
            }
        }
    }
}
