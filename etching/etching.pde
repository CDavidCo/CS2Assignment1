float xpos, ypos, rectWidth, rectHeight, xline,yline,xend,yend;
float x2pos, y2pos;
float xSpeed=1, ySpeed = 1.5;
float x2Speed=1, y2Speed = 1.5;


void setup() {
  size(500, 600);
  background(#868686);
  xpos =width/2;
  ypos = height/2;
  rectWidth = width/5;
  rectHeight = height/5;
  fill(0, 0, 255);
  xline=0;
xend=500;
yline=400;
yend=400;
}

void draw() {
  noFill();
  rect(xpos, ypos, random(rectWidth), random(rectHeight));
  xpos +=xSpeed;
  ypos +=ySpeed;
  stroke(0);
  rect(x2pos, y2pos, random(rectWidth), random(rectHeight));
  x2pos +=x2Speed;
  y2pos +=y2Speed;
  stroke(0);

  stroke(255);
 
    
  if (xpos + rectWidth>width) {
    xSpeed=-1.5;
  }
  if (xpos<0) {
    xSpeed=1.5;
  }
  if (ypos + rectHeight>height) {
    ySpeed=-1;
  }
  if (ypos<0) {
    ySpeed=1;
  }
  if(xpos==mouseX && ypos==mouseY){
     ySpeed=-1;
    }
    
     if (x2pos + rectWidth>width) {
    x2Speed=-1.5;
  }
  if (x2pos<0) {
    x2Speed=1.5;
  }
  if (y2pos + rectHeight>height) {
    y2Speed=-1;
  }
  if (y2pos<0) {
    y2Speed=1;
  }
  if(x2pos==mouseX && y2pos==mouseY){
     y2Speed=-1;
    }
for(int i=0;i<800;i+=1){}
  if (mousePressed){
    noLoop();}
  
}

 
  
  