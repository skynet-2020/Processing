int off_max = 300;

void setup() {
  //size(1200, 1200, P3D);
  size(1000, 980, P3D);
}

void draw () {
  background(0);
  translate(width / 2, height / 2, -off_max);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  rotateZ(frameCount * 0.01);
  
  
  for (int x = -off_max; x <= off_max; x += 50) {
    for(int y = -off_max; y <= off_max; y += 50) {
      for (int z = -off_max; z <= off_max; z += 50) {
      pushMatrix();
      translate(x, y, z);
      //rotateX(frameCount * 0.01);
      //rotateY(frameCount * 0.01);
      //rotateZ(frameCount * 0.01);
      fill(colorFromOffset(x),colorFromOffset(y),colorFromOffset(z));
      //box(30);
      box((float) (20 + (Math.sin(frameCount / 20.0)) * 15));
      popMatrix();
      }
    }
  }
}

int colorFromOffset(int offset) {
  return (int) ((offset + off_max) / (2.8 * off_max) * 255); 
}
