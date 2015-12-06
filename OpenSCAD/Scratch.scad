include <../OpenSCAD/BPValue.scad>;

// ------------------------------------------------------------- //
// ------------------------------------------------------------- //
//                        T O    U S E  ;                        //
// 1. Create file and add the following line at the top;         //
// include <../OpenSCAD/BPValue.scad>;                           //
// 2. Call 'printValue' with the text to print.                  //
// NB The value can be spaces to print a blank value model.      //
// ------------------------------------------------------------- //
// ------------------------------------------------------------- //

module scratchAction(x, y, text) {
  
    bedHeight = 4;
    escapedText = escapeDigits(text);

    baseWidth = 12 + len(escapedText) * 6.25;

    translate([x, y, 0])
        linear_extrude(height = bedHeight, center = true, convexity = 10, twist = 0) {

            polygon([[0,5],[0, 20], [7,25], [7,35], [0,40], [0, 45], [20, 45], [20, 40], [27, 35], [27, 25], [20, 20], [20, 5], [5, 5]]);
            
            scratchBody(x, y, text);
        }
                 
        translate([x+3, y+40, 1])
            printValue(text);
        translate([x, y+40, -2])
            cube([20, baseWidth, bedHeight]);   
}

module scratchEvent(x, y, text) {
  
    bedHeight = 4;
    baseWidth = 12 + len(text) * 6.25;

    translate([x, y, 0])
        linear_extrude(height = bedHeight, center = true, convexity = 10, twist = 0) {

            polygon([[0,5],[0, 20], [0,40], [0, 45], [20, 45], [20, 40], [27, 35], [27, 25], [20, 20], [20, 5], [5, 5]]);
            
            scratchBody(x, y, text);
        }
                 
        translate([x+3, y+10, 1])
            printValue(text);
        translate([x, y+10, -2])
            cube([20, baseWidth, bedHeight]);   
}



module scratchBody(x, y, text) {
    
    translate([5, 5, 0]) {
        intersection(){
            circle(5);
                translate([-5, -5, 0]) {
                    square(5);
                }
        }
    }

    translate([5, 0, 0])
        square(10);

    translate([15, 5, 0]) {
        intersection(){
            circle(5);
                translate([0, -5, 0]) {
                    square(5);
                }
        }
    }               
}


//scratchAction(0, 0, "Turn Left");
//scratchEvent(0, 0, "When Run");
