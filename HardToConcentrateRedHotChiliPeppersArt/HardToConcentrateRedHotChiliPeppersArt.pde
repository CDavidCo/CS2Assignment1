// global variables
float xPos;
float green;
float blue;
float star;
float yPos;
float tymeY;
float tymeX;
color red;
color black;
boolean right;
float north;
boolean down;
void setup() {
  frameRate(200);
  size(600, 600);
  xPos=width/2;
  yPos=height/2;
  red=color(255, 0, 0);
  black=color(0);
  background(0);
  fill(red);
  rectMode(CENTER);
  smooth(8);
  frameRate(30);
  tymeX=random(20, 60);
  tymeY=random(20, 60);
  right=true;
}// end setup
void draw() {
  noFill();
  tymeX+=.01;
  tymeY+=.01;
  noStroke();
  xPos=noise(tymeX)*600;
  yPos=noise(tymeY)*600;
  stroke(255);
  strokeWeight(2);
  point(xPos-30, yPos-30);
  point(xPos-20, yPos-20);
  point(xPos-10, yPos-10);
  point(xPos, yPos);
  point(xPos+10, yPos+10);
  point(xPos+20, yPos+20);
  point(xPos+30, yPos+30);
  stroke(#F7CD23);
  line(xPos-10, yPos-10, xPos-2, yPos-2);
  line(xPos+10, yPos+10, xPos+2, yPos+2);
}// end draw