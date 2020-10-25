difference(){
    union(){
        cube([(74 + 3), 22, 18]);
        difference(){
            translate([(77 / 2 - 30 / 2), (22 / 2 - 40 / 2), 0]){
                cube([30, 40, 4]);
            }
            translate([(77 / 2 - 22 / 2), (22 / 2 - 32 / 2), 0]){
                cube([22, 32, 4]);
            }
        }
    }
    translate([1.5, 1.5, 1.5]){
        cube([74, 19, 22]);
    }
}
