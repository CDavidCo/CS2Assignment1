float gradual = 0.01; 
float elliwid;

void setup() {
 // size(550, 550);
 fullScreen();
  frameRate(30);
  
}// end setup

void draw() {

  loadPixels();

  float xpix = 0.0; 

  for (int x = 0; x < width; x++) { 
    xpix += gradual;   
    float ypix = 0.0;  

    for (int y = 0; y < height; y++) {
      ypix += gradual; 

      float colr1= (noise( xpix*ypix/3)*255);
      float colr2= (noise( xpix*ypix/7.25)*255);
      float colr3= (noise( xpix*ypix/6)*255);

      pixels[x+y*width] = color(colr1, colr2, colr3);
     
    }// end for
  }// end for 
  updatePixels();
}// end draw