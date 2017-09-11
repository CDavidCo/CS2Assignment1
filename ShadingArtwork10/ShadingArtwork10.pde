float radius = 100;
float radius2 = 100;
float x, y;
float x2, y2;
float lastx = -999;
float lasty = -999;
float lastx2 = -999;
float lasty2 = -999;
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
radius2 +=0.1;
rad = radians(ang);
x = width/2 +(radius*sin(rad));
y = height/2 +(radius*tan(rad));
x2 = width/2 +(radius2*sin(rad));
y2 = height/2 +(radius2*cos(rad));

if(lastx > -999){
  

  line(x,y,lastx,lasty);
  line(x2,y2,lastx2,lasty2);

} // end if 
lastx= x;
lasty = y;
lastx2= x2;
lasty2 = y2;
}// end for

}// end setup