class star{
  // first the the class all of the variables and types it will use
  
  color c;
  float innerRad;
  float outerRad;
  float numPoints;
  float bigAng=TWO_PI/numPoints;
  float halfAng=bigAng/2.0;
  float centerX;
  float centerY;
  float xSpeed;
  float ySpeed;

  //then some weird stuff called the constructorS

  star(color cTemp, float centerXTemp, float centerYTemp, float innerRadTemp, float outerRadTemp, float numPointsTemp, float xSpeedTemp, float ySpeedTemp) {
    c = cTemp;
    centerX = centerXTemp;
    centerY = centerYTemp;
    innerRad = innerRadTemp;
    outerRad = outerRadTemp;
    numPoints = numPointsTemp;
    xSpeed = xSpeedTemp;
    ySpeed = ySpeedTemp;
  }// end constructor 

  // next come the methods for the ball objects
  // the methods these are the actions the object will perform

  void display() {
noStroke();
      fill(c);
    beginShape();

     for (int i=0; i<numPoints; i=i+1){
float bigAng=TWO_PI/numPoints;
 float halfAng=bigAng/2.0;
  vertex(outerRad*cos(i*bigAng)+centerX, outerRad*sin(i*bigAng)+centerY);
  vertex(innerRad*cos(halfAng+i*bigAng)+centerX, innerRad*sin(halfAng+i*bigAng)+centerY);
  
  }//end for 
  endShape(CLOSE);
  }// end method display
 

}// end class