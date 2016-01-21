 include <../openSCADLibs/lego_brick_builder.scad>
 include <../openSCAD/BPNode.scad>

brick(1, 1, 1);

translate([0, -2, 3])
   executePin(4, 4);
