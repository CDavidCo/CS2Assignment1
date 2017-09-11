


PImage img;

void setup() {
  
  size(600,800);
 
}

void draw() {

   // Images must be in the "data" directory to load correctly
  img = loadImage("Donald_Trump_August_19,_2015_(cropped).jpg");
  image(img, 0, 0);
  image(img, 0, 0, width, height);
}