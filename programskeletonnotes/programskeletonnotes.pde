//programs have three main blocks

/* the first block contains statements to initialize
all variables that will be used throughout the program
*/

int bkGround; //most statements will end in a semicolon 

/* the second block is called setup and it contains
statements to be executed only once.
*/

void setup(){
size(780,300);
background(255,0,0); //red, green, blue 0<x<255
noFill();
stroke(#2FF5F3);
strokeWeight(4);
}// end setup

/* the third section is called draw and every statement 
in draw gets looped through in the order written for ever
and ever and ever 
*/

void draw(){
  bkGround=mouseX/3;
  background(bkGround,0,0);
  ellipse(mouseX,mouseY,200,100);
}//end draw