float increment = 0.01; 

float elliwid;
void setup() {
  size(550, 550);
  frameRate(30);
}

void draw() {

  loadPixels();

  float xoff = 0.0; 

  for (int x = 0; x < width; x++) { 
    xoff += increment;   
    float yoff = 0.0;  

    for (int y = 0; y < height; y++) {
      yoff += increment; 

      float colr1= noise( xoff*yoff)*255;
float colr2= noise( xoff*yoff/2)*255;
float colr3= noise( xoff*yoff/3)*255;

      pixels[x+y*width] = color(colr1, colr2, colr3);
    }
  }
  updatePixels();


}