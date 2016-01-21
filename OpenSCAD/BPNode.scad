use <brailleAndText.scad>;
use <Pin.scad>;

// These are to be overridden in the generated file
// ... they are used to calculate size of base.
numLines = 1;  // was 5
longestLine = "abcdefghijk";

// Thickness of base
bedHeight = 2;      // was 4
// Thickness of top section
reliefHeight = 2.5;   // was 6
// Height of pins
pinHeight = 7;      // was 7

// size of base
baseWidth = 35 + len(longestLine) * 6.25;   // was 40
//baseWidth = 100;
baseDepth = (numLines - 1) * 20 + 15;
// depth of top section
reliefDepth = 15;

// Offsets for each line
line1 = 7;
line2 = line1 + 18;
line3 = line2 + 20;
line4 = line3 + 20;
line5 = line4 + 20;
line6 = line5 + 20;
line7 = line6 + 20;
line8 = line7 + 20;

// offset for items on the left and right
left = 5;
right = baseWidth - 10;


// ----------------------------------------------------- //
// Draw base, add raised area for title and add title    //
// ----------------------------------------------------- //
module drawBase(title) { 
    cube([baseDepth,baseWidth,bedHeight]);      // Base
    cube([reliefDepth,baseWidth,reliefHeight]); // Top
    translate([0, (baseWidth/2 - lenText(title)/2), reliefHeight])
        printTextAndBraille(title);             // Title
}

// -------------------------------------------------------------- //
// Draw cube and drill a hole in it,                              //
// - then add a cylinder made with four segments (i.e. a diamond) //
// -------------------------------------------------------------- //
module executePin(px, py) {
    translate([px, py, 0]) {
        difference() {
            translate([-2.5, -2.5, 0])
            cube([5, 6.5, pinHeight]);
            translate([2, 2, 1]);
            cylinder(h=pinHeight, r1=0.5, r2=0.75, $fn=16);
        }
        translate([0, 4, 0])
        cylinder(h=pinHeight, r=2.5, $fn=4);
    } 
}

module executePinLeft(line) {
   executePin(line2, left);
} 

module executePinRight(line) {
   executePin(line2, right);
} 

module executePinLeftWithText(px, text) {
    executePin(px, left);
    printText(px, left, text);    
}

module executePinRightWithText(px, text) {
    y = lenText(text) + 20 ;  
    executePin(px, right);
    printText(px, right - y, text);    
}


// ----------------------------------------------------- //
// Call module from 'brailleAndText' library to draw     //
// ... text and braille                                  //
// ----------------------------------------------------- //
module printText(px, py, textValue) {
    translate([px - 7, py + 10, bedHeight]) {
        printTextAndBraille(textValue);
    }
}

// ----------------------------------------------------- //
// Call modules to draw pin and text on the left         //
// ----------------------------------------------------- //
module leftPin(line, text) {   
    pin(line, left, 0);
    printText(line, left, text);
}

// ----------------------------------------------------- //
// Call modules to draw pin and text on the right        //
// ----------------------------------------------------- //
module rightPin(line, text) {
    y = lenText(text) + 20 ;  
    pin(line, right, 0);
    printText(line, right - y, text);
}


// ------------------------------------------------------------- //
// ------------------------------------------------------------- //
//                        T O    U S E  ;                        //
// 1. Create file and add the following line at the top;         //
// include <BPNode.scad>;                                        //
// 2. Change value of numLines and longestLine, as appropritate. //
// 3. Add any of the other commands below, as appropriate.       //
// ------------------------------------------------------------- //
// ------------------------------------------------------------- //


/*
// include <BPNode.scad>; 
numLines = 5;
longestLine = "abcdefghijk";

drawBase("Print");

executePinLeft(line2);
//executePinLeftWithText(line2, "TestA");
executePinRight(line2);
//executePinRightWithText(line2, "TestB");

leftPin(line3, "String");
leftPin(line4, "Text"); 
leftPin(line5, "Log"); 

rightPin(line3, "Out");
*/