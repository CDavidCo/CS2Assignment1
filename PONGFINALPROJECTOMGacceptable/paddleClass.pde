class Paddle {
  // first the the class all of the variables and types it will use

  color c;// color of the paddle
  float rect2X;// x position of the paddle
  float rect2Y;// y position of the paddle
  float rect2HorizSpeed; // x speed of the paddle
  float rect2VertSpeed; // y speed of the paddle
  float rect2Width;// width of the paddle 
  float rect2Height;// height of the paddle
  float tymeX;// part of making the computer human
  float xPos;// part of making the computer human

  //then some weird stuff called the constructor 

  Paddle(color cTemp, float rect2XTemp, float rect2YTemp, float rect2HorizSpeedTemp, float rect2VertSpeedTemp, float rect2WidthTemp, float rect2HeightTemp) {
    c = cTemp;
    rect2X = rect2XTemp;
    rect2Y = rect2YTemp;
    rect2HorizSpeed = rect2HorizSpeedTemp;
    rect2VertSpeed = rect2VertSpeedTemp;
    rect2Width = rect2WidthTemp;
    rect2Height = rect2HeightTemp;
  }// end constructor 

  // next come the methods for the ball objects
  // the methods these are the actions the object will perform

  void display() {
     rectMode(CENTER);
    fill(c); // fill it that color
    noStroke(); // no stroke
    rect(rect2X, rect2Y, rect2Width, rect2Height); // display that rectangle
  }// end method display

  void motion() {
    rectMode(CENTER);
      tymeX+=.01;// part of making the computer human
    highPad[0].rect2X = theBall[0]. elliX + xPos*(frameRate*.01)-80; // the x val of the ball is the same as the paddle
    lowPad[0].rect2X = mouseX; //the x val of the paddle is mouseX
     xPos=noise(tymeX)*450;// part of making the computer human
  }// end motion method
}// end class