include <../OpenSCAD/BPNode.scad>;

numLines = 2;
longestLine = "Target Return Value";

drawBase("Get Actor Location");

leftPin(line2, "Target");
rightPin(line2, "Return Value");

