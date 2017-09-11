class bar {
  // first the the class all of the variables and types it will use

  color c;
  float xPos2; // x speed of the ball
  float yPos2; // y speed of the ball
  float tymeX2;
  float tymeY2;

  //then some weird stuff called the constructor 

  bar(color ctemp, float xPostemp2, float yPostemp2, float tymeXtemp2, float tymeYtemp2) {

    c=ctemp;
    xPos2 = xPostemp2;
    yPos2 = yPostemp2;
    tymeX2 = tymeXtemp2;
    tymeY2 = tymeYtemp2;
   
  }// end constructor 

float [] xPos = new float[750];
float yPos[] = new float[750];
float tymeX[]=new float[750];
float tymeY[]=new float[750];
  // next come the methods for the ball objects
  // the methods these are the actions the object will perform

  void display() {
    //point(xPos,yPos);
  
  }// end method display

  void motion() {
 for(int i=0; i<15; i++){
  tymeY[i]=random(90, 100);
 }// end for 
  for(int i=0; i<15; i++){
  tymeY[i]+=.1;
}// end for 
  for(int i=0; i<15; i++){
  yPos[i]=noise(tymeY[i])*400;
}// end for 
 for(int i=0; i<15; i++){
  fill(255-(yPos[i]/2),(0+yPos[i])/2,0);
}// end for
rectMode(4);

 rect(xPos[1], yPos[1], xPos[1]+20, height-(height/3)+5000);
  rect(xPos[2]+20, yPos[2], xPos[2]+40, height-(height/3)+5000);
  rect(xPos[3]+40, yPos[3], xPos[3]+60, height-(height/3)+5000);
  rect(xPos[4]+60, yPos[4], xPos[4]+80, height-(height/3)+5000);
  rect(xPos[5]+80, yPos[5], xPos[5]+100, height-(height/3)+5000);
  rect(xPos[6]+100, yPos[6], xPos[6]+120, height-(height/3)+5000);
  rect(xPos[7]+120, yPos[7], xPos[7]+140, height-(height/3)+5000);
  rect(xPos[8]+140, yPos[8], xPos[8]+160, height-(height/3)+5000);
  rect(xPos[9]+160, yPos[9], xPos[9]+180, height-(height/3)+5000);
  rect(xPos[10]+180, yPos[10], xPos[10]+200, height-(height/3)+5000);
  rect(xPos[11]+200, yPos[11], xPos[11]+220, height-(height/3)+5000);
  rect(xPos[12]+220, yPos[12], xPos[12]+240, height-(height/3)+5000);
  rect(xPos[13]+240, yPos[13], xPos[13]+260, height-(height/3)+5000);
  rect(xPos[14]+260, yPos[13], xPos[14]+280, height-(height/3)+5000);
  rect(xPos[15]+280, yPos[14], xPos[15]+300, height-(height/3)+5000);

}}// end class