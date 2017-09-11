class Ball {
  // first the the class all of the variables and types it will use
  color c;
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;

  //then some weird stuff called the constructor 

  Ball(color cTemp, float xPosTemp, float yPosTemp, float xSpeedTemp, float ySpeedTemp) {
    c = cTemp;
    xPos = xPosTemp;
    yPos = yPosTemp;
    xSpeed = xSpeedTemp;
    ySpeed = ySpeedTemp;
  }// end constructor 

  // next come the methods for the ball objects
  // the methods these are the actions the object will perform

  void display() {
    fill(c);
    ellipse(xPos, yPos, ballDiam, ballDiam);
  }// end method display
  
  void motion(){
    xPos=xPos+xSpeed;
    yPos=yPos+ySpeed;
    if(yPos>height){yPos=0;}
    if (xPos>width){xPos=0;}
  }// end motion method
}// end class