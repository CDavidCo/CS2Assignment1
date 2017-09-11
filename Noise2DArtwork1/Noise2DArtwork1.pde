// global variables

float green;
float blue;
int numRunners = 70;
runner [] therunner = new runner[numRunners];
// end global variables

void setup() {
  frameRate(2000);
  size(600, 600);
  background(255);
  rectMode(CENTER);

  for (int i=0; i<numRunners; i++) {

    therunner[i] = new runner(random(width/2), random(height/2), random(20, 60), random(20, 60), random(20, 60), random(20, 60), random(20, 60), 255, 255, 255); //populates balls

}// end setup

void draw() {
  //background(255);
  noFill();
  strokeWeight(5);
  for (int i=0; i<numRunners; i++) {
    therunner[i].display(); // activate the display section of the class
    therunner[i].motion(); // activate the motion section of the class
 
  }// end for
}// end draw