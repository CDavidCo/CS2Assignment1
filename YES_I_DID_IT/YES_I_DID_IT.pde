float circleX;// a variable holding the circle's center's x position
float circleY;
float circleDiameter;
float rectX;
float rectY;
float rectWidth;
float rectHeight;
float rectX2;
float rectY2;
float rectWidth2;
float rectHeight2;

void setup() {
  size(500, 500);//opens a graphics canvas 500 wide by 500 high
  noStroke();
  circleX=width/2;
  circleY=height/2;
  circleDiameter=0.3*width;
  rectX=circleX-width/20;
  rectY=circleY-height/20;
    circleX=width/2;
  circleY=height/2;
  circleDiameter=0.3*width;
  
  rectX=circleX-width/20;
  rectY=circleY-height/20;
  rectWidth=width/10;
  rectHeight=height/2+height/20;
  
  rectX2=circleX-width/20;
  rectY2=circleY-height/20;
  rectWidth2=width/10;
  rectHeight2=height/2+height/10;
}
void draw() {
  background(0, 0, 255); // draws a blue background
  fill(255, 0, 0); 
  ellipse(circleX,circleY,circleDiameter,circleDiameter);
  rect(rectX, rectY, rectWidth, rectHeight);
   rect(width/4, height/2.25, width/2, height/8);
  fill(0,0,255,80);
  triangle(mouseX,mouseY,mouseX-50,mouseY+50,mouseX+50,mouseY+50);
}