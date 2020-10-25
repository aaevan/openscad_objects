difference(){
    union(){
        *difference(){
            translate([0, 0, 5])cube([29, 29, 10], center=true);
            cube([25, 25, 22], center=true);
        }
        difference(){
            cylinder(2, d1=41, d2=42, center=true, $fn=100);
            cube([22, 22, 10], center=true);
        }
        translate([0, 0, 1]){
            difference(){
                cylinder(10, d1=42, d2=42, $fn=100);
                cylinder(12, d1=38, d2=38, $fn=100);
            }
        }
    }
    translate([0, 0, -14])rotate([0, 0, 45])cylinder(30, 30, 0, $fn=4);
}
