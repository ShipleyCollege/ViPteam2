include <../OpenSCAD/BPNode.scad>;

numLines = 5;
longestLine = "LongerStringOut";

drawBase("Print");

executePin(line2, left);
executePin(line2, right);

leftPin(line3, "LongerString");
leftPin(line4, "Text"); 
leftPin(line5, "Log"); 

rightPin(line3, "Out");
