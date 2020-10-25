$fn = 20;
//%cube(50, 50, 50, center=true);
difference(){
    minkowski(){
        difference(){
            minkowski(){
                minkowski(){
                    sphere(3);
                    cube(50, 50, 50, center=true);
                }
                sphere(3);
            }
            cube(50, 50, 50, center=true);
        }
        sphere(3);
    }
    translate([25, 0, 0]) cube([50, 80, 80], center=true);
}
