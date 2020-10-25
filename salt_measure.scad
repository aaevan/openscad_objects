difference() {
    difference() {
        union(){
            cube([34, 34, 34], true);
            difference(){
                translate([0, 0, 17]) rotate([180, 0, 45]) cylinder(28,28,0,$fn=4);
                difference(){
                    cube([42, 42, 50], true);
                    cube([38, 38, 52], true);
                }
            }
        }
        translate([0, 0, 4]) cube([32, 32, 34], true);
    }
    translate([0, 0, 18]) rotate([180, 0, 45]) cylinder(26,26,0,$fn=4);
}
