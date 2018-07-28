$fn=100; // resolution
frontPlateThickness=0.3;
cylRoundEdgeRadius=0.6;

face_plate_width = 61;
face_plate_height = 46.8;

compartmentWidth = 15.3;
wallThickness = 0.6;

boxDepth = 15;

//color( "blue", 0.2 )
difference() {
    minkowski() {
        cube([face_plate_width, face_plate_height, boxDepth]);
        translate([cylRoundEdgeRadius,cylRoundEdgeRadius, 0])
        cylinder(r=cylRoundEdgeRadius,h=frontPlateThickness);
    }
    //color( "aquamarine", 1.0 )
    translate([cylRoundEdgeRadius,cylRoundEdgeRadius, 0.6])
    cube([face_plate_width, face_plate_height, boxDepth + 1]);
}


translate([cylRoundEdgeRadius,compartmentWidth + wallThickness, 0])
cube([face_plate_width, wallThickness, boxDepth]);

translate([cylRoundEdgeRadius,(compartmentWidth + wallThickness) * 2, 0])
cube([face_plate_width, wallThickness, boxDepth]);

