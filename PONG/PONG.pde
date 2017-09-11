float rectX, rectY, rectWidth=75, rectHeight=25, rectHorizSpeed=3, rectVertSpeed=5;
boolean moveUp=true, moveRight=true; 
float rect2X, rect2Y, rect2Width=50, rect2Height=50, rect2HorizSpeed=2, rect2VertSpeed=2;
boolean moveUp2=true, moveRight2=false; 

void setup() {
  size(500, 600);
  rectX=width*.8;
  rectY=height*.5;
  rect2X=mouseX;
  rect2Y=500;
}

void draw() {

  background(255, 0, 0);
  fill(255);
  ellipse(rectX, rectY, rect2Width, rect2Height);
  fill(0);
  rect(mouseX, rect2Y, rectWidth, rectHeight);
  rectMode(CENTER);
  
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
  }// end if

  if (rectY + rectHeight >height) {
   rectX=width*.5;
  rectY=height*.2;
  rectHorizSpeed=3;
  rectVertSpeed=5;
  }// end if
  
  if (rectX<25) {
    moveRight=true;
  }// end if
  
  if (rectX + rectWidth -50>width) {
    moveRight=false;
  }// end if
 
  if ((abs (rectY-rect2Y))<(rectHeight+15)&& (abs(rectX-mouseX))<(rectHeight+15)) {
 moveUp2=!moveUp2;
    moveUp=!moveUp;
    rectHorizSpeed+=.5; 
    rectVertSpeed+=.5;
}// end if

}// end draw