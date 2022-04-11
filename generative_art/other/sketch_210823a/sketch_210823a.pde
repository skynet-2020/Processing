

void setup() {
  size(950, 950);
  smooth();
  noLoop();
}
 
void draw() {
  background(255);
  strokeWeight(12);
  translate(width/2, height-20);
  zweig(0);
}
 
void zweig(int tiefe) {
  stroke(95,75,65);
  line(0,0,0, -height/10);
  translate(0, -height/10);
  rotate(random(-0.1, 0.1));
  if (random(1.0) < 0.6) {         
      rotate(0.3);
      scale(0.75);
      pushMatrix();
      zweig(tiefe + 1);
      //popMatrix();
      //rotate(-0.7);
      //pushMatrix();
      //zweig(tiefe + 1);
      //popMatrix();
  }
}
 
void mouseReleased() {
  redraw();
}
