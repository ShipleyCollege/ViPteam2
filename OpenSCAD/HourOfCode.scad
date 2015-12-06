
tileHeight = 5;

module tile(x, y) {

    difference() {
        difference() {
            difference(){
                difference() {
                    translate([x, y, 0])
                        cube([20,20,tileHeight]);

                translate([x , y , tileHeight-3])
                    rotate([45,0,0])
                        cube([20, 4, 4]);
                } 
            translate([x , y + 20, tileHeight-3])
                rotate([45,0,0])
                    cube([20, 4, 4]);
            }

        translate([x , y , tileHeight-3])
            rotate([45,0,90])
               cube([20, 4, 4]);
        }
        translate([x + 20, y + 0, tileHeight-3])
            rotate([45,0,90])
               cube([20, 4, 4]);
    }

}



module cog(x, y) {
    translate([x, y, 0]) {
        cube([20, 20, 1]);
        translate([10, 10, 1]) {
            scale([0.25, 0.25, 0.25]) {
                surface(file = "../OpenSCAD/HourOfCodeCog.png", center = true, convexity = 5);
            }
        }
    }
}

module cross(x, y) {
    translate([x, y, 0]) {
        cube([20, 20, 1]);
            translate([10, 10, 15]) {
            rotate([0, 0, 0]) {
                scale([0.18, 0.18, 0.15]) {
                    surface(file = "../OpenSCAD/HourOfCodeCross.png", invert = true, center = true, convexity = 5);
                }
            }
        }
    }
}

module boxes(x, y) {
    translate([x, y, 0]) {
        cube([20, 20, 1]);
        translate([6, 1, 0])
            rotate([0, 0, 45])
                cube([7, 7, 7]);
        translate([8, 11, 0])
            rotate([0, 0, 10])
                cube([7, 7, 7]);
        translate([14, 3, 0])
            rotate([0, 0, 40])
                cube([7, 7, 7]);
        translate([8, 6, 7])
            rotate([0, 0, 0])
                cube([7, 7, 7]);
    }
}

module boardTest() {
    difference() {
        cube([50, 50, 10]);
        translate([5, 5, 5])
            cube([40, 40, 6]);
    }
    translate([5, 5, 3])
        for (tx =[0:20:30]) 
            for (ty =[0:20:30]) {
                tile(tx,ty);
            }
}

module board() {
    difference() {
        cube([170, 170, 10]);
        translate([5, 5, 5])
            cube([160, 160, 6]);
    }
    translate([5, 5, 3])
        for (tx =[0:20:150]) 
            for (ty =[0:20:150]) {
                tile(tx,ty);
            }
}

module topPiece(x, y) {
    translate([x + 20, y, 8]) {
    rotate([0, 180, 0]) {
        difference() {
            translate([0, 0, 2]) 
                cube([20, 20, 6]);
            tile(0, 0);
        }
    }
}
}

/*
for (tx =[0:22:60]) {
    topPiece(tx, 0);
}
*/



/*
translate([0, 0, 0])
    color("Blue", 0.5)
        cog(0, 0);
//translate([0, 20, 0])
//    rotate([180, 0, 0])
//        topPiece(0, 0);


translate([0, -25, 0])
    color("Red", 0.5)
        cross(0, 0);
//translate([0, -5, 0])
//    rotate([180, 0, 0])
//        topPiece(0, 0);
*/


//tile(0, 0);
//board();
//boardTest();
//topPiece(0,0);
//cog(0, 0);
//cross(0, 0);



  



