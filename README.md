# team2
Merge model data with OpenSCAD templates to create 3D models


The contents of the BPNodes and BPValues folders are run by OpenSCAD to build a 3D model.

Each of these files refer to the templates which are in the OpenSCAD folder.

The templates, and the functions they expose, are as follows;

BPValue - This template is used to create a 3D model containing text on one side and Braille on the other.
- printValue(text);   // this will print the text parameter as Braille and text.

BPNode - This template is used to create 3D model of a Blueprint node from Unreal Engine 4's Blueprint editor.
- numLines = n        // This is used to calculate the depth of the model
- longestLine = text  // This is used to calculate the width of the model
- drawBase(title)     // This will create the base and add the given title at the top on the model
-- in the following, line is the literal 'line1, line2, line3 etc' and left | right indicates if the pin is on the left or right of the node.
- executePin(line, left | right) // created an execute pin, with hole for 0.1mm connector to be inserted.
- executePinRightWithText(line, text)
- executePinLeftWithText(line, text)

- leftPin(line, text)  // create a data pin, with hole.
- rightPin(line, text)

** TO DO **

New template for BPVariable, which will copy the shape of a variable node in Blueprint.
