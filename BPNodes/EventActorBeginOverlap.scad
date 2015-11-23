include <../OpenSCAD/BPNode.scad>;

numLines = 3;
longestLine = "Event  Actor Begin Overlap";

drawBase("Event  Actor Begin Overlap");

executePinRight(line2);

rightPin(line3, "Other Actor");
