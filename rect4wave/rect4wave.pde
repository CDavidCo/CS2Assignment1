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
  rectMode (CENTER);
stroke(what, where, why);
noFill();
 rect(yeh,nah,yeahboi,noboi);
 stroke(what2, where2, why2);
 stroke(what, where, why);
 rect(width,height,yeahboi,noboi);
 stroke(what2, where2, why2);
 rect(width,0,yeahboi,noboi);
 stroke(what2, where2, why2);
 rect(0,height,yeahboi,noboi);
 
 yeahboi+=5;
 noboi+=5;
  what+=1;
 where+=2;
 why+=5;
 what2+=5;
 where2+=2;
 why2+=1;
  
}// end draw