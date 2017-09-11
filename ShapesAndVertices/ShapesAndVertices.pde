float vertexhalll = 300;
float vertexhal = 100;
float vertexhallll = 400;
float vertexhall = 200;


void setup(){
  size(600,600);
background(0);
fill(255,0,0);





beginShape();

  vertex(vertexhalll,vertexhal);
  vertexhalll += 25;
  vertex(vertexhallll,vertexhalll);
    vertexhalll += 25;
  vertex(vertexhalll,vertexhall);
    vertexhalll += 25;
  vertex(vertexhall,vertexhalll);
    vertexhalll += 25;
  
  endShape();
  
}