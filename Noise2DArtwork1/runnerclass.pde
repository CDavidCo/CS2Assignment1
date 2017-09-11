class runner {
  // first the the class all of the variables and types it will use

  float xPos; // x speed of the ball
  float yPos; // y speed of the ball
  float tymeX;
  float tymeY;
  float tymeX2;
  float tymeY2;
  float tymeZ2;
  float rColor;
  float gColor;
  float bColor;

  //then some weird stuff called the constructor 

  runner(float xPostemp, float yPostemp, float tymeXtemp, float tymeYtemp, float tymeX2temp, float tymeY2temp, float tymeZ2temp, float rColortemp, float gColortemp, float bColortemp ) {

    xPos = xPostemp;
    yPos = yPostemp;
    tymeX = tymeXtemp;
    tymeY = tymeYtemp;
    tymeX2 = tymeX2temp;
    tymeY2 = tymeY2temp;
    tymeZ2 = tymeZ2temp;
    rColor = rColortemp;
    gColor = gColortemp;
    bColor = bColortemp;
  }// end constructor 

  // next come the methods for the ball objects
  // the methods these are the actions the object will perform

  void display() {
    //point(xPos,yPos);
    stroke((rColor), (gColor), (bColor));
  }// end method display

  void motion() {

    tymeX+=.01;
    tymeY+=.01;
    tymeX2+=.01;
    tymeY2+=.01;
    tymeZ2+=.01;

    xPos=noise(tymeX)*600;
    yPos=noise(tymeY)*600;
    rColor=noise(tymeX2)*600;
    gColor=noise(tymeY2)*600;
    bColor=noise(tymeZ2)*600;

noFill();
    point(xPos, yPos);
  }// end motion method
}// end class