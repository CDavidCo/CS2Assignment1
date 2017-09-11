float angle = 20;
float treeSize = 180;
float maxLevel = 21; 
float waveColor = 185;


void setup()
{
  fullScreen();
  drawTree(width/2, height-80);
 
 
}


void drawTree(float x, float y)
{
  pushMatrix();
  pushStyle();
  background(0);
  translate(x, y);
  drawBranch(1);
  popStyle();
  popMatrix();
}

void drawBranch(int level)
{
  if (level > maxLevel) return;
  float branchSize = -treeSize * pow(.82 + random(0 * 2.) - 0, level);

  strokeWeight(.8);
 
if(level ==1){
   fill(waveColor-149,waveColor-40,waveColor,150);
}// end if
  if(level ==2){
   fill(waveColor-144,waveColor-35,waveColor+5,150);
}// end if
if(level ==3){
   fill(waveColor-139,waveColor-30,waveColor+10,150);
}// end if
if(level ==4){
   fill(waveColor-134,waveColor-25,waveColor+15,150);
}// end if
if(level ==5){
   fill(waveColor-124,waveColor-20,waveColor+20,150);
}// end if
if(level ==6){
   fill(waveColor-119,waveColor-15,waveColor+25,150);
}// end if
  if(level ==7){
   fill(waveColor-114,waveColor-10,waveColor+30,150);
}// end if
if(level ==8){
   fill(waveColor-109,waveColor-5,waveColor+35,150);
}// end if
if(level ==9){
   fill(waveColor-104,waveColor,waveColor+40,150);
}// end if
if(level ==10){
   fill(waveColor-99,waveColor+5,waveColor+45,150);
}// end if
if(level ==11){
   fill(waveColor-94,waveColor+10,waveColor+50,150);
}// end if
  if(level ==12){
   fill(waveColor-89,waveColor+15,waveColor+55,150);
}// end if
if(level ==13){
   fill(waveColor-84,waveColor+20,waveColor+60,150);
}// end if
if(level ==14){
   fill(waveColor-79,waveColor+25,waveColor+65,150);
}// end if
if(level ==15){
   fill(waveColor-74,waveColor+30,waveColor+70,150);
}// end if
if(level ==16){
   fill(waveColor-69,waveColor+35,waveColor+75,150);
}// end if
  if(level ==17){
   fill(waveColor-64,waveColor+40,waveColor+80,150);
}// end if
if(level ==18){
   fill(waveColor-59,waveColor+45,waveColor+85,150);
}// end if
if(level ==18){
   fill(waveColor-59,waveColor+45,waveColor+85,150);
}// end if
if(level ==19){
   fill(waveColor-54,waveColor+50,waveColor+90,150);
}// end if
if(level ==20){
   fill(waveColor-49,waveColor+55,waveColor+95,150);
}// end if
if(level ==21){
   fill(255);
}// end if



  noStroke();
  
  ellipse(0,0,branchSize,branchSize);
  
  
  
  translate(0,branchSize);
  float tempAngle = angle;
  rotate(radians(-tempAngle));
  drawBranch(level + 1);
  rotate(radians(tempAngle));
  tempAngle = angle;
  rotate(radians(tempAngle));
  drawBranch(level + 1);
  rotate(radians(-tempAngle));
  translate(0,-branchSize);
  
}