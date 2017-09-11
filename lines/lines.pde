//variables 
float end1x;
float end1y;
float end2x;
float end2y;

void setup(){
  size(600,600);
  background(0);//one number uses greyscale, 0=black 255=white
    stroke(255);
  
}// end setup


void draw(){
  end1x=random(width);
  end1y=random(height);
  end2x=random(width);
  end2y=random(height);
  line(end1x,end1y,end2x,end2y);
}// end draw