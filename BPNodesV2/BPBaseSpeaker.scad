 include <../openSCADLibs/lego_brick_builder.scad>

cube([BRICK_WIDTH * 11, BRICK_WIDTH * 5, 3.2]);

// line 5
translate([BRICK_WIDTH * 3, BRICK_WIDTH * 4, 0])
   brick(4,1,1);        // text
 
// line 3
translate([BRICK_WIDTH * 0, BRICK_WIDTH * 2, 0])
   brick(1,1,1);        // left pin  


module speaker(x, y) {
    translate([x, y, 0]) {
        cube([20, 20, 1]);
        translate([10, 10, 1]) {
            scale([0.09, 0.09, 0.09]) {
                surface(file = "Volume.png", center = true, convexity = 5);
            }
        }
    }
}

speaker(32, 4);