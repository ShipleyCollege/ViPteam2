include <../OpenSCAD/BPNode.scad>;

numLines = 3;
longestLine = "                  ";

drawBase("            ");

executePinLeftWithText(line2,"        ");
executePinRightWithText(line2, "        ");

leftPin(line3, "        ");
rightPin(line3, "        ");

