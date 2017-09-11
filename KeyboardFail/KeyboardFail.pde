float x = 20; 
float y = 20; 
void setup(){
  size(400,400);
} //end setup

void draw(){
  rectMode(CENTER) ;
 
  if(keyCode == 32){
    
    fill(255,255,255);
    ellipse(x,y, 20,20);   
    x=x+20;
  
}
    
  


  if(keyCode == 65){
    fill(50,50,0);
    ellipse(x,y, 20,20);
    x=x+20;
    println(x);
  }
  
  
  if(keyCode == 66){
   fill(50,0,50);
    ellipse(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 67){
   fill(0,50,50);
    ellipse(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 68){
     fill(0,50,50);
    ellipse(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 69){
     fill(50,0,0);
    ellipse(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 70){
   fill(0,50,0);
    ellipse(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 71){
   fill(0,0,50);
    ellipse(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 72){
   fill(150,0,0);
    ellipse(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 73){
  fill(0,150,0);
    ellipse(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 74){
    fill(0,0,150);
    ellipse(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 75){
   fill(0,150,150);
    ellipse(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 76){
    fill(150,0,150);
    ellipse(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 77){
    fill(150,150,0);
    ellipse(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 78){
     fill(250,0,0);
    ellipse(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 79){
  fill(0,250,0);
    ellipse(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 80){
    fill(0,0,250);
    ellipse(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 81){
    fill(250,250,0);
    ellipse(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 82){
   fill(0,250,250);
    ellipse(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 83){
    fill(250,0,250);
    ellipse(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 84){
    fill(250,0,250);
    rect(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 85){
    fill(0,250,250);
    rect(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 86){
     fill(0,250,250);
    rect(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 87){
  fill(0,0,0);
    rect(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 88){
    fill(0,250,0);
    rect(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 89){
     fill(250,0,0);
    rect(x,y, 20,20);
    x=x+20;
     
  }
  
  if(keyCode == 90){
  fill(0,0,250);
    rect(x,y, 20,20);
    x=x+20;
     
  }
  if(x == width-20){
    x = 20;
    y+=20;
  }// end if 
}// end draw