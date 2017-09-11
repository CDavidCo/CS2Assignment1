float xpos, ypos, rectWidth, rectHeight, xline,yline,xend,yend;
float xSpeed=2, ySpeed = 3;


void setup() {
  size(500, 600);
  background(#502FBC);
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

  stroke(255);
 
    
  if (xpos + rectWidth>width) {
    xSpeed=-3;
  }
  if (xpos<0) {
    xSpeed=3;
  }
  if (ypos + rectHeight>height) {
    ySpeed=-2;
  }
  if (ypos<0) {
    ySpeed=2;
  }
  if(xpos==mouseX && ypos==mouseY){
     ySpeed=-2;
    }
for(int i=0;i<800;i+=1){
  
  
}
 
}