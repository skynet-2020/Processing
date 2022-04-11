int off_max = 1600;

void setup() {
  //size(1200, 1200, P3D);
  size(1200, 800, P3D);
}

void draw () {
  background(0);
  translate(width / 2, height / 2, -1600);
  rotateX(frameCount * 0.001);
  rotateY(frameCount * 0.001);
  rotateZ(frameCount * 0.001);
  
  
  for (int x = -off_max; x <= off_max; x += 90) {
    for(int y = -off_max; y <= off_max; y += 90) {
      for (int z = -off_max; z <= off_max; z += 90) {
      pushMatrix();
      translate(x, y, z);
      rotateX(frameCount * 0.01);
      rotateY(frameCount * 0.01);
      rotateZ(frameCount * 0.01);
      //fill(colorFromOffset(x),colorFromOffset(y),colorFromOffset(z));
      fill(255,255,255);
      box(30);
      //box((float) (20 + (Math.sin(frameCount / 20.0)) * 15));
      popMatrix();
      }
    }
  }
  
  //saveFrame("output/all_of_us_####.png");
}

int colorFromOffset(int offset) {
  return (int) ((offset + off_max) / (2.8 * off_max) * 255); 
}

//https://www.youtube.com/watch?v=iJh8dvEt03E
