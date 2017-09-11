float angle = 20;
float treeSize = 120;
float divisor = 0.82;
float maxRandomBranchSize = 0.08;
float maxRandomAngle = 30;
float maxLevel = 18;


void setup()
{
 // size(640, 480); 
  fullScreen();
  drawTree(width / 2, height);
  fill(54,113, 102);
  textAlign(CENTER);
  textSize(75);
  text("The Putney School: Fractal Tree" ,width/2,height/8);
    textSize(30);
  text("by David Cohen" ,width/2,height/8+50);
}


void drawTree(float x, float y)
{
  pushMatrix();
  pushStyle();
  background(255);
  translate(x, y);
  drawBranch(1);
  popStyle();
  popMatrix();
}

void drawBranch(int level)
{
  if (level > maxLevel) return;
  float branchSize = -treeSize * pow(divisor + random(maxRandomBranchSize * 2.) - maxRandomBranchSize, level);
  stroke(54,113, 102);
  strokeWeight(.8);
  
   if(level <= 6){
  strokeWeight(4);
  }
  
  line(0,0,0,branchSize);
  
  if(level >= 6){
  ellipse(0,branchSize,2,10);
  }
  
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