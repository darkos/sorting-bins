$fn=100; // resolution
frontPlateThickness=0.3;
bottomThickness=0.6;
cylRoundEdgeRadius=0.6;

face_plate_width = 61;
face_plate_height = 46.8;

compartmentWidth = 11.25;
wallThickness = 0.6;

boxDepth = 15;

bin_Z_translate = 20;
bin_Y_translate = face_plate_height + 3 + 1.5;
bin_X_translate = 0.9;

// shelf
shelf_t = 2;
shelf_w = 5;
shelf_l = 61;
shelf_d = 50;
shelf_thickness = 0.9;

opacity = 1.0;

// shelf
difference() {
union() {
//color( "red", opacity )
translate([shelf_thickness * -1,0,0])
cube([shelf_thickness, shelf_d * 2 + 2, shelf_w]);
//color( "blue", 0.5 )
cube([shelf_thickness, shelf_d * 2 + 2, shelf_w]);
}

union() {
// left
//color( "red", opacity )
cube([shelf_l, shelf_w, shelf_thickness]);
//color( "red", opacity )
cube([shelf_l, shelf_thickness, shelf_w]);
// middle
//color( "red", opacity )
translate([0,shelf_d,0])
cube([shelf_l, shelf_thickness, shelf_w]);
//color( "red", opacity )
translate([0,shelf_d - shelf_w,0])
cube([shelf_l, shelf_w, shelf_thickness]);
//color( "red", opacity )
translate([0,shelf_d,0])
cube([shelf_l, shelf_w, shelf_thickness]);
// right
//color( "red", opacity )
translate([0,shelf_d * 2 - shelf_w + 1,0])
cube([shelf_l, shelf_w, shelf_thickness]);
//color( "red", opacity )
translate([0,shelf_d * 2   + 1,0])
cube([shelf_l, shelf_thickness, shelf_w]);
}
}

union() {
// left
//color( "red", opacity )
cube([shelf_l, shelf_w, shelf_thickness]);
//color( "red", opacity )
cube([shelf_l, shelf_thickness, shelf_w]);
// middle
//color( "red", opacity )
translate([0,shelf_d,0])
cube([shelf_l, shelf_thickness, shelf_w]);
//color( "red", opacity )
translate([0,shelf_d - shelf_w,0])
cube([shelf_l, shelf_w, shelf_thickness]);
//color( "red", opacity )
translate([0,shelf_d,0])
cube([shelf_l, shelf_w, shelf_thickness]);
// right
//color( "red", opacity )
translate([0,shelf_d * 2 - shelf_w + 1,0])
cube([shelf_l, shelf_w, shelf_thickness]);
//color( "red", opacity )
translate([0,shelf_d * 2   + 1,0])
cube([shelf_l, shelf_thickness, shelf_w]);
}

// drawer
//color( "yellow", 0.2 )
//difference() {
//    minkowski() {
//        cube([face_plate_width, face_plate_height, boxDepth]);
//        translate([bin_X_translate + cylRoundEdgeRadius,bin_Y_translate +cylRoundEdgeRadius, bin_Z_translate])
//        cylinder(r=cylRoundEdgeRadius,h=bottomThickness);
//    }
//    
//    translate([bin_X_translate + cylRoundEdgeRadius,bin_Y_translate + cylRoundEdgeRadius, bin_Z_translate + 0.9])
//    cube([face_plate_width, face_plate_height, boxDepth + 1]);
//}

//color( "red", 1.0 )
//translate([bin_X_translate + cylRoundEdgeRadius,bin_Y_translate +compartmentWidth + wallThickness, bin_Z_translate])
//cube([face_plate_width, wallThickness, boxDepth]);
//
//translate([bin_X_translate + cylRoundEdgeRadius,(bin_Y_translate +compartmentWidth + wallThickness) * 2, bin_Z_translate])
//cube([face_plate_width, wallThickness, boxDepth]);
//
//translate([bin_X_translate + cylRoundEdgeRadius,(bin_Y_translate + compartmentWidth + wallThickness) * 3, bin_Z_translate])
//cube([face_plate_width, wallThickness, boxDepth]);



