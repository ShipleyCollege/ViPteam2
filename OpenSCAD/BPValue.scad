use <brailleAndText.scad>;

// ----------------------------------------------------- //
// Draw text and Braille, then drill a hole in RHS.      //
// ----------------------------------------------------- //
module printValue(txt) {

    bedHeight = 5;
    baseWidth = 6 + len(txt) * 6.25;
    baseDepth = 14;    
    
    difference() {
        translate([0, 3, 1]) {
            printTextAndBraille(txt); 
        }       
        translate([baseDepth / 2, baseWidth - 5, 0]) {
            cylinder(h=bedHeight, r1=2.75, r2=2.5, $fn=16); 
        }       
    }
}


// ------------------------------------------------------------- //
// ------------------------------------------------------------- //
//                        T O    U S E  ;                        //
// 1. Create file and add the following line at the top;         //
// include <BPValue.scad>;                                       //
// 2. Call 'printValue' with the text to print.                  //
// NB The value can be spaces to print a blank value model.      //
// ------------------------------------------------------------- //
// ------------------------------------------------------------- //

//printValue("Test Value");
