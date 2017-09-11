int numBalls=60;
float ballDiam = 40;
float maxSpeed=5;
float[] ballX = new float[numBalls];
float[] ballY  = new float[numBalls];
float[] ballXSpeed= new float[numBalls];
float[] ballYSpeed = new float[numBalls];
color[] ballColor = new color[numBalls];

void setup() {
  size(900, 700); 
  for (int i=0; i<numBalls; i++) { // this loop initializes all the values using the random function
   ballX[i]=random(ballDiam, width-ballDiam); // come in from the edge slightly...
    ballY[i]=random(ballDiam, height-ballDiam); // come in from the edge slightly...
    ballXSpeed[i]=random(-maxSpeed, maxSpeed);
    ballYSpeed[i]=random(-maxSpeed, maxSpeed);
    ballColor[i] = color(random(0, 255), random(0, 255), random(0, 255));
  }
}

void draw() {
  background(255);
  for (int i=0; i<numBalls; i++) {
    fill(ballColor[i]);
    ellipse(ballX[i], ballY[i], ballDiam, ballDiam);
    ballX[i]+=ballXSpeed[i];
    ballY[i]+=ballYSpeed[i];
    if (ballX[i]<ballDiam || ballX[i]>width-ballDiam) { 
      ballXSpeed[i]*=-1;
      ballColor[i] = color(random(0, 255), random(0, 255), random(0, 255));
     
    }
    if (ballY[i]<ballDiam || ballY[i]>height-ballDiam) { 
      ballYSpeed[i]*=-1;
      ballColor[i] = color(random(0, 255), random(0, 255), random(0, 255));
      ballDiam -=1;
      ballXSpeed[i]-=1;
      ballYSpeed[i]-=1;
    }
    if (ballDiam==0){
      
      background (255);
      frameRate (0);
    }
  }
}