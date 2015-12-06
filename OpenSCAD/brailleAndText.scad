include <../../ViPteam2/OpenSCADLibs/StringTheory.scad>;

/*
Based on Braille Module
http://creativecommons.org/licenses/by/3.0/
*/

// mm sizes from http://dots.physics.orst.edu/gs_layout.html

/* 
Updated by Steve Mullarkey 28.11.2015
Now handles the follwoing;
A-Z, a-z, 0-9 (includes numeric escape before each digit)
, ; ' : - . ! " /
( ) (closing parentheses is preceded by an escape character)
~ represents the numeric esacpe character

This will create a model which has text on one side and braille on the other.

*/

radius = 0.25;
spacing = 2.5;
startOffset = 3.75;
distance = startOffset + spacing;

plate_height = 10;
plate_thickness = 10;   

$fn = 10;



module letter(bitmap, char) {
//    echo(char);
	row_size = 2;
	col_size = 3;
	bitmap_size = row_size * col_size;
	
	function loc_x(loc) = floor(loc / row_size) * spacing + spacing;
	function loc_y(loc) = loc % row_size * spacing  + (distance-spacing)/2;

    translate([0, loc_y(-1), -2]) {
        rotate([270, 0, 90]) {
            linear_extrude(height = 1.25)
            text(char, 6);
        }
    }
	
    for (loc = [0:bitmap_size - 1]) {
		if (bitmap[loc] != 0) {
			union() {
				translate(v = [loc_x(loc), loc_y(loc), 0]) {
					sphere(radius = radius* bitmap[loc], center = true);
				}
			}
		}
	}
}


module braille_char(char) {
	if (char == "A" || char == "a") {
		letter([
			1,0,
			0,0,
			0,0
		], char);
	} else if (char == "B" || char == "b") {
		letter([
			1,0,
			1,0,
			0,0
		], char);
	} else if (char == "C" || char == "c") {
		letter([
			1,1,
			0,0,
			0,0
		], char);
	} else if (char == "D" || char == "d") {
		letter([
			1,1,
			0,1,
			0,0
		], char);
	} else if (char == "E" || char == "e") {
		letter([
			1,0,
			0,1,
			0,0
		], char);
	} else if (char == "F" || char == "f") {
		letter([
			1,1,
			1,0,
			0,0
		], char);
	} else if (char == "G" || char == "g") {
		letter([
			1,1,
			1,1,
			0,0
		], char);
	} else if (char == "H" || char == "h") {
		letter([
			1,0,
			1,1,
			0,0
		], char);
	} else if (char == "I" || char == "i") {
		letter([
			0,1,
			1,0,
			0,0
		], char);
	} else if (char == "J" || char == "j") {
		letter([
			0,1,
			1,1,
			0,0
		], char);
	} else if (char == "K" || char == "k") {
		letter([
			1,0,
			0,0,
			1,0
		], char);
	} else if (char == "L" || char == "l") {
		letter([
			1,0,
			1,0,
			1,0
		], char);
	} else if (char == "M" || char == "m") {
		letter([
			1,1,
			0,0,
			1,0
		], char);
	} else if (char == "N" || char == "n") {
		letter([
			1,1,
			0,1,
			1,0
		], char);
	} else if (char == "O" || char == "o") {
		letter([
			1,0,
			0,1,
			1,0
		], char);
	} else if (char == "P" || char == "p") {
		letter([
			1,1,
			1,0,
			1,0
		], char);
	} else if (char == "Q" || char == "q") {
		letter([
			1,1,
			1,1,
			1,0
		], char);
	} else if (char == "R" || char == "r") {
		letter([
			1,0,
			1,1,
			1,0
		], char);
	} else if (char == "S" || char == "s") {
		letter([
			0,1,
			1,0,
			1,0
		], char);
	} else if (char == "T" || char == "t") {
		letter([
			0,1,
			1,1,
			1,0
		], char);
	} else if (char == "U" || char == "u") {
		letter([
			1,0,
			0,0,
			1,1
		], char);
	} else if (char == "V" || char == "v") {
		letter([
			1,0,
			1,1,
			1,0
		], char);
	} else if (char == "W" || char == "w") {
		letter([
			0,1,
			1,1,
			0,1
		], char);
	} else if (char == "X" || char == "x") {
		letter([
			1,1,
			0,0,
			1,1
		], char);
	} else if (char == "Y" || char == "y") {
		letter([
			1,1,
			0,1,
			1,1
		], char);
	} else if (char == "Z" || char == "z") {
		letter([
			1,0,
			0,1,
			1,1
		], char);
    } else if (char == " ") {
		letter([
			0,0,
			0,0,
			0,0
		], char);
     } else if (char == "?") {
		letter([
			0,0,
			1,0,
			1,1
		], char);
     } else if (char == "~") {
		letter([
			0,1,
			0,1,
			1,1
		], " ");
     } else if (char == "1") {
		letter([
			1,0,
			0,0,
			0,0
		], char);
     } else if (char == "2") {
		letter([
			1,0,
			1,0,
			0,0
		], char);
     } else if (char == "3") {
		letter([
			1,1,
			0,0,
			0,0
		], char);
     } else if (char == "4") {
		letter([
			1,1,
			0,1,
			0,0
		], char);
     } else if (char == "5") {
		letter([
			1,0,
			0,1,
			0,0
		], char);
     } else if (char == "6") {
		letter([
			1,1,
			1,0,
			0,0
		], char);
     } else if (char == "7") {
		letter([
			1,1,
			1,1,
			0,0
		], char);
     } else if (char == "8") {
		letter([
			1,0,
			1,1,
			0,0
		], char);
     } else if (char == "9") {
		letter([
			0,1,
			1,0,
			0,0
		], char);
     } else if (char == "0") {
		letter([
			0,1,
			1,1,
			0,0
		], char);
     } else if (char == ",") {
		letter([
			0,0,
			1,0,
			0,0
		], char); 
      } else if (char == ";") {
		letter([
			0,0,
			1,0,
			1,0
		], char); 
     } else if (char == "'") {
		letter([
			0,0,
			0,0,
			1,0
		], char); 
     } else if (char == ":") {
		letter([
			0,0,
			1,1,
			0,0
		], char); 
     } else if (char == "-") {
		letter([
			0,0,
			0,0,
			1,1
		], char); 
     } else if (char == ".") {
		letter([
			0,0,
			1,1,
			0,1
		], char); 
     } else if (char == "!") {
		letter([
			0,0,
			1,1,
			1,0
		], char); 
     } else if (char == "\"") {
		letter([
			0,0,
			0,1,
			1,1
		], char); 
     } else if (char == "(") {
		letter([
			0,0,
			1,1,
			1,1
		], char);
     } else if (char == ")") {
		letter([
			0,0,
			1,1,
			1,1
		], ")");
     } else if (char == "/") {
		letter([
			0,1,
			0,0,
			1,0
		], char); 
	} else {
		echo("Invalid Character: ", char);
	}

}

module braille_str(chars) {
    char_count = len(chars);
	echo(str("Total Width of ", chars, " : ",  distance * char_count, "mm"));
	union() {
		for (count = [0:char_count-1]) {
			translate(v = [0, count * distance, plate_thickness]) {
				braille_char(chars[count]);
			}
		}
		translate(v = [0, -distance/2, 0]) {
			color([0,0,1]) {
				cube(size = [plate_height, distance * (char_count+1), plate_thickness]);
			}
            }                                                      
	}
}

function lenText(txt="Hi") = distance * len(txt);



//--------------------------------------------
// Add escape character before any digits 
//--------------------------------------------
function escapeDigits(string) =
replace((
    replace((
        replace((
          replace((
             replace((
                replace((
                   replace((
                      replace((
                         replace((
                            replace((
                               replace(string, "0", "~0", ignore_case=false, regex=false)),
                             "1", "~1", ignore_case=false, regex=false)),
                             "2", "~2", ignore_case=false, regex=false)),
                             "3", "~3", ignore_case=false, regex=false)),
                             "4", "~4", ignore_case=false, regex=false)),
                             "5", "~5", ignore_case=false, regex=false)),
                             "6", "~6", ignore_case=false, regex=false)),
                             "7", "~7", ignore_case=false, regex=false)),
                             "8", "~8", ignore_case=false, regex=false)),                           
                             "9", "~9", ignore_case=false, regex=false)),
                             ")", "~)", ignore_case=false, regex=false);
;



module printTextAndBraille(textToPrint) {
    
    escapedText = escapeDigits(textToPrint);
    printEscapedTextAndBraille(escapedText);
}

module printEscapedTextAndBraille(escapedText) {

    blockLen = lenText(escapedText);
    if (blockLen > 0) { 
        union()
        {
            difference() {                 // remove second box from first
                translate([0, 0, 1]) {
                    rotate([0,45,0]) {     // make it on its edge
                        braille_str((escapedText)); // make a long box
                    }
                }
                translate([0, -3.25, -8]) {     // move in right place
                    cube(size = [14, (blockLen+8), 8]);  // was 8
                }
            } 
            translate([0.1, -3.1, 0]) {     // move in right place
                cube(size = [14, (blockLen+6), 1]);  // was 14, n, 3
            }
        }
    }        
}

//printTextAndBraille("AbCdEfGhIjKlMnOpQrStUvWxYz0123456789,.;:'\"!?/()");
