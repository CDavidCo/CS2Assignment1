void setup(){
size(900,900);  
  
}

void draw(){
  background(100);
  ellipse(mouseX,mouseY,50,50);
 fill(100,255,120);
 
 if (mouseY<height/2) {
    fill(100,120,255);;
}// end if

if (mouseX<width/2) {
    fill(100,120,255);
}// end if


}// end draw 