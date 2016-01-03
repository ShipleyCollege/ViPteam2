include <BPNode.scad>;

// ----------------------------------------------------- //
// Call module to draw get variable                      //
// ----------------------------------------------------- //
module getVariable(variableName) {
    drawBase();
    y = lenText(variableName) + 20 ;  
    pin(line1, right, 0);
    printText(line1, right - y, variableName);
}

// ----------------------------------------------------- //
// Call module to draw set variable                      //
// ----------------------------------------------------- //
module setVariable(variableName) {
    drawBase("Set");
    cube([baseDepth*2.2,baseWidth,bedHeight]);  // fix base depth    
    y = lenText(variableName) + 20 ; 
    executePin(line1, left); 
    executePin(line1, right); 
    pin(line2, left, 0);
    printText(line2, right - y, variableName);
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
//setVariable("Hello Count");
