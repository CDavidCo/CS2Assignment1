class Ball {
  // first the the class all of the variables and types it will use

  color c; // color of the ball
  float elliX; // x position of the ball
  float elliY; // y position of the ball
  float elliHorizSpeed; // x speed of the ball
  float elliVertSpeed; // y speed of the ball
  float elliXDiam; // width of the ball
  float elliYDiam; // height of the ball

  //then some weird stuff called the constructor 

  Ball(color cTemp, float elliXTemp, float elliYTemp, float elliHorizSpeedTemp, float elliVertSpeedTemp, float elliXDiamTemp, float elliYDiamTemp) {
    c = cTemp;
    elliX = elliXTemp;
    elliY = elliYTemp;
    elliHorizSpeed = elliHorizSpeedTemp;
    elliVertSpeed = elliVertSpeedTemp;
    elliXDiam = elliXDiamTemp;
    elliYDiam = elliYDiamTemp;
  }// end constructor 

  // next come the methods for the ball objects
  // the methods these are the actions the object will perform

  void display() {
    fill(c); // fill it that color
    stroke(0); // make the edge black
    ellipse(elliX, elliY, elliXDiam, elliYDiam); // display the ellipse
  }// end method display

  void motion() {


    if (moveUp) { //if 1
      elliY-=elliVertSpeed; // make it know that up means go up
    } else {
      elliY+=elliVertSpeed; // make it know that down means go down
    }//end if1

    if (moveRight) {//if 3
      elliX+=elliHorizSpeed;// make it know that right means go right
    } else {
      elliX-=elliHorizSpeed;// make it know that left means go left
    }//end if 3

    if (elliY<25) {
      moveUp=false; // stop where you're going and go the other way
      myScore +=1; // add a point
    }// end if

    if (elliY + elliXDiam >height+25) {
      moveUp=true; // stop where you're going and go the other way
      cpuScore +=1; // add a point
    }// end if

    if (elliX<25) {
      moveRight=true; // move right
    }// end if

    if (elliX + elliXDiam>width+25) {
      moveRight=false; // dont move right
    }// end if
  }// end motion method
}// end class