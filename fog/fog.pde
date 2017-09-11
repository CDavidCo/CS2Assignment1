float increment = 0.01; // The noise function's 3rd argument, a global variable that increments once per cycle
float zoff = 0.0;  // We will increment zoff differently than xoff and yoff
float zincrement = 0.02; 
float zoff2 = 0.0;  // We will increment zoff differently than xoff and yoff
float zoff3 = 0.0;  // We will increment zoff differently than xoff and yoff
void setup() {
  size(640, 360);
  frameRate(30);
}

void draw() {

  loadPixels();

  float xoff = 0.0; // Start xoff at 0
  float xoff2 = 0.0; // Start xoff at 0
  float xoff3 = 0.0; // Start xoff at 0


  for (int x = 0; x < width; x++) { // For every x,y coordinate in a 2D space, calculate a noise value and produce a brightness value
    xoff += increment;   // Increment xoff 
    float yoff = 0.0;   // For every xoff, start yoff at 0
    xoff2 += increment;   // Increment xoff 
    float yoff2 = 0.0;   // For every xoff, start yoff at 0
    xoff3 += increment;   // Increment xoff 
    float yoff3 = 0.0;   // For every xoff, start yoff at 0
    for (int y = 0; y < height; y++) {
      yoff += increment; // Increment yoff

      // Calculate noise and scale by 255
      float rbright = noise(xoff, yoff, zoff)*255;
      float gbright = noise(xoff2, yoff2, zoff2)*100;
      float bbright = noise(xoff3, yoff3, zoff3)*90;
      // Try using this line instead
      //float bright = random(0,255);

      // Set each pixel onscreen to a grayscale value
      pixels[x+y*width] = color(rbright, gbright, bbright);
      fill(rbright, gbright, bbright);
      rect(width/2, height/2, 2, 2);
    }
  }
  updatePixels();

  zoff += zincrement; // Increment zoff
}