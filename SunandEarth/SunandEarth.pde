void setup(){
size(800,800);
} //close setup

void draw(){
  background(0,0,mouseX/3);
  stroke(#14A3FA);
  fill(#14A3FA);
  ellipse(mouseX,mouseY,150,150);
 
  stroke(#FFAF1A);
  fill(#FFAF1A);
 
  ellipse(height/2,width/2,width/2-50,height/2-50);
  stroke(#15AD41);
  fill(#15AD41);
  triangle(mouseX+40,mouseY+40, mouseX-30,mouseY+40,mouseX,mouseY+10);

  if ((abs ((mouseY+25)-(height/2+75)))==(0) && (abs((mouseX+25)-(width/2+75))==(0))) {
 text("You killed everyone. Moron.", width/2, 100);
 }// end if

}
//close draw