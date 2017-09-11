class star {
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
    if (keyCode == 48) {
      numPoints = 1;
       textMode(CENTER);
      text("do you even know how a shape works", width/2-100, height/2);
      textSize(30);
     text("not-agon", width/2-50, height/1.2);
     textSize(12);
    }
    if (keyCode == 49) {
      numPoints = 1;
       textMode(CENTER);
      text("do you even know how a shape works", width/2-100, height/2);
      textSize(30);
     text("not-agon", width/2-50, height/1.2);
     textSize(12);
    }
    if (keyCode == 50) {
      numPoints = 2;
      textMode(CENTER);
       text("do you even know how a shape works", width/2-100, height/2);
       textSize(30);
     text("not-agon", width/2-50, height/1.2);
     textSize(12);
    }
    if (keyCode == 51) {
      numPoints = 3;
    }
      if (keyCode == 52) {
      numPoints = 4;
    }
      if (keyCode == 53) {
      numPoints = 5;
    }
      if (keyCode == 54) {
      numPoints = 6;
    }
      if (keyCode == 55) {
      numPoints = 7;
    }
      if (keyCode == 56) {
      numPoints = 8;
    }
     if (keyCode == 57) {
      numPoints = 9;
    }
     if (keyCode == 67) {
      c = color(random(255),random(255),random(255));
    }
     if (numPoints == 3) {
     textSize(30);
     text("triangle", width/2-50, height/1.2);
     textSize(12);
    }
      if (numPoints == 4) {
     textSize(30);
     text("square", width/2-50, height/1.2);
     textSize(12);
    }
      if (numPoints == 5) {
     textSize(30);
     text("pentagon", width/2-50, height/1.2);
     textSize(12);
    }
     if (numPoints == 6) {
     textSize(30);
     text("hexagon", width/2-50, height/1.2);
     textSize(12);
    }
      if (numPoints == 7) {
     textSize(30);
     text("heptagon", width/2-50, height/1.2);
     textSize(12);
    }
      if (numPoints == 8) {
     textSize(30);
     text("octagon", width/2-50, height/1.2);
     textSize(12);
    }
    if (numPoints == 9) {
     textSize(30);
     text("nonagon", width/2-50, height/1.2);
     textSize(12);
    }
    
    beginShape();

    for (int i=0; i<numPoints; i=i+1) {
      float bigAng=TWO_PI/numPoints;
  
      vertex(outerRad*cos(i*bigAng)+centerX, outerRad*sin(i*bigAng)+centerY);
    }//end for 
    endShape(CLOSE);
    if(keyCode == 73){
      numPoints = 3;
       c = color(75,125,75);
      stroke(0);
      fill(255);
       ellipse(width/2,height/2,150,75);
      stroke(0);
      fill(0);
    ellipse(width/2,height/2,50,50);
      
    }
  }// end method display
}// end class