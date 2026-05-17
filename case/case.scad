clear = 0.6;
keyPcbSize = 19.05;

stripPcbHeight = 57.15;
stripPcbLenght = keyPcbSize;

// So we're trying to find a way to get the x transform from a z rotation.
// That result would be fully dependent on the intersection with other strips

// Since the the x transform will always be >= stripPcbLenght.
// We know that there will always be 1 and only 1 intersection

// Therefore, we can take the 1 intersection point
// And change the x until it touches the intersection side.


translate([-stripPcbLenght*2,9.5+13,0])
  rotate([0,0,-4-6])
  square(size = [stripPcbLenght,stripPcbHeight],center = true);

translate([-stripPcbLenght,9.5,0])
  rotate([0,0,-4])
  square(size = [stripPcbLenght,stripPcbHeight],center = true);


square(size = [stripPcbLenght,stripPcbHeight],center = true);


translate([stripPcbLenght,8.4,0])
  square(size = [stripPcbLenght,stripPcbHeight],center = true);

translate([stripPcbLenght*2,8.4+2.7,0])
  square(size = [stripPcbLenght,stripPcbHeight],center = true);

