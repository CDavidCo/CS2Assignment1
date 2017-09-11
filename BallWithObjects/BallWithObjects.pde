int numBalls=50;
float ballDiam = 40;
float maxSpeed=5;
Ball[] toby = new Ball[numBalls] ;

void setup() {

  fullScreen();
  // populate toby array with lots o' ball objects
  for (int i=0; i<numBalls; i++) {
    toby[i] = new Ball(color(random(255), random(255), random(255), random(255)), random(width), random(height), random(1, 6), random(1, 6), xPosition/6);
  }// end for loop
}// end setup 

void draw() {
  background(255);
  for (int i=0; i<numBalls; i++) {
    toby[i].display();
    toby[i].motion();
  }// end for
}//end draw