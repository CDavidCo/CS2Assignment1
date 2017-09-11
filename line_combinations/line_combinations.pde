size(930,800);
background(255);
strokeWeight(5);
smooth();

stroke(255,140,58);

float xstep = 1;
float lastx = -999;
float lasty = -999;
float angle = 0;
float y=height/2;
float xstep2 = 1;
float lastx2 = -999;
float lasty2 = -999;
float angle2 = 0;
float y2=height/2;
float xstep3 = 1;
float lastx3 = -999;
float lasty3 = -999;
float angle3 = 0;
float y3=height/2;

line(20,height/2,910,height/2);

for(int x=20; x<910; x+= xstep){
  float rad = radians(angle);
  y = height/2+(sin(rad)*40);
  if (lastx > -999){
    line (x,y,lastx,lasty);
  }
  for(int h=20; h<910; h+= xstep2){
  float rad2 = radians(angle2);
  y2 = height/2+(tan(rad2)*40);
  if (lastx2 > -999){
    line (h,y2,lastx2,lasty2);
  }
  
  for(int g=20; g<910; g+= xstep3){
  float rad3 = radians(angle3);
  y3 = height/2+(cos(rad3)*40);
  if (lastx3 > -999){
    line (g,y3,lastx3,lasty3);
    
  }}//}
  lastx = x;
  lasty = y;
  angle++;
  lastx2 = h;
  lasty2 = y2;
  angle2++;
  lastx3 = g;
  lasty3 = y3;
  angle3++;
} }