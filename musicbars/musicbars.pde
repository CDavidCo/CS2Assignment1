// global variables
float []xPos;
float [] yPos;
float [] tymeY  ;

int numbars=4;
bar [] thebar = new bar[numbars];
// end global variables

void setup() {
  size(300, 600);
  smooth();
 // frameRate(5);
   for (int i=0; i<numbars; i++) {
  thebar[i] = new bar(0,0, 100, 20, height-(height/3)+5000);
    }// end for
}// end setup

void draw() {
  background(0);
 
 for (int i=0; i<numbars; i++) {
  thebar[i].display(); // activate the display section of the class
    thebar[i].motion(); // activate the motion section of the class
   }// end for
}// end draw