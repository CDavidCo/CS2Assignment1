  // global variables
float xPos;
float green;
float blue;
float star;
float yPos;
float tymeY;
float tymeX;
int syze;
color red;
color black;
boolean right;
float north;
boolean down;
// end global variables

void setup(){
  frameRate(200);
  size(600,600);
  xPos=width/2;
  yPos=height/2;
  syze=25;
  red=color(255,0,0);
  black=color(0);
  background(0);
  fill(red);
  rectMode(CENTER);
  smooth(8);
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
  xPos=noise(tymeX)*600;
  yPos=noise(tymeY)*600;
  //move rectangle
 
  stroke(255,0,0);
  strokeWeight(2);
  point(xPos-30,yPos-30);
  
  stroke(#EAB145);
  strokeWeight(2);
  point(xPos-20,yPos-20);
  
  stroke(#D1C930);
  strokeWeight(2);
  point(xPos-10,yPos-10);

stroke(#30D15F);
  strokeWeight(2);
  point(xPos,yPos);
  
  stroke(#30D1C5);
  strokeWeight(2);
  point(xPos+10,yPos+10);
  
  stroke(#309AD1);
  strokeWeight(2);
  point(xPos+20,yPos+20);
  
  stroke(#3D30D1);
  strokeWeight(2);
  point(xPos+30,yPos+30);

  stroke(red,green,blue);
  point(random(width), random(height));
  red+=.1;
  green+=.25;
  blue+=5;
  
  stroke(north);
  strokeWeight(star);
  point(width-100,100);
  north+=1;
  star+=.1;
  
}// end draw