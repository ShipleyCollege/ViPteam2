include <../OpenSCAD/BPNode.scad>;

numLines = 3;
longestLine = "A  Return Value";

drawBase("Append");

leftPin(line2, "A");
rightPin(line2, "Return Value");

leftPin(line3, "B");

