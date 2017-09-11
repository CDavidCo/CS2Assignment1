void setup(){
  fullScreen();
} // end setup

void draw(){
stroke(random(255),random(255), random(255));
triangle (mouseX,mouseY,mouseX-300,mouseY-300, mouseX+300,mouseY);
} // end draw