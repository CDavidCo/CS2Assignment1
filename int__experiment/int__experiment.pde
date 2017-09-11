//global variables

int[] x = { 50, 61, 83, 69, 71, 50, 29, 31, 17, 39, 50 };
int[] y = { 18, 37, 43, 60, 82, 73, 82, 60, 43, 37, 18 };
color red=color(255, 0, 0, 200);
color white=color(255, 200);
color blue=color(0, 0, 255, 200);
color colr=blue;
//setup
void setup() {
size(600, 600);
background(#2F9032);

// Reads one array element every time through the for()
beginShape();
noFill();

for (int i = 0; i < 11; i++) {

vertex(x[i], y[i]);
}//end i loop
endShape();

beginShape();
for (int i = 0; i < 11; i++) {

vertex(x[i]+100, y[i]);
}//end i loop
endShape();

beginShape();


for (int i = 0; i < 11; i++) {

vertex(x[i]*2, y[i]*2);
}//end i loop
endShape();
}//end setup

//draw
void draw() {
//draw intentionally left empty
}//end draw