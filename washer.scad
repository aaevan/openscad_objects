$fn = 50;

cyl_size = 8;
cyl_size_2 = 13;

intersection(){
    intersection(){
        difference() {
            difference() {
                cylinder(4, 10, 10, center=true);
                cylinder(10, 5, 5, center=true);
            }
            union() {
                cylinder(cyl_size, 0, cyl_size, center=true);
                cylinder(cyl_size, cyl_size, 0, center=true);
            }
        }
        union() {
            translate([0, 0, -5]) cylinder(cyl_size_2, 0, cyl_size_2, center=true);
            translate([0, 0, 8]) cylinder(cyl_size_2, cyl_size_2, cyl_size_2, center=true);
        }
    }
    union() {
        translate([0, 0, 5]) cylinder(cyl_size_2, cyl_size_2, 0, center=true);
        translate([0, 0, -8]) cylinder(cyl_size_2, cyl_size_2, cyl_size_2, center=true);
    }
}
