color c1, c2;
int Y_AXIS = 1;

void setup() {

  size(700, 572);
  c2 = color(20, 42, 62);
  c1 = color(0);
  fill(255);
}

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }
}

void draw() {

  c2 = color(20, 42, 62);
  c1 = color(0);
  noStroke();
  setGradient(0, 0, width, height, c2, c1, Y_AXIS);
  fill(255);
  rect (45, 80, width-58, 320);
  fill(129,139,149);
  rect (-10, 394, width+900, 28);
  fill(255);
   noStroke();
  ellipse(60,25,30,30);
  fill(163,173,178);
   ellipse(100,25,30,30);
   fill(224,255,253);
   rect(46,50,140,31, 10,0,0,0);
   
   fill(0,153,0);
   triangle(56,31,56,19,66,25);
    rectMode(CENTER);
    fill( 20, 42, 62);
    rect(100,25,10,10);
    rectMode(CORNER);
    fill( 45, 66, 81);
    rect(185,50,25,30, 0,10,0,0);
    fill(255);
    triangle(192.5,62,200,62,196.75,70);
     fill(241,241,241);
    rect (0, 380, width-15, 15);
     rect (675, 81, 15, 314);
     rect (685, 422, 15, 120);
    fill(19,38,55);
    rect (0, height-30, width, 38);
    fill(45,66,81);
    rect (0, height-32, width, 2);
    rect(46,height-30,96,28, 0,00,0,10);
     fill(30,49,64);
     rect(144,height-30,90,28, 0,0,10,00);
     fill(193,193,193);
     rect(677.25,85,10,100, 1000,1000,1000,1000);
     fill(0);
     text("Made by David", 60,70);
     fill(105,125,130);
     text("1", 35,105);
     text("2", 35,125);
     text("3", 35,145);
     text("4", 35,165);
     text("5", 35,185);
     text("6", 35,205);
      text("7", 35,225);
     text("8", 35,245);
     text("9", 35,265);
     text("10", 26,285);
     text("11", 26,305);
     text("12", 26,325);
      text("13", 26,345);
     text("14", 26,365);
      fill(129,139,149);
      text("Console",85,height-13);
       text("Errors",185,height-13);
      
    
}