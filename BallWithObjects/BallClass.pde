class Ball {
  // first the the class all of the variables and types it will use
  color c;
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  float ballDiam;

  //then some weird stuff called the constructor 

  Ball(color cTemp, float xPosTemp, float yPosTemp, float xSpeedTemp, float ySpeedTemp, float ballDiamTemp) {
    c = cTemp;
    xPos = xPosTemp;
    yPos = yPosTemp;
    xSpeed = xSpeedTemp;
    ySpeed = ySpeedTemp;
    ballDiam = ballDiamTemp;
  }// end constructor 

  // next come the methods for the ball objects
  // the methods these are the actions the object will perform

  void display() {
    fill(c);
      noStroke();
    ellipse(xPos, yPos, ballDiam*sin(frameCount*.01)*2, ballDiam*sin(frameCount*.01)*2);
  }// end method display
  
  void motion(){
    xPos=xPos+xSpeed;
    yPos=yPos+ySpeed;
  
    if(yPos>height+ballDiam/2){yPos=-ballDiam/2;}
    if (xPos>width+ballDiam/2){xPos=-ballDiam/2;}
  }// end motion method
}// end class