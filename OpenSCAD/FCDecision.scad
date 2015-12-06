include <../../ViPteam2/OpenSCAD/brailleAndText.scad>;
include <../../ViPteam2/OpenSCADLibs/StringTheory.scad>;
include <Pin.scad>;

textOffset = 12;

baseWidth =  textOffset * 2 + 10 * 6.25;  // for 10 chars/line
baseHeight = baseWidth;

baseDepth = 4;
pinHeight = 6;
pinOffset = baseHeight / 10;

line1 = -baseHeight/2+15;
line2 = -7;
line3 = baseHeight/2-30;
// -------------------------------------------------------------------- //
// Draw diamond and draw text over three lines of 8, 12 and 8 chars.    //
// -------------------------------------------------------------------- //
module printValue(textString) {  
    txt = escapeDigits(textString) ;  
   
    rotate([0, 0, 45] ) {
        cube([baseHeight,baseWidth, baseDepth], center=true);
    }
    pin(baseHeight / 2 + pinOffset , 0, baseDepth-2);   // bottom
    pin(-baseHeight / 2 - pinOffset, 0, baseDepth-2);  // top
    pin(0, baseWidth / 2 + pinOffset, baseDepth-2);    // right
    pin(0, -baseWidth / 2 - pinOffset, baseDepth-2);   // left
      
    translate([line1, -baseWidth/3+3, baseDepth-2]) {
        printEscapedTextAndBraille(substring(txt, 0, length=8) ); 
    }

    translate([line2, -baseWidth/2, baseDepth-2]) {
        printEscapedTextAndBraille(substring(txt, 8, length=14) ); 
    } 

    translate([line3, -baseWidth/3+3, baseDepth-2]) {
        printEscapedTextAndBraille(substring(txt, 22, length=8) ); 
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

//printValue("Is this a very long question?");
