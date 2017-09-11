float vx=50;
float vy=350;
float hyp;
float opp;
float angrad;


void setup(){
  size(800,400);
  background(0);
  stroke(255);
  strokeWeight(2);
  
}//end setup

void draw(){
  
  background(0);//erase after each frame
  strokeWeight(10);
  point(vx,vy);
  strokeWeight(2);
  fill(255);
  text("hyp = ", 50,50);
  text("opp = ", width-100,50);
  line(50,350,mouseX,350);//bottom side
  line(vx,vy,mouseX,mouseY);//hypotenuse
  line(mouseX,mouseY,mouseX,350);
  hyp = dist(vx,vy,mouseX,mouseY);
  opp = dist(mouseX,mouseY,mouseX,350);
  text(hyp, 80,50);
  text(opp, width-60,50);
  text("opp", mouseX+20,mouseY+150/2);
  text("hyp", mouseX-300,mouseY+150/2);
   text("adj", width/2,height-25);
   text("area", width-85,height-25);
   text(dist(mouseX,mouseY,mouseX,350)+dist(50,350,mouseX,350)/2,width-60,height-25);
  
  angrad = asin(dist(mouseX,mouseY,mouseX,350)/dist(vx,vy,mouseX,mouseY));
  text("angrad = ", 50, height-20);
  text(degrees(angrad), 100, height-20);
  
  
  }//end draw