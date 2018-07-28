$fn=100; // resolution
frontPlateThickness=0.3;
bottomThickness=0.6;
cylRoundEdgeRadius=0.6;

face_plate_width = 61;
face_plate_height = 46.8;

compartmentWidth = 11.25;
wallThickness = 0.6;

boxDepth = 15;

//color( "yellow", 0.2 )
difference() {
    minkowski() {
        cube([face_plate_width, face_plate_height, boxDepth]);
        translate([cylRoundEdgeRadius,cylRoundEdgeRadius, 0])
        cylinder(r=cylRoundEdgeRadius,h=bottomThickness);
    }
    
    translate([cylRoundEdgeRadius,cylRoundEdgeRadius, 0.9])
    cube([face_plate_width, face_plate_height, boxDepth + 1]);
}

//color( "red", 1.0 )
translate([cylRoundEdgeRadius,compartmentWidth + wallThickness, 0])
cube([face_plate_width, wallThickness, boxDepth]);

translate([cylRoundEdgeRadius,(compartmentWidth + wallThickness) * 2, 0])
cube([face_plate_width, wallThickness, boxDepth]);

translate([cylRoundEdgeRadius,(compartmentWidth + wallThickness) * 3, 0])
cube([face_plate_width, wallThickness, boxDepth]);



