 include <../openSCADLibs/lego_brick_builder.scad>

cube([BRICK_WIDTH * 18, BRICK_WIDTH * 9, 3.2]);

// line 5
translate([BRICK_WIDTH * 7, BRICK_WIDTH * 7, 0])
   brick(4,1,1);        // text
   
// line 3
translate([BRICK_WIDTH * 0, BRICK_WIDTH * 4, 0])
   brick(1,1,1);        // left pin  
translate([BRICK_WIDTH * 3, BRICK_WIDTH * 4, 0])
   brick(4,1,1);        // text
translate([BRICK_WIDTH * 11, BRICK_WIDTH * 4, 0])
   brick(4,1,1);        // text
translate([BRICK_WIDTH * 17, BRICK_WIDTH * 4, 0])
   brick(1,1,1);

// LINE 1
translate([BRICK_WIDTH * 0, BRICK_WIDTH, 0])
   brick(1,1,1);        // left pin  
translate([BRICK_WIDTH * 3, BRICK_WIDTH, 0])
   brick(4,1,1);        // text
translate([BRICK_WIDTH * 11, BRICK_WIDTH, 0])
   brick(4,1,1);        // text
translate([BRICK_WIDTH * 17, BRICK_WIDTH, 0])
   brick(1,1,1);        // right pin
