 float i;

 
void setup(){
size(500,500);
background(0);
textSize(20);
}//end setup

void draw(){


    stroke(random(100),random(100),random(255));
  line(0,0,random(500),random(500));
  stroke(0);
 noFill();
  fill(0);
  text("According to all known laws of aviation, there is no way that a bee should be able to fly",0,250);
}

void mousePressed() { 
background(0);
 
}// end mousepressed