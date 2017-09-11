int numBalls=30;
float ballDiam = 5;
float maxSpeed=5;
Ball toby;

void setup() {
    background(0);
  size(900, 700); 
  stroke(255);
  toby = new Ball(color(#FACB30), 200, 400, 7, 7);
}// end setup 

void draw() {
  toby.display();
  toby.motion();
}//end draw