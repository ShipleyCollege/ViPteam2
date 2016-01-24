 include <../openSCADLibs/lego_brick_builder.scad>
 include <../OpenSCAD/brailleAndText.scad>;

module brickAndText(text) {
    txtLen = distance * len(text);
    echo(distance);
    difference() {
        rotate([180,180,90])
            translate([-13, 2, 0])
                printTextAndBraille(text);
        translate([3, 2, -1]) 
            cube([txtLen - 3, BRICK_WIDTH, 4]);
    }
    translate([3,2,0])
        brick(floor(txtLen / BRICK_WIDTH),1,1, true);    
}

// use <../BPNodesV2/TextNBraille.scad>
//brickAndText("This is a test string");  
