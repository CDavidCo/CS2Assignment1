float yo;
float rectX, rectY, rectWidth=75, rectHeight=25, rectHorizSpeed=3, rectVertSpeed=5;
boolean moveUp=true, moveRight=true; 
float rect2X, rect2Y, rect2Width=50, rect2Height=50, rect2HorizSpeed=4, rect2VertSpeed=2;
boolean moveUp2=true, moveRight2=false; 
PImage img;
void setup() {
  size(500, 500);
  rectX=width*.8;
  rectY=height*.5;
  rect2X=mouseX;
  rect2Y=500;
  
  
}

void draw() {

img = loadImage("imgres-1.jpg");
  image(img, 0, 0);
  image(img, 0, 0, width, height);
  
  img = loadImage("5zykh6x2jwlvhdt8sfox_1.png.resize.710x399.png");
  image(img, 0, 0);
  image(img,rectX, rectY, rect2Width, rect2Height);

  fill(255);
  ellipse(rectX, rectY, rect2Width, rect2Height);
  fill(0);
//  rect(rect2X, rect2Y, rectWidth, rectHeight);
//rectMode(CENTER);
  
  if (moveUp) { //if 1
    rectY-=rectVertSpeed;
  } else {
    rectY+=rectVertSpeed;
  }//end if1
  
  
  
  if (moveRight) {//if 3
    rectX+=rectHorizSpeed;
  } else {
    rectX-=rectHorizSpeed;
  }//end if 3
  
  
 
  
  
  if (rectY<25) {
    moveUp=false;
  }

  if (rectY + rectHeight >height) {
     moveUp=true;
  }
  if (rectX<25) {
    moveRight=true;
  }
  if (rectX + rectWidth -50>width) {
    moveRight=false;
  }
 
//}// end if
 
 
  
  
 
}