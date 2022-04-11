

void setup() {
 size(1200, 1200, P3D);
}

void draw () {
 
  background(0);
  
  pushMatrix();
  translate(width / 2, height / 2, 0);
  
  rotateX(frameCount * 0.005);
  rotateY(frameCount * 0.005);
  rotateZ(frameCount * 0.005);
  fill(0,0,252);
  box(200);
  popMatrix();
  
}
