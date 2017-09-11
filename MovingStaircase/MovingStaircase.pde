

float rectX, rectY, rectWidth=5, rectHeight=50, rectHorizSpeed=3, rectVertSpeed=5;
boolean moveUp=true, moveRight=true; 
float rect2X, rect2Y, rect2Width=50, rect2Height=50, rect2HorizSpeed=4, rect2VertSpeed=2;
boolean moveUp2=true, moveRight2=false; 

void setup() {
  size(500, 500);
  rectX=width*.8;
  rectY=height*.5;
  rect2X=width*0.2;
  rect2Y=height*0.5;
  
  
}

void draw() {

//  rectVertSpeed=0;
//  rect2VertSpeed = 0;
 // background(255, 0, 0);
 
  fill(255);
  stroke(0);
  rect(rectX, rectY, rectWidth, rectHeight);
  fill(0);
  stroke(255);
  rect(rect2X, rect2Y, rectWidth, rectHeight);
rectMode(CENTER);
  
  if (moveUp) { //if 1
    rectY-=rectVertSpeed;
  } else {
    rectY+=rectVertSpeed;
  }//end if1
  
  if (moveUp2) {//if 2
    rect2Y-=rect2VertSpeed;
  } else {
    rect2Y+=rect2VertSpeed;
  }// end if/else 2
  
  if (moveRight) {//if 3
    rectX+=rectHorizSpeed;
  } else {
    rectX-=rectHorizSpeed;
  }//end if 3
  
  
  if (moveRight2) {//if else 4
    rect2X+=rect2HorizSpeed;
  } else {
    rect2X-=rect2HorizSpeed;
  }//end if else 4
  
  
  if (rectY<0) {
    moveUp=false;
  }

  if (rectY + rectHeight >height) {
    moveUp=true;
  }
  if (rectX<0) {
    moveRight=true;
  }
  if (rectX + rectWidth >width) {
    moveRight=false;
  }
  if (rect2Y<0) {
    moveUp2=false;
  }
  //*********problem in line below*************//
  if (rect2Y + rect2Height >height) {
    moveUp2=true;
  }
  if (rect2X<0) {
    moveRight2=true;
  }
  if (rect2X + rect2Width >width) {
    moveRight2=false;
  }  
 
   
   if ((abs (rectX-rect2X))<(rectWidth)&& (abs(rectY-rect2Y))<(rectWidth)) {
    moveRight2=!moveRight2;
    moveRight=!moveRight;
  }// end if
  
  if ((abs (rectY-rect2Y))<(rectHeight)&& (abs(rectX-rect2X))<(rectHeight)) {
   moveUp2=!moveUp2;
    moveUp=!moveUp;

 }// end if
 
 
  
  
 
}