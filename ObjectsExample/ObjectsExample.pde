int numBalls=30;
float ballDiam = 40;
float maxSpeed=5;
Ball toby;

void setup() {
  size(900, 700); 
  toby = new Ball(color(255, 0, 0), 200, 400, 7, 7);
}// end setup 

void draw() {
  background(255);
  toby.display();
  toby.motion();
}//end draw














































/*fill(ballColor[i]);
 ellipse(ballX[i], ballY[i], ballDiam, ballDiam);
 ballX[i]+=ballXSpeed[i];
 ballY[i]+=ballYSpeed[i];
 if (ballX[i]<ballDiam || ballX[i]>width-ballDiam) { 
 ballXSpeed[i]*=-1;
 }
 if (ballY[i]<ballDiam || ballY[i]>height-ballDiam) { 
 ballYSpeed[i]*=-1;*/