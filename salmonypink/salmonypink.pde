//programs have three main blocks

/* the first block contains statements to initialize
all variables that will be used throughout the program
*/

int x;
float y;
color salmon;
color ochre;


 //most statements will end in a semicolon 

/* the second block is called setup and it contains
statements to be executed only once.
*/

void setup(){

  salmon = color(#FC14A0);
  ochre = color(#863131);
  size(655,655);
  background(0);
 
  
}// end setup

/* the third section is called draw and every statement x
in draw gets looped through in the order written for ever
and ever and ever 
*/

void draw(){
  background(0);
 
  for(int i=0; i<width; i+=55){
    for(int j=0;j<height;j+=5){
    color(salmon);
    stroke(255);
    noFill();
    ellipse(i+25,j+25,40,40);
      }// end nested loop
    
  }//end for loop
  
}//end draw