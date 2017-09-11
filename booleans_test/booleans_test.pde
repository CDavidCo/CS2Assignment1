

float rectX, rectY, rectWidth=50, rectHeight=50, rectHorizSpeed=3, rectVertSpeed=5;
boolean moveUp=true, moveRight=true; 
float rect2X, rect2Y, rect2Width=50, rect2Height=50, rect2HorizSpeed=4, rect2VertSpeed=2;
boolean moveUp2=true, moveRight2=false; 

void setup() {
  size(500, 500);
  rectX=width*.2;
  rectY=height*.5;
  rect2X=width*0.8;
  rect2Y=height*0.5;
  
  
}

void draw() {

  
  background(255, 0, 0);
  fill(255);
  rect(rectX, rectY, rectWidth, rectHeight);
  fill(0);
  rect(rect2X, rect2Y, rect2Width, rect2Height);
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
 
   
   if ((abs (rectX-rect2X))<(.2*rectX)&& (abs(rectY-rect2Y))<(.2*rectX)) {
    moveRight2=!moveRight2;
    moveRight=!moveRight;
  }// end if
  
  if ((abs (rectY-rect2Y))<(.2*rectY)&& (abs(rectX-rect2X))<(.2*rectY)) {
    moveUp2=!moveUp2;
    moveUp=!moveUp;
  }// end if
  
 
}