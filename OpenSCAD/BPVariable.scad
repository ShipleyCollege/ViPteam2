include <BPNode.scad>;

// ----------------------------------------------------- //
// Call module to draw get variable                      //
// ----------------------------------------------------- //
module getVariable(variableName) {
    y = lenText(variableName) + 22 ;  
    cube([baseDepth, y, bedHeight]);  // fix base depth        
    pin(line1,  y - 5, 0);
    printText(line1,  -2, variableName);
}

// ----------------------------------------------------- //
// Call module to draw set variable                      //
// ----------------------------------------------------- //
module setVariable(variableName) {
    y = lenText(variableName) + 22 ; 
    cube([baseDepth,y,bedHeight]);      // Base
    cube([reliefDepth,y,reliefHeight]); // Top
    translate([0, (y/2 - lenText("Set")/2), reliefHeight])
        printTextAndBraille("Set");             // Title    
    cube([baseDepth*2.2, y ,bedHeight]);  // fix base depth    
    executePin(line1, left); 
    executePin(line1, y - 10); 
    pin(line2, left, 0);
    printText(line2, 5 , variableName);
}

// ------------------------------------------------------------- //
// ------------------------------------------------------------- //
//                        T O    U S E  ;                        //
// 1. Create file and add the following line at the top;         //
// include <BPVariable.scad>;                                    //
// 2. Call 'getVariable()' or 'setVariable()'                    //
// ------------------------------------------------------------- //
// ------------------------------------------------------------- //

// include <BPVariable.scad>; 
//getVariable("Hello Count");
//getVariable("This is a very long name");
//setVariable("Hello Count");
//setVariable("This is a very long name");
