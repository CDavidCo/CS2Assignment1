void setup() {

  size(1440, 990, P3D);
  background(150);
  stroke(255, 50);
  fill(0, 0);
  
  float xstart = random(90);
  float ynoise = random(90); 
  
  translate(width/2, height/2, 0);
  
  for (float y = -(width/8); y <  (width/8); y+=3) {
    ynoise+=0.02;
    float xnoise = xstart;
    for (float x = -(width/8); x <  (width/8); x+=3) {
      xnoise+=0.02;
      drawPoint(x, y, noise(xnoise, ynoise));
      
    }// end for
    
  }// end for
  
}// end setup

void drawPoint(float x, float y, float noiseFactor) {
  
  pushMatrix();
  translate(x*noiseFactor*4, y*noiseFactor*4, -y);
  float edgeSize = noiseFactor*26;
  ellipse(0, 0, edgeSize, edgeSize);
  popMatrix();
  
}// end drawpoint