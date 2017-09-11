void setup(){
 size(1000,650);
background (0);
stroke(255);
}

void draw(){
  background(0);
   triangle(700,400,300,400,mouseX,mouseY);
   stroke(150);
   ellipse((mouseX+700)/2,(mouseY+400)/2,5,5);
   ellipse((mouseX+300)/2,(mouseY+400)/2,5,5);
   ellipse(500,400,5,5);
   ellipse((mouseX+500)/2,(mouseY+400)/2,5,5);
   stroke(0);
   line((mouseX+700)/2,(mouseY+400)/2,300,400);
   line((mouseX+300)/2,(mouseY+400)/2,700,400);
   line(500,400,mouseX,(mouseY)); // this is the line that I am to calculate the slope of 
}