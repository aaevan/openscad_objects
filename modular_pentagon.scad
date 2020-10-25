union(){
    difference(){
        cylinder(8, 50, 50, $fn=5, center=true);
        cylinder(10, 40, 40, $fn=5, center=true);
        translate([0, 0, 4]) cylinder(8, 45, 45, $fn=5, center=true);
        //lop off the rest of the perimeter for testing:
        //translate([30, 0, 0]) cube([100, 100, 100], center=true);
    }
    for (rot =[0:72:360]){
        rotate([0, 0, rot]) difference(){
            union(){
                //nubs of 2x connector:
                translate([-46, 22, 0]) cube([11.5, 6, 8], center=true);
                translate([-46, 8, 0]) cube([11.5, 6, 8], center=true);
                union(){
                    translate([-46, -15, 0]) cube([11.5, 6, 8], center=true);
                    translate([-47, -15, 0]) difference(){
                        sphere(4.9, $fn=30);
                        translate([0, 0, -9]) cube([10, 10, 10], center=true);
                        translate([0, 0, 9]) cube([10, 10, 10], center=true);
                    }
                }
            }
            translate([-47, 15, 0]) difference(){
                sphere(5, $fn=30);
                translate([0, 0, -9]) cube([10, 10, 10], center=true);
                translate([0, 0, 9]) cube([10, 10, 10], center=true);
            }
            translate([-52, 0, -5]) rotate([0, 45, 0]) cube([5, 70, 5], center=true);
            translate([-52, 0, 5]) rotate([0, 45, 0]) cube([5, 70, 5], center=true);
        }
    }
}

//lopped off top and bottom sphere:
//difference(){
    //sphere(5, $fn=30);
    //translate([0, 0, -9]) cube([10, 10, 10], center=true);
    //translate([0, 0, 9]) cube([10, 10, 10], center=true);
//}
