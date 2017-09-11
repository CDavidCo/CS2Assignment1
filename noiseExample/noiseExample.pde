// global variables
float xPos;
float yPos;
float tymeY;
float tymeX;
int syze;
color red;
color black;
// end global variables

void setup(){
  size(600,600);
  xPos=width/2;
  yPos=height/2;
  syze=10;
  red=color(255,0,0,75);
  black=color(0);
  background(black);
  fill(red);
  rectMode(CENTER);
  frameRate(30);
  tymeX=random(20,60);
  tymeY=random(20,60);
   background(0);
  
}// end setup

void draw(){
 
  tymeX+=.01;
   tymeY+=.01;
 noStroke();
  xPos=noise(tymeX)*300+150;
  yPos=noise(tymeY)*300+150;
  rect(xPos,yPos,syze,syze);
}// end draw