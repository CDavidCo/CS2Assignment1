int numStars=1;

star[] toby = new star[numStars] ;

void setup(){

fullScreen();
background(255);
fill(255);

   for (int i=0; i<numStars; i++) {
toby[i] = new star(color(random(86),random(159),random(100,255), random(255)),width/2, height/2, 125, 250, 6, random(1,6), random(1,6));
 }//end for
}// end setup 

void draw(){
  
  background (255);
  ellipseMode(CENTER);
  stroke (0);
  noFill();
  ellipse(width/2,height/2, 500,500);
  for (int i=0; i<numStars; i++) {
    toby[i].display();
     
  }// end for
}// end draw