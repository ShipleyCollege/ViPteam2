// Height of pins
pinHeight = 7;      // was 7
// ----------------------------------------------------- //
// Draw a cylinder and drill a hole in it                //
// ----------------------------------------------------- //
module pin(px, py, pz) {
    translate([px, py, pz]) {
        difference() {
            cylinder(h=pinHeight, r=2.5, $fn=16);
            translate([2, 2, 1]);
                cylinder(h=pinHeight, r2=0.5, r1=0.75, $fn=16);
        }
    }   
}

// pin(0, 0, 0);