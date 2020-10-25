$fn = 50;
thickness = 5;
intersection() {
    difference(){
        difference(){
            difference(){
                difference(){
                    union(){
                        minkowski(){
                            cylinder(20, 10 + thickness, 10 + thickness, center=true);
                            sphere(r=1);
                        }
                        translate([-24, 0, -6]) {
                            minkowski(){
                                union(){
                                    cube([30, 10, 6], center=true);
                                    translate([-12, 0, 3]) cube([6, 10, 12], center=true);
                                }
                                sphere(r=2);
                            }
                        }
                    }
                    cylinder(24, 9.5, 9.5, center=true);
                }
                translate([24.5, 0, 0]) cube([40, 40, 40], center=true);
            }
            union(){
                translate([0, 0, 10]) cylinder(20, 0, 20, center=true);
                translate([0, 0, -9]) cylinder(20, 20, 0, center=true);
            }
        }
        translate([7.5, 0, 0]) rotate([0, 0, 45]) cube([20, 20, 25], center=true);
    }
    translate([-23.5, 0, 0]) rotate([0, 0, 45]) cube([60, 60, 25], center=true);
}



