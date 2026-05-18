clear = 0.6;
keyPcbSize = 19.05;

stripPcb = [keyPcbSize,57.15]; // X,Y



// So we're trying to find a way to get the x transform from a z rotation.
// That result would be fully dependent on the intersection with other strips

// Since the the x transform will always be >= stripPcb[1].
// We know that there will always be 1 and only 1 intersection

// Therefore, we can take the 1 intersection point
// And change the x until it touches the intersection side.

// An object module seems to be the way.
// https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/User-Defined_Functions_and_Modules#Modules

//LeftStrips = [[-9.5,4],[(-9.5-13),(4+6)]];
//
//module strip(
//  left=true,
//  relativeYPosition=0,
//  zRotation1=0,
//  zRotation2=0,
//  dimension=stripPcb,
//){
//  // Type checking or definition doesn't seem to be a thing... Oh well
//  // Left = Location relative to center
//  translate([
//    dimension[]
//    0,
//    0
//  ])
//}

//// Middle
//square(size = stripPcb,center = true);
//
//// Left
//translate([-stripPcb[0]*2,-9.5-13,0])
//  rotate([0,0,4+6])
//  square(size = stripPcb,center = true);
//
//translate([-stripPcb[0],-9.5,0])
//  rotate([0,0,4])
//  square(size = stripPcb,center = true);
//
//
//// Right
//translate([stripPcb[0],-8.4,0])
//  square(size = stripPcb,center = true);
//
//translate([stripPcb[0]*2,-8.4-2.7,0])
//  square(size = stripPcb,center = true);
