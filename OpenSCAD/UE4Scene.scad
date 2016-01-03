bedHeight = 3;
wallHeight = 25;

module bed(x, y, l, w) {
    translate([x, y, 0])
        cube([l, w, bedHeight]);
}

module dot(x, y) {
    color([0, 0, 1])
    translate([x, y, bedHeight]) {
        sphere(radius = 2, center = true);
    }    
}

module dots(start, inc, maxWidth) {
    for (tx =[inc:inc:maxWidth]) 
        for (ty =[start:5:maxWidth]) {
            dot(tx, ty);
        }
    for (ty =[inc:inc:maxWidth]) 
        for (tx =[start:5:maxWidth]) {
            dot(tx, ty);
        }
}

module wall(startx, starty, width, length) {
    translate([startx, starty, 0])
        cube([width, length, wallHeight]);  
}


wall(0, 0, 5, 510);  // w
wall(0, 0, 510, 5);  // n
wall(505, 0, 5, 510); // s
wall(0, 505, 510, 5); // e

difference() {
    bed(5, 5, 500, 500);
    translate([5, 5, 0])
        dots(5, 25, 500);
}
