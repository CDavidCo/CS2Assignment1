// global variables
float xPos;
float yPos;
float tymeX;
int syze;
color red;
color black;
boolean right;
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
  xPos=noise(tymeX)*300+150; // noise setup for lines
  //move rectangle
   yPos+=1; // increasing Y
  stroke(xPos/2);
  textSize(50);
 // text("artless space", width/2-50, height/2+150);
 // text("please fix", width/2-50, height/2+200);
  line(0,yPos, width,yPos);
  strokeWeight(20);
    stroke(#C12727);
  strokeWeight(2);
  point(xPos,yPos);
   stroke(100);
   strokeWeight(3);
   point(xPos-100,yPos);// lines
   point(xPos+100,yPos);// lines
   point(xPos-200,yPos);// lines
   point(xPos+200,yPos);// lines
   point(xPos+300,yPos);// lines
    stroke(random(0,255),random(0,255),random(0,255), xPos);// color of color static
   line(xPos,yPos,xPos+100,yPos); // color static
   stroke(random(0,255),xPos);// color of bw static
   line(xPos+200,yPos,xPos+300,yPos);//bw static
   line(xPos-100,yPos,xPos-200,yPos);//bw static

  


   //line(0,yPos, width,yPos);
  
}// end draw