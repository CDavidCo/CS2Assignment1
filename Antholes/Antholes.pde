// global variables
float xPos;
float yPos;
float tymeY;
float tymeX;
int syze;
color red;
color black;
boolean right;
boolean down;
// end global variables

void setup(){
  size(600,600);
  xPos=width/2;
  yPos=height/2;
  syze=25;
  red=color(255,0,0);
  black=color(0);
  background(black);
  fill(red);
  rectMode(CENTER);
  frameRate(30);
  tymeX=random(20,60);
  tymeY=random(20,60);
   right=true;
  
}// end setup

void draw(){
  noFill();

  tymeX+=.01;
   tymeY+=.01;
   
 noStroke();
  xPos=noise(tymeX)*300+150;
  yPos=noise(tymeY)*300+150;
  //move rectangle
 
  stroke(0,0,random(100,255),90);
  strokeWeight(20);
  point(xPos,yPos);
  stroke(random(100,255),0,random(100,255), 75);
  strokeWeight(2);
  ellipse(xPos,yPos,30,30);
  
}// end draw