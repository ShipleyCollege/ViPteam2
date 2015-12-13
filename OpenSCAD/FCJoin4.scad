include <../../ViPteam2/OpenSCAD/brailleAndText.scad>;
include <../../ViPteam2/OpenSCADLibs/StringTheory.scad>;
include <Pin.scad>;

baseDepth = 4;
pinHeight = 6;

minX = 4;
minY = 4;
maxX = 10;
maxY = 10;
// ----------------------------------------------------- //
// Draw text and Braille, then drill a hole in RHS.      //
// ----------------------------------------------------- //
module joinConnectors() {  
    cube([maxX+minX,maxY+minY, baseDepth]);
    pin(minX, minY, baseDepth);
    pin(minX, maxY, baseDepth);
    pin(maxX, minY, baseDepth);
    pin(maxX, maxY, baseDepth);
   
}

//joinConnectors();

