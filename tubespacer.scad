PRINTEDPARTSIDETHICKNESS=8; // how thick the sides are around the pole (and battery)
VERTICALSQUAREPOLEWIDTH=60.5;
DIAGONALSQUAREPIECEWIDTH=32.3;
PRINTEDPARTWIDTH=VERTICALSQUAREPOLEWIDTH + (PRINTEDPARTSIDETHICKNESS * 2); // how wide the whole thing is
DIAGONALSQUAREPIECEANGLE=45;
BATTERYWIDTH=61.7;
BATTERYTHICKNESS=22.3;
BATTERYHEIGHT=138.7; // 84mm before USB ports start
BATTERYMETERBOTTOM=90;
BATTERYMETERXPOSITION=17; // mm from right edge
BATTERYMETERWINDOWWIDTH=15;
BATTERYUSBWINDOWWIDTH=10;
BATTERYUSBWINDOWBOTTOM=88;

THICKNESS=6;
WIDTH=10;
LONGTH=30;
SCREWSPACE=20;

difference() {
  translate([0,WIDTH/2, THICKNESS/2]) cube([LONGTH, WIDTH, THICKNESS],center=true);
  translate([SCREWSPACE/2,0,0]) cylinder(d=4, h=20,center=true, $fn=666);
  translate([-SCREWSPACE/2,0,0]) cylinder(d=4, h=20,center=true, $fn=666);
}
/*
difference() {
  translate([0,VERTICALSQUAREPOLEWIDTH/2,0]) overallshape();
  translate([(PRINTEDPARTWIDTH-BATTERYWIDTH)/2,VERTICALSQUAREPOLEWIDTH-1,PRINTEDPARTSIDETHICKNESS]) #battery();
  translate([PRINTEDPARTSIDETHICKNESS,0,-85]) #mailboxstand();
  rotate([-45,0,0]) translate([-1,VERTICALSQUAREPOLEWIDTH+20,0]) cube([PRINTEDPARTWIDTH+2,VERTICALSQUAREPOLEWIDTH,BATTERYHEIGHT*2]);
  translate([-1,VERTICALSQUAREPOLEWIDTH+BATTERYTHICKNESS+PRINTEDPARTSIDETHICKNESS,40]) cube([PRINTEDPARTWIDTH+2,VERTICALSQUAREPOLEWIDTH*2,BATTERYHEIGHT*2]);
  translate([-1,VERTICALSQUAREPOLEWIDTH+BATTERYTHICKNESS+PRINTEDPARTSIDETHICKNESS,-1]) cube([(PRINTEDPARTWIDTH-DIAGONALSQUAREPIECEWIDTH)/2-PRINTEDPARTSIDETHICKNESS+1,BATTERYHEIGHT,BATTERYHEIGHT*2]);
  translate([(PRINTEDPARTWIDTH+DIAGONALSQUAREPIECEWIDTH)/2+PRINTEDPARTSIDETHICKNESS,VERTICALSQUAREPOLEWIDTH+BATTERYTHICKNESS+PRINTEDPARTSIDETHICKNESS,-1]) cube([VERTICALSQUAREPOLEWIDTH,BATTERYHEIGHT,BATTERYHEIGHT*2]);
}

module overallshape() {
    color("YELLOW") cube([PRINTEDPARTWIDTH,BATTERYHEIGHT,BATTERYHEIGHT-10]);
}

module battery() {
  color("GREEN") cube([BATTERYWIDTH,BATTERYTHICKNESS+1,BATTERYHEIGHT]);
  translate([BATTERYMETERXPOSITION,BATTERYTHICKNESS-1,BATTERYMETERBOTTOM]) color("RED") cube([BATTERYMETERWINDOWWIDTH,30,BATTERYHEIGHT-BATTERYMETERBOTTOM+1]);
  translate([-10,BATTERYTHICKNESS/2-BATTERYUSBWINDOWWIDTH/2,BATTERYUSBWINDOWBOTTOM]) color("ORANGE") cube([11,BATTERYUSBWINDOWWIDTH,60]);
}

module mailboxstand() {
  color("BLACK") cube([VERTICALSQUAREPOLEWIDTH,VERTICALSQUAREPOLEWIDTH,BATTERYHEIGHT*2]);
  rotate([-45,0,0]) color("BLACK") translate([VERTICALSQUAREPOLEWIDTH/2-DIAGONALSQUAREPIECEWIDTH/2,0,30]) cube([DIAGONALSQUAREPIECEWIDTH,DIAGONALSQUAREPIECEWIDTH,BATTERYHEIGHT*2]);
}
*/
