

void setup(){
   background (40, 130,255);
size(500,500);
}

void draw(){
  noFill();
  strokeWeight(mouseX/10);
  stroke(mouseX,mouseY,mouseX*mouseY);
  triangle (random(height), random(width),random(height), mouseY-30,random(height), random(width));
  triangle (mouseX,mouseY,mouseX-300,mouseY-300, mouseX+300,mouseY);
}