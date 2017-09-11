int numStars=1;
int numPoints=3;
float sidelength;
float perimiter;
float trideg;
float trihei;
float tribas;
float radius;
float triarea;
float ngonarea;  
float background = 255;

star[] toby = new star[numStars] ;

void setup() {

  fullScreen();
  background(255);
  fill(255);

  for (int i=0; i<numStars; i++) {
    toby[i] = new star(color(random(170), random(4), random(150)), width/2, height/2, ((360/(numPoints))*2), 250, numPoints, random(1, 6), random(1, 6));
  }//end for
}// end setup 

void draw() {
  
if (keyCode == 88) {
      background = color(random(255),random(255),random(255));
      stroke(255);
      ellipse(width/2, height/2, 500, 500);
    }
    
  background (background);
  text("press the number keys to change the number of sides the N-Gon has", 25, 25);
  text("press c to randomize shape color", 25, 40);
  text("press x to turn off the lights", 25, 55);
  text("press i for the illuminati", 25, 70);
  text("area", width-145, height/2);
  text(ngonarea, width-120, height/2);
  text("perimiter", width-145, height/2+20);
  text(perimiter, width-90, height/2+20);

  ellipseMode(CENTER);
  stroke (0);
  noFill();
  ellipse(width/2, height/2, 500, 500);

  for (int i=0; i<numStars; i++) {
    toby[i].display();

    trideg = 360/toby[i].numPoints/2;
    radius = 250;
    tribas = (sin(radians(trideg)))*radius;
    trihei = (sin(radians(90-trideg)))*radius;
    triarea = trihei*tribas;
    ngonarea = triarea*toby[i].numPoints;
    
    sidelength = 2*250*sin(PI/toby[i].numPoints);
    perimiter = sidelength*toby[i].numPoints;
    
  }//endfor
  
   
    
}// end draw