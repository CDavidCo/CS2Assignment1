//programs have three main blocks

/* the first block contains statements to initialize
all variables that will be used throughout the program
*/

int x;
float y;
color salmon;
color ochre;
int product ;


 //most statements will end in a semicolon 

/* the second block is called setup and it contains
statements to be executed only once.
*/

void setup(){

  salmon = color(#FC14A0);
  ochre = color(#863131);
  size(655,655);
  background(0);
 textSize(15);
  
}// end setup

/* the third section is called draw and every statement x
in draw gets looped through in the order written for ever
and ever and ever 
*/

void draw(){
  background(0);
 
  for(int i=1; i<14; i+=1){
    for(int j=1;j<14;j+=1){
      product=i*j;
    noFill();
    stroke(255);
     if(product%3==0){
       stroke(244,66,66);
     }// end if
   
    
    
    ellipse(50*i-25,50*j-25,40,40);
    stroke(255);
   line(50*i-25,50*j-25, 50,50);
    line(50*i-25,50*j-25, height-50,width-50);
     line(50*i-25,50*j-25, 50,width-50);
      line(50*i-25,50*j-25, height-50,50);
     
   
      }// end nested loop
    
  }//end for loop
  
}//end draw