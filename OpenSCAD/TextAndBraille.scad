 include <../openSCADLibs/lego_brick_builder.scad>
 include <../OpenSCAD/brailleAndText.scad>;

module brickNText(text) {
    txtLen = distance * len(text);
    difference() {
        rotate([180,180,90])
            translate([-13, 2, 0])
                printTextAndBraille(text);
        translate([txtLen / 2 - BRICK_WIDTH * 2, 2, -1]) 
            cube([BRICK_WIDTH * 4, BRICK_WIDTH, 4]);
    }
    translate([txtLen / 2 - BRICK_WIDTH * 2,2,0])
        brick(4,1,1, true);
}

// use <../BPNodesV2/TextNBraille.scad>
// brickNText("Make Literal String");
