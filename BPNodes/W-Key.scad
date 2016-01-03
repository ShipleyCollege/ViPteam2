include <../OpenSCAD/BPNode.scad>;

numLines = 3;
longestLine = "Released";

drawBase("W Key");

executePinRightWithText(line2, "Pressed");

executePinRightWithText(line3, "Released");
