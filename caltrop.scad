height = 30;
width = 10;
scale_factor = 1.5;
difference(){
    scale([scale_factor,scale_factor,scale_factor]){
        difference(){
            union(){
                // top spike
                rotate([0, 0, 24.93]) cylinder(height, width, 0, $fn=3);
                // -Y spike
                rotate([0, height, 0]) rotate([101, 0, 0]) cylinder(height, width, 0, $fn=3);
                // +X spike
                rotate([0, 0, 120]) rotate([0, height, 0]) rotate([101, 0, 0]) cylinder(height, width, 0, $fn=3);
                // -X spike
                rotate([0, height, -120]) rotate([101, 0, 0]) cylinder(height, width, 0, $fn=3);
            }
            // smooth out the bottom face for ease of printing
            translate([0, 0, -49.5]) cube([90, 90, 90], center=true) ;
        }
    }
    
    offset = 0;
    // hole for a long M3 button head screw to provide reinforcement along
    // fragile top spike
    union(){
        translate([offset, offset, -9.5]) cylinder(5, 3.5, 3.5, $fn=20);
        translate([offset, offset, -9.5]) cylinder(35, 2, 2, $fn=20);
    }
}
