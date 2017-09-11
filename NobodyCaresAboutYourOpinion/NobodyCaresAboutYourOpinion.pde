
float rectX, rectY, rectWidth=50, rectHeight=50, rectHorizSpeed=1.5, rectVertSpeed=2.5;
boolean moveUp=true, moveRight=true; 
void setup() {
  size(500, 500);
  rectX=width*.2;
  rectY=height*.5;
 
  
  
}

void draw() {

  
  background(255, 0, 0);
  fill(0);
  text("nobody cares about your opinion", rectX, rectY);
  fill(0);
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
  
  

  
  
  if (rectY<0 +10) {
    moveUp=false;
  }

  if (rectY + rectHeight -40>height) {
    moveUp=true;
  }
  if (rectX<0) {
    moveRight=true;
  }
  if (rectX + rectWidth +150 >width) {
    moveRight=false;
  }
  
 
}