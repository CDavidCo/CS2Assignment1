

void setup(){
  size(800,800);
  background(150);

}

void draw(){
for (int i = 0; i < 5000; i+=3) {
  for (int j = 0; j < 800; j+=70) {
    noStroke();
    fill(#D30F0F);
  rect(i,j,10,10);

}}
for (int x = 0; x < 5000; x+=3) {
  for (int z = 10; z < 800; z+=70) {
    noStroke();
    fill(#FAB11E);
  rect(x,z,10,10);

}}
for (int g = 0; g < 5000; g+=3) {
  for (int h = 20; h < 800; h+=70) {
    noStroke();
    fill(#F2FA1E);
  rect(g,h,10,10);

}}
for (int q = 0; q < 5000; q+=3) {
  for (int w = 30; w < 800; w+=70) {
    noStroke();
    fill(#F2FA1E);
  rect(q,w,10,10);

}}
for (int e = 0; e < 5000; e+=3) {
  for (int r = 40; r < 800; r+=70) {
    noStroke();
    fill(#1EFA44);
  rect(e,r,10,10);

}}
for (int a = 0; a < 5000; a+=3) {
  for (int s = 50; s < 800; s+=70) {
    noStroke();
    fill(#1E9CFA);
  rect(a,s,10,10);

}}
for (int t = 0; t < 5000; t+=3) {
  for (int y = 60; y < 800; y+=70) {
    noStroke();
    fill(#B71EFA);
  rect(t,y,10,10);

}}

}