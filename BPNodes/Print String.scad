include <../OpenSCAD/BPNode.scad>;

numLines = 3;
longestLine = "Released";

drawBase("Print String");

executePinLeft(line2);
executePinRight(line2);

leftPin(line3, "In String");

