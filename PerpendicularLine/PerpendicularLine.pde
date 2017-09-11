/*Goal:
Modify the code so that a line segment always connects the
point that follows the mouse to the given line, meeting the 
given line at a right angle.

*/


//variables
float x1=40,y1=40,x2=350,y2=650;//endpoints of "given line

void setup(){
  size(700,700);
  }//end setup

void draw(){
  //draw given line and point
  
  background(255);
  stroke(0);
  strokeWeight(1);
//  triangle(x1, y1, x2, y2, mouseX, mouseY);
  strokeWeight(3);
  line(x1,y1,x2,y2);
  stroke(255,0,0);
  strokeWeight(8);
  point(mouseX,mouseY);
  //point((-1*(mouseX))+((mouseY)),((mouseX))+(mouseY)/2);
  line((-1*(mouseX))+((mouseY)),((mouseX))+(mouseY)/2, mouseX, mouseY); // point A perpendicular line
  

  
}//end draw