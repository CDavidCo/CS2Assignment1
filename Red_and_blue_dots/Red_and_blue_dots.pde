
/* the first block contains statements to initialize
all variables that will be used throughout the program
*/

int x;
float y;
float product;
float odd;


 //most statements will end in a semicolon 

/* the second block is called setup and it contains
statements to be executed only once.
*/

void setup(){


  size(550,550);
  background(0);

  
}// end setup

/* the third section is called draw and every statement x
in draw gets looped through in the order written for ever
and ever and ever 
*/

void draw(){
  background(170);
 
  for(int i=1; i<12; i+=1){
     
    for(int j=1;j<12;j+=1){
      product=i*j;
      
      fill(0,0,255);
    
 
   if(product%==){
      fill(255,0,0);
     }// end if
   
      
  stroke(0);
    ellipse(50*i-25,50*j-25,25,25);

   
      }// end nested loop
    
  }//end for loop
}// end draw