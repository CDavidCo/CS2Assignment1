float ax=100, ay=50;//coordinates of vertex A
float bx=600, by=50;//coordinates of vertex B

void setup() {
  size(800, 800);
  background(0);
  stroke(255);
  noFill();
}//end setup

void draw() {
  float slopeAC = (mouseX-100)/(mouseY-50); //these floats were more of a reminder for me while writing rather than an actual variable I useda
  float slopeATC = -1/(slopeAC);
  float slopeBC = (mouseX-600)/(mouseY-50);
  float slopeBTC = -1/(slopeBC);
  background(0);
  line((1*(mouseY-50))+((mouseX+100)/2), (-1*(mouseX-100))+(mouseY+50)/2, (mouseX+100)/2, (mouseY+50)/2); // point B perpendicular line
  line((-1*(mouseY-50))+((mouseX+600)/2), (-1*(mouseX-100))+(mouseY+50)/2, (mouseX+600)/2, (mouseY+50)/2); // point A perpendicular line
  line(350,300,350,50); // point C perpendicular
  triangle(ax, ay, bx, by, mouseX, mouseY);
  ellipse((mouseX+600)/2, (mouseY+50)/2, 10, 10); // point midA
  ellipse((mouseX+100)/2, (mouseY+50)/2, 10, 10);  // point mid C
  ellipse(350, 50, 10, 10); // point midB
  text("A", ax, ay-5); // misc labeling
  text("B", bx, by-5);
  text("C", mouseX+20, mouseY+20);
  text("midC", 350, 40);
  text("midB", ((mouseX+100)/2)+10, ((mouseY+50)/2)+10);
  text("midA", (((mouseX+600)/2)+10), (((mouseY+100)/2)+10));
} // end draw