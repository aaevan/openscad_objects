// a first pass at suspending a small 1" rockwool plug over a milkjug for
// kratky style growing.

// NOTE: The tolerances are off and there isn't quite enough stability to the plug
// a roughed in possible method of stabilization:
%difference(){
    translate([0, 0, 5])cube([25, 25, 10], center=true);
    cube([21, 21, 22], center=true);
}

difference(){
    union(){
        difference(){
            // slightly chamfered top (-Z) face of cylinder
            cylinder(2, d1=41, d2=42, center=true, $fn=100);
            // cutout for rockwool cube
            cube([22, 22, 10], center=true);
        }
        // vertical hollow cylinder to fit around mouth of milk jug
        translate([0, 0, 1]){
            difference(){
                cylinder(10, d1=42, d2=42, $fn=100);
                cylinder(12, d1=38, d2=38, $fn=100);
            }
        }
    }
    // chamfer top (-Z) square hole
    translate([0, 0, -14])rotate([0, 0, 45])cylinder(30, 30, 0, $fn=4);
}
