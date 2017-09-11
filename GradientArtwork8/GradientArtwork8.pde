// Constants
int Y_AXIS = 1;
int X_AXIS = 2;
color c1, c2;
float tymeX;
float tymeY;
float tymeZ;
float xPos;
float zPos;
float yPos;
void setup() {
fullScreen();

  // Define colors

  c1 = color(xPos/2, yPos/2, 0);
  c2 = color(0, (xPos+yPos/2), (xPos-yPos*240));

  //noLoop();
}

void draw() {
 tymeX+=.01;
    tymeY+=.01;
    tymeZ+=.01;
    
      xPos=noise(tymeX)*600;
    yPos=noise(tymeY)*600;
      zPos=noise(tymeZ)*600;
    
     c1 = color(sin(xPos/2)*255, cos(yPos/2), tan(zPos/2)*255);
  c2 = color(tan(zPos/2)*255, cos(xPos/2)*255, sin(yPos/2)*255);
  
  setGradient(0, 0, width, height, c2, c1, X_AXIS);

}

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

 
   if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
      
    }
  }
}