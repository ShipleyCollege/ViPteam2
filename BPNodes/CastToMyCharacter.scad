include <../OpenSCAD/BPNode.scad>;

numLines = 4;
longestLine = "ObjectAs MyCharacter";

drawBase("Cast to MyCharacter");

executePin(line2, left);
executePin(line2, right);

leftPin(line3, "Object");

rightPin(line3, "Cast Failed");
rightPin(line4, "As MyCharacter");
