float xpos, ypos, rectWidth, rectHeight, xline,yline,xend,yend;
float xSpeed=2, ySpeed = 3;


void setup() {
  size(500, 600);
  background(0);
  xpos =width/2;
  ypos = height/2;
  rectWidth = width/5;
  rectHeight = height/5;
 
  xline=0;
xend=500;
yline=400;
yend=400;
}

void draw() {
  
  rect(xpos, ypos, rectWidth, rectHeight);
   fill(random(255));
  xpos +=xSpeed;
  ypos +=ySpeed;
  stroke(0);

  stroke(255);
 
    
  if (xpos + rectWidth>width) {
    xSpeed=-15;
   fill(#E02636);
    
  }// end if
  if (xpos<0) {
    xSpeed=15;
    fill(#4AF584);
  }
  if (ypos + rectHeight>height) {
    ySpeed=-4;
     fill(#DE1271);
  }
  if (ypos<0) {
    ySpeed=4;
     fill(#2CC3F0);
  }
  if(xpos==mouseX && ypos==mouseY){
     ySpeed=-4;
    fill( #F5B14A);}
  }
void mousePressed(){
  background(0);
}// end mousepressed
  
  
// end draw
 