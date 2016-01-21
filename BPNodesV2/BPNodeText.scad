 include <../openSCADLibs/lego_brick_builder.scad>
 use <../OpenSCAD/brailleAndText.scad>;
/*

 Basic Lego brick builder module for OpenScad by Jorg Janssen 2013 (CC BY-NC 3.0) 
 To use this in your own projects add:

 use <path_to_this_file/lego_brick_builder.scad>
 brick (length, width, height [,smooth]);

 Length and width are in standard lego brick dimensions. 
 Height is in flat brick heights, so for a normal lego brick height = 3.
 Add optional smooth = true for a brick without studs. 
 Use height = 0 to just put studs/knobs on top of other things.

 */
$fn = 150;
 
 // this is it:
difference() {
rotate([180,180,90])
  translate([-13, 2, 0])
    printTextAndBraille("Return Value");
  translate([0, 2, -1]) 
    cube([75, BRICK_WIDTH, 4]);
}
translate([0,2,0])
   brick(10,1,1, true);
