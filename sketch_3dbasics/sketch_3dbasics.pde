float x,y,z;

void setup() {
  size(200, 200, P3D);
background(100);
rectMode(CENTER);
fill(51);
stroke(255);

}

void draw() {
 
translate(100, 100, 0);
rotateZ(PI/8);
rect(0, 0, 100, 100);
z++;
}