include <../OpenSCAD/BPNode.scad>;

numLines = 4;
longestLine = "Last Index  Completed";

drawBase("For Loop");

executePinLeft(line2);
executePinRightWithText(line2, "Loop Body");

leftPin(line3, "First Index");
rightPin(line3, "Index");

leftPin(line4, "Last Index");
executePinRightWithText(line4, "Completed");


