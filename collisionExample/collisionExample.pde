// global variables
float xPos;
float yPos;
float rectX, rectY;
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
  rectX=0;
  rectY=height/2;
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
   background(0);
   right=true;
  
}// end setup

void draw(){
 background(0);
  tymeX+=.01;
   tymeY+=.01;
   
 noStroke();
  xPos=noise(tymeX)*300+150;
  yPos=noise(tymeY)*300+150;
  //move rectangle
  if (right){
    rectX+=5;
 
  }//end if right
  
  if(!right){
    rectX-=5;
  }// end !right
  
  // bounce off edge
  if(rectX>width){
    right=false;
  }// end right dbounce
   if(rectX<0){
    right=true;
  }// end left dbounce
  
  //start bounce off of ball;
  if((abs (rectX-xPos))<(.5*syze+20)&& (abs(rectY-yPos))<(.5*syze+20       )){
    right=!right;
  }// end if
  
  ellipse(xPos,yPos,syze,syze);
  rect(rectX, rectY,40,40);
}// end draw