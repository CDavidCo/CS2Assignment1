int myScore; // my score
int cpuScore; // the score of the computer
int numBalls = 1; // the number of balls
int numlowPaddles = 1; // the number of my paddles
int numhighPaddles = 1; // the number of cpu paddles
float goalLinestart = 555;
boolean moveUp=true, moveRight=true; // whether the ball is going up or right
Ball [] theBall = new Ball[numBalls]; // creating the array that holds the balls
Paddle [] lowPad = new Paddle[numlowPaddles]; // creating the array that holds my paddles
Paddle [] highPad = new Paddle[numhighPaddles]; // creating the array that holds cpu paddles

void setup() {

  size(500, 600); // display size
  rectMode(CENTER); // makes it so the rectangles are started from their center

  for (int i=0; i<numBalls; i++) {

    theBall[i] = new Ball(color(255), width*.8, height*.5, 5, 3, 75, 75); //populates balls
  }// end for loop

  for (int i=0; i<numlowPaddles; i++) {

    lowPad[i] = new Paddle(color(255), mouseX, 550, random(1, 6), random(1, 6), 100, 10);//populates my paddles
  }// end for loop

  for (int i=0; i<numhighPaddles; i++) {

    highPad[i]  = new Paddle(color(255), width/2, 50, random(1, 6), random(1, 6), 125, 10);
  }//populates my paddles
}// end setup

void draw() {

  background(0);// color of the background

  text(myScore, 25, height/2+30); // display my score
  text(cpuScore, 25, height/2-30); // display cpu score

  theBall[0].display(); // activate the display section of the class
  theBall[0].motion(); // activate the motion section of the class

  lowPad[0].display(); // activate the display section of the class
  lowPad[0].motion(); // activate the motion section of the class

  highPad[0].display(); // activate the display section of the class
  highPad[0].motion(); // activate the motion section of the class

  if ((abs (theBall[0].elliY-lowPad[0].rect2Y))<(theBall[0].elliYDiam-35)&& (abs(theBall[0].elliX-mouseX))<(theBall[0].elliYDiam-35)) {
    moveUp=!moveUp;// make it stop going up or continue going up
  }// end if

  if ((abs (theBall[0].elliY-highPad[0].rect2Y))<(theBall[0].elliYDiam-35)&& (abs(theBall[0].elliX-highPad[0].rect2X))<(theBall[0].elliYDiam-35)) {

    moveUp=!moveUp;// make it stop going up or continue going up
  }// end if



  if (myScore == 10) {
    noLoop();
    textSize(25);
    fill(255);
    stroke(255);
    textMode(CENTER);
    text("You Won!", width/2, height/2);
    text("press Enter to play again", width/2-150, height/2+30);
  }

  if (cpuScore == 10) {
    noLoop();
    textMode(CENTER);
    fill(255);
    stroke(255);
    textSize(25);
    text("You Lost!", width/2, height/2);
    text("press Enter to play again", width/2-150, height/2+30);
  }

  stroke(255);
  line(0, height/2, width, height/2);

  goalLinestart = 555;
  stroke(255);
  line(0, goalLinestart+5, width, goalLinestart+5);
  line(0, goalLinestart+10, width, goalLinestart+10);
  line(0, goalLinestart+15, width, goalLinestart+15);
  line(0, goalLinestart+20, width, goalLinestart+20);
  line(0, goalLinestart+25, width, goalLinestart+25);
  line(0, goalLinestart+30, width, goalLinestart+30);
  line(0, goalLinestart+35, width, goalLinestart+35);
  line(0, goalLinestart+40, width, goalLinestart+40);
  line(0, goalLinestart+45, width, goalLinestart+45);
  goalLinestart = 0;
  line(0, goalLinestart+5, width, goalLinestart+5);
  line(0, goalLinestart+10, width, goalLinestart+10);
  line(0, goalLinestart+15, width, goalLinestart+15);
  line(0, goalLinestart+20, width, goalLinestart+20);
  line(0, goalLinestart+25, width, goalLinestart+25);
  line(0, goalLinestart+30, width, goalLinestart+30);
  line(0, goalLinestart+35, width, goalLinestart+35);
  line(0, goalLinestart+40, width, goalLinestart+40);
  line(0, goalLinestart+45, width, goalLinestart+45);
}// end draw

void keyPressed() {
  if (key == ENTER) {
    loop();
    myScore = 0;
    cpuScore = 0;
  }// end if
}// end keypressed