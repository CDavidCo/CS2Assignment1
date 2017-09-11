float yeahboi, noboi;
float yeh, nah;
float what, where, why;
float what2, where2, why2;

void setup(){
  fullScreen();
background(40);
}// end setup

void draw(){
  strokeWeight(2);
stroke(what, where, why);
noFill();
 ellipse(yeh,nah,yeahboi,noboi);
 stroke(what2, where2, why2);
 ellipse(yeh+5,nah+5,yeahboi,noboi);
 
 yeahboi+=10;
 noboi+=10;
  what+=1;
 where+=2;
 why+=10;
 what2+=10;
 where2+=2;
 why2+=1;
  
}// end draw