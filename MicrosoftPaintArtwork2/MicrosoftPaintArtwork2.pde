float x, y, lastx = mouseX, lasty = mouseY;

void setup() {
  background(255);
  fullScreen();
}// end setup

void draw() {
textAlign(CENTER);
fill(0);
textSize(30);
text("Microsoft Paint: Processing",width/2,height/9);
  if (mousePressed) {
    stroke(0);
    x=mouseX;
    y=mouseY;
    if (abs(mouseX-lastx) <= 200 && abs(mouseY-lasty) <=200) {
      
    if (keyCode == 49) {
     stroke(0,0,0);
    }// end if
    if (keyCode == 50) {
      stroke(255,0,0);
    }// end if
    if (keyCode == 51) {
      stroke(0,255,0);
    }// end if
    if (keyCode == 52) {
      stroke(0,0,255);
    }// end if
      line(x, y, lastx, lasty);
    }// end if
    lastx=x;
    lasty=y;
  }//end if
  
  
    
}// end draw