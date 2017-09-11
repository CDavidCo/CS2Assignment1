

float rectX, rectY, rectWidth=1, rectHeight=1, rectHorizSpeed=9, rectVertSpeed=34;
boolean moveUp=true, moveRight=true; 

void setup() {
  size(500, 500);
  rectX=width*.2;
  rectY=height*.5;
 background(255);
  
}

void draw() {

  
 
  fill(0);
  strokeWeight(5);
  point(rectX, rectY);
 
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
 
}