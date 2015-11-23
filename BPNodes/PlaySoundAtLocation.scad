include <../OpenSCAD/BPNode.scad>;

numLines = 4;
longestLine = "Play Sound At Location";

drawBase("Play Sound At Location");

executePinLeft(line2);
executePinRight(line2);

leftPin(line3, "Sound");
leftPin(line4, "Location");
