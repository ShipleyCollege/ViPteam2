include <../../ViPteam2/OpenSCAD/brailleAndText.scad>;
include <../../ViPteam2/OpenSCADLibs/StringTheory.scad>;
include <Pin.scad>;

textOffset = 12;

baseHeight = 68;
baseWidth =  textOffset * 2 + 10 * 6.25;  // for 10 chars/line
baseDepth = 4;
pinHeight = 6;

line1 = 8;
line2 = 25;
line3 = 45;
// ----------------------------------------------------- //
// Draw text and Braille, then drill a hole in RHS.      //
// ----------------------------------------------------- //
module printValue(textString) {  
    txt = escapeDigits(textString) ;  
    cube([baseHeight,baseWidth, baseDepth]);
    pin(baseHeight / 2, 4, baseDepth);
    pin(baseHeight / 2, baseWidth - 4, baseDepth);
    pin(4, baseWidth / 2, baseDepth);
    pin(baseHeight -4, baseWidth / 2, baseDepth);

    
    
    translate([line1, textOffset, baseDepth]) {
        printEscapedTextAndBraille(substring(txt, 0, length=10) ); 
    }

    translate([line2, textOffset, baseDepth]) {
        printEscapedTextAndBraille(substring(txt, 10, length=10) ); 
    } 

    translate([line3, textOffset, baseDepth]) {
        printEscapedTextAndBraille(substring(txt, 20, length=10) ); 
    }     
}



// ------------------------------------------------------------- //
// ------------------------------------------------------------- //
//                        T O    U S E  ;                        //
// 1. Create file and add the following line at the top;         //
// include <FCProcess.scad>;                                     //
// 2. Call 'printValue' with the text to print.                  //
// NB The text given will be split over three lines.             //
// ------------------------------------------------------------- //
// ------------------------------------------------------------- //

// printValue("Test Value is very long indeed");
