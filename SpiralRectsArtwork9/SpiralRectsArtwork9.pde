float radius = 100;
float x, y;
float lastx = -999;
float lasty = -999;
float rad;

void setup(){

fullScreen();
background(#483A3A);
strokeWeight(1);
noFill();
stroke(#52BC88,200);

radius =10;

for(float ang = 0; ang <90000; ang +=5){
radius +=0.1;
rad = radians(ang);
x = width/2 +(radius*cos(rad));
y = height/2 +(radius*sin(rad));

if(lastx > -999){
  
  rectMode(CENTER);
  stroke(#4E60F2);
   strokeWeight(1);
  line(x,y,lastx,lasty);
  stroke(#1FD9F0);
  line((x+lastx)/2,(y+lasty)/2,lastx,lasty);
   strokeWeight(1);
  noFill();
 stroke(#52BC88,200);
   ellipse(x,y,10,10);
   rect(x,y,5,5);
ellipse(width/2,height/2, 30,30);
} // end if 
lastx= x;
lasty = y;
}// end for
fill(#52BC88);
ellipse(width/2,height/2, 30,30);
stroke(255,255,255,150);
fill(0,0,0,150);
ellipse(width/2,height/2, 30,30);
}// end setup