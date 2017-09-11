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
  syze=25;
  red=color(255,0,0);
  black=color(0);
  background(255);
  fill(red);
  rectMode(CENTER);
  frameRate(30);
  tymeX=random(20,60);
   right=true;
  
}// end setup

void draw(){
  noFill();

  tymeX+=.01;
   
 noStroke();
  xPos=noise(tymeX)*300+150;
  //move rectangle
   yPos+=1;
  stroke(0);
  line(0,yPos, width,yPos);
  strokeWeight(20);
    stroke(#C12727);
  strokeWeight(2);
   stroke(100);
   strokeWeight(3);
   point(xPos-100,yPos);
   point(xPos+100,yPos);
   point(xPos-200,yPos);
   point(xPos+200,yPos);
   stroke(#E8D22A);
     point(xPos+20,yPos);
     line(xPos+20, yPos, xPos+10, yPos);
     point(xPos-20,yPos);
      line(xPos-20, yPos, xPos-10, yPos);
      stroke(#A2A7A5);
       point(xPos+250,yPos);
       line(xPos+250,yPos, xPos+275,yPos);
        point(xPos-250,yPos);
          line(xPos-250,yPos, xPos-275,yPos);
           stroke(random(25),random(100),random(25));
           line(xPos-275,yPos, 0,yPos);
           line(xPos+275,yPos, width,yPos);

   //line(0,yPos, width,yPos);
  
}// end draw