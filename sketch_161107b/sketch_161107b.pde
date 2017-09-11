/*notice that one can declare 
multiple variables on the same line
*/
float ax,ay;
float bx,by;
float cx,cy;
float midABx,midABy;
float distAB;


void setup(){
  size(800,800);
  background(0);
  stroke(210);
  noFill();
  strokeWeight(3);
  
  ax=66;
  ay=.5*height;
  
  bx=.4*width;
  by= .3*height;
 
}//end setup


void draw(){
  background(0);
  cx=mouseX;
  cy=mouseY;
  
  //draw triangle ABC
  triangle(ax,ay,bx,by,cx,cy);
  
  //calculate length of AB
  distAB=dist(ax,ay,bx,by);
  //round the distance to an integer
  distAB=int(distAB);
  
  //calculate midpoint of AB
  midABx=(ax+bx)/2;
  midABy=(ay+by)/2;
  
  //display the length of side
  // AB near its midpoint
  text(distAB,midABx,midABy+20);
  //QUESTION...why the "+20" above?
  
}//end draw