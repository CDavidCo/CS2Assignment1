float rectX = 100; 
float rectY; // note that this is different!
float rectWidth;
float rectHeight;
float xSpeed=1;

void setup() {
  size(500, 500);
  background(255);
  fill(0, 0, 255);
  noStroke();
  rectWidth = width/10; 
  rectHeight = height/20;
  background(255);
}

void draw() { 
  for (int i=0; i<300; i+=50) {
    rectY=i;
    rect(rectX, rectY, rectWidth, rectHeight);
  } 
}