void setup(){
  background(0);
  size(500,500);
}// end setup

void draw(){ 
  noFill();
  stroke(random(100), random(175), random(255));
  rect(random(500), random(500), random (500), random(500), random(500));
}

 void mousePressed(){
   stroke(255);
   for(int i=0;i<1999; i+=1);
   ellipse(0,0, random(100), random(100));
   
 }// end mousepressed