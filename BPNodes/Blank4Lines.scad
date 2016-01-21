include <../OpenSCAD/BPNode.scad>;

numLines = 4;
longestLine = "                  ";

drawBase("            ");

executePinLeftWithText(line2,"        ");
executePinRightWithText(line2, "        ");

leftPin(line3, "        ");
rightPin(line3, "        ");

leftPin(line4, "        ");
rightPin(line4, "        ");

