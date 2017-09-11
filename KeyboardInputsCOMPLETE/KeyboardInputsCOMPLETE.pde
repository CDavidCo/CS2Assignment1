float rectX, rectY, rectWidth=50, rectHeight=50, rectHorizSpeed=2, rectVertSpeed=1;
boolean moveUp3=true, moveRight3=true; 
float rect2X, rect2Y, rect2Width=50, rect2Height=50, rect2HorizSpeed=2, rect2VertSpeed=1;
boolean moveUp2=true, moveRight2=false; 
float playerX, playerY, playerWidth=50, playerHeight=50, playerSpeed=3;
boolean moveUp, moveDown, moveLeft, moveRight;
boolean endGame=false;


void setup() {
  playerX+=25;
  playerY+=25;
  size(600, 600);
  fill(0, 125, 50);
  noStroke();
  rectX=width*.8;
  rectY=height*.5;
  rect2X=width*0.1;
  rect2Y=height*0.5;
}// end setup

void draw() {

  background(#53BBFA);
  fill(#089842);
  rectMode(CORNER);
  stroke(0);
  rect(0, 300, 600, 600);
  fill(255);
  rect(100, 200, 400, 150);
  rect(100, 200, 400, 150);
  rectMode(CENTER);
  rect(width/2, height/2-50, 200, 200);
  rect(width/2-75, height/2-50, 20, 125);
  rect(width/2-25, height/2-50, 20, 125);
  rect(width/2+25, height/2-50, 20, 125);
  rect(width/2+75, height/2-50, 20, 125);
  rect(width/2, height/2+50, 200, 20);
  rect(width/2, height/2+40, 200, 20);
  rect(width/2, height/2+30, 200, 20);
  rect(width/2, height/2+20, 200, 10);
  triangle(width/2+110, height/2+-110, width/2, height/2-200, width/2+-110, height/2-110);
  rect(width/2-150, height/2-50, 50, 50);
  rect(width/2+150, height/2-50, 50, 50);
  fill(#F2AF05);
  rectMode(CENTER);
  noStroke();
  rect(playerX, playerY, playerWidth, playerHeight);
  fill(#1276FF);
  rect(rectX, rectY, rectWidth, rectHeight);
  rect(rect2X, rect2Y, rectWidth, rectHeight);
  textSize(14);
  fill(0);
  text("Trump", playerX-22, playerY);
  text("facts", rectX-15, rectY);
  text("logic", rect2X-15, rect2Y);
  textSize(20);
  text("You are Donald Trump. Avoid the facts and logic!", width*.02, height*.92);
   textSize(15);
  text("Created by David C.", width*.02, height*.97);
  rectMode(CENTER);
  fill(#FFE664);
  rect(playerX, playerY-25, 60, 10);

  if (endGame){
   // setup();
    
  }// end if

  if (moveUp3) { //if 1
    rectY-=rectVertSpeed;
  }// end if
  else {
    rectY+=rectVertSpeed;
  }//end if1

  if (moveUp2) {//if 2
    rect2Y-=rect2VertSpeed;
  } // end if
  else {
    rect2Y+=rect2VertSpeed;
  }// end if/else 2

  if (moveRight3) {//if 3
    rectX+=rectHorizSpeed;
  } else {
    rectX-=rectHorizSpeed;
  }//end if 3


  if (moveRight2) {//if else 4
    rect2X+=rect2HorizSpeed;
  }// end if
  else {
    rect2X-=rect2HorizSpeed;
  }//end if else 4


  if (rectY<25) {
    moveUp3=false;
    rect2HorizSpeed+=.1;
    rect2VertSpeed+=.1;
    rectHorizSpeed+=.1;
    rectVertSpeed+=.1;
    rectWidth+=.5;
    rectHeight+=.5;
    rect2Width+=.5;
    rect2Height+=.5;
    playerWidth+=.5;
    playerHeight+=.5;
  }// end if

  if (rectY + rectHeight >height+25) {
    moveUp3=true;
    rect2HorizSpeed+=.1;
    rect2VertSpeed+=.1;
    rectHorizSpeed+=.1;
    rectVertSpeed+=.1;
    rectWidth+=.5;
    rectHeight+=.5;
    rect2Width+=.5;
    rect2Height+=.5;
    playerWidth+=.5;
    playerHeight+=.5;
  }// end if

  if (rectX<25) {
    moveRight3=true;
    rect2HorizSpeed+=.1;
    rect2VertSpeed+=.1;
    rectHorizSpeed+=.1;
    rectVertSpeed+=.1;
    rectWidth+=.5;
    rectHeight+=.5;
    rect2Width+=.5;
    rect2Height+=.5;
    playerWidth+=.5;
    playerHeight+=.5;
  }// end if

  if (rectX + rectWidth >width+25) {
    moveRight3=false;
    rect2HorizSpeed+=.1;
    rect2VertSpeed+=.1;
    rectHorizSpeed+=.1;
    rectVertSpeed+=.1;
    rectWidth+=.5;
    rectHeight+=.5;
    rect2Width+=.5;
    rect2Height+=.5;
    playerWidth+=.5;
    playerHeight+=.5;
  }// end if

  if (rect2Y<25) {
    moveUp2=false;
    rect2HorizSpeed+=.1;
    rect2VertSpeed+=.1;
    rectHorizSpeed+=.1;
    rectVertSpeed+=.1;
    rectWidth+=.5;
    rectHeight+=.5;
    rect2Width+=.5;
    rect2Height+=.5;
    playerWidth+=.5;
    playerHeight+=.5;
  }// end if

  if (rect2Y + rect2Height >height+25) {
    moveUp2=true;
    rect2HorizSpeed+=.1;
    rect2VertSpeed+=.1;
    rectHorizSpeed+=.1;
    rectVertSpeed+=.1;
    rectWidth+=.5;
    rectHeight+=.5;
    rect2Width+=.5;
    rect2Height+=.5;
    playerWidth+=.5;
    playerHeight+=.5;
  }// end if

  if (rect2X<25) {
    moveRight2=true;
    rect2HorizSpeed+=.1;
    rect2VertSpeed+=.1;
    rectHorizSpeed+=.1;
    rectVertSpeed+=.1;
    rectWidth+=.5;
    rectHeight+=.5;
    rect2Width+=.5;
    rect2Height+=.5;
    playerWidth+=.5;
    playerHeight+=.5;
  }// end if

  if (rect2X + rect2Width >width+25) {
    moveRight2=false;
    rect2HorizSpeed+=.1;
    rect2VertSpeed+=.1;
    rectHorizSpeed+=.1;
    rectVertSpeed+=.1;
    rectWidth+=.5;
    rectHeight+=.5;
    rect2Width+=.5;
    rect2Height+=.5;
    playerWidth+=.5;
    playerHeight+=.5;
  }  // end if

  if ((abs (rectX-playerX))<(rectWidth-5)&& (abs(rectY-playerY))<(rectWidth-5)) {
   rectVertSpeed=0;
   rectHorizSpeed=0;
   rect2VertSpeed=0;
   rect2HorizSpeed=0;
    playerSpeed=0;
    textSize(45);
    fill(0);
    text("You just got impeached!", 30, height/2-200);
     textSize(25);
    text("Press Shift to run for relection", 30, height/2-250);
    endGame = true;
  }// end if

  if ((abs (rect2X-playerX))<(rectWidth-5)&& (abs(rect2Y-playerY))<(rectWidth-5)) {
    rectVertSpeed=0;
   rectHorizSpeed=0;
   rect2VertSpeed=0;
   rect2HorizSpeed=0;
    playerSpeed=0;
    textSize(45);
    fill(0);
    text("You just got impeached!", 30, height/2-200);
    textSize(25);
    text("Press Shift to run for relection", 30, height/2-250);
     endGame = true;
  }// end if

  if (playerX+25>width) {
    moveRight=false;
    moveLeft=false;
  }// end if

  if (playerX-25<0) {
    moveRight=false;
    moveLeft=false;
  }// end if

  if (playerY+25>height) {
    moveUp=false;
    moveDown=false;
  }// end if

  if (playerY-25<0) {
    moveUp=false;
    moveDown=false;
  }// end if

  if (moveUp) {
    playerY-=playerSpeed;
  }// end if

  if (moveDown) {
    playerY+=playerSpeed;
  }// end if

  if (moveLeft) {
    playerX-=playerSpeed;
  }// end if

  if (moveRight) {
    playerX+=playerSpeed;
  }// end if
} // end draw


void keyPressed() {
  
 
  if(keyCode==SHIFT&& endGame == true) {
     endGame=false;
    frameRate(50);
   rectX=width*.8;
  rectY=height*.5;
   rectWidth=50;
   rectHeight=50;
   rectHorizSpeed=2;
   rectVertSpeed=1;
   moveUp3=true;
   moveRight3=true; 
   rect2X=width*0.1;
  rect2Y=height*0.5; 
   rect2Width=50; 
   rect2Height=50; 
   rect2HorizSpeed=2; 
   rect2VertSpeed=1;
   moveUp2=true;
   moveRight2=false; 
   playerX=25; 
   playerY=25;
   playerWidth=50; 
   playerHeight=50; 
   playerSpeed=3;
    moveUp=false;
   moveDown=false; 
   moveLeft=false; 
   moveRight=false;
   endGame=false;
  }

  if (keyCode==UP) {
    playerY-=5;
    moveUp=true;
    moveDown=false;
  }// end if

  if (keyCode==DOWN) {
    playerY+=5;
    moveDown=true;
    moveUp=false;
  }// end if

  if (keyCode==LEFT) {
    playerX-=5;
    moveLeft=true;
    moveRight=false;
  }// end if

  if (keyCode==RIGHT) {
    playerX+=5;
    moveRight=true;
    moveLeft=false;

    if (playerX-20==0) {
      playerX+=5;
    }// end if

    if (playerX-20==0) {
      playerX+=5;
    }// end if
  }// end Keypressed
}// end draw