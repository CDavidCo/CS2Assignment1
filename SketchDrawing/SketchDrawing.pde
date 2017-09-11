float xPos;
float yPos;
float xPos2;
float yPos2;
float tymeY;
float tymeX;
float tymeYc;
float tymeXc;

void setup(){
  
  size(500,500);
  background(0);
  xPos=width/2;
  yPos=height/2;
  tymeX=random(20,60);
  tymeY=random(20,60);
  
}// end setup

void draw(){
  
   tymeX+=.01;
   tymeY+=.01;
    
   
  xPos=noise(tymeX)*800-100;
  yPos=noise(tymeY)*120+150;
  xPos2=noise(tymeX)*800-100;
  yPos2=noise(tymeY)*120+350;
  tymeYc=noise(tymeX)*20+50;
  tymeXc=noise(tymeY)*60+50;
  
  strokeWeight(1);
  stroke(10,tymeYc,tymeXc);
  point(xPos, yPos);
  stroke(40,tymeXc,tymeYc);
  point(xPos+100, yPos+100);
  stroke(tymeXc,tymeXc,tymeYc);
  point(xPos-100, yPos-100);
  stroke(tymeXc,tymeXc,40);
  point(xPos-200, yPos-200);
  stroke(tymeXc,40,tymeYc);
  point(xPos+200, yPos+200);
  
}// end draw 