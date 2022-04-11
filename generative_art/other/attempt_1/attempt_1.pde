int off_max = 50;
int iterations = 1000;
//create the origin for the cube
int a = 400;
int b = 400;
int c = 0;
  
int[] random_array = rando_array(iterations);


int[] rando_array(int iterations) {
  int[] x_random = new int[iterations];
  //int[] y_random = new int[100];

  for (int i = 0; i < x_random.length; i++) {
    x_random[i] = int(random(1,4));
    //y_random[i] = int(random(2));
  }
  
  return x_random;
}

void setup() {
  //size(1200, 1200, P3D);
  size(800, 800, P3D);
}

void draw () {
  
  background(0);
  //translate(width / 2, height / 2, -off_max);
  //pushMatrix();
  //translate(a, b, c);
  //popMatrix();
  
  //rotateX(frameCount * 0.001);
  //rotateY(frameCount * 0.001);
  //rotateZ(frameCount * 0.001);
  
  
  for (int i = 0; i < iterations; i++) {
    
    pushMatrix();
    translate(a, b, c);
    
    
    for (int x = -off_max; x <= off_max; x += 50) {
      for(int y = -off_max; y <= off_max; y += 50) {
        for (int z = -off_max; z <= off_max; z += 50) {
          pushMatrix();
          translate(x, y, z);
          box(30);
          popMatrix();
        }
      }
    }
    
    popMatrix();
  
  
    if (random_array[i] == 1) {
      a = a + 20;
    }
    
    if (random_array[i] == 2) {
      a = a - 20;
    }
    if (random_array[i] == 3) {
      b = b + 20;
    }
    
    if (random_array[i] == 4) {
      b = b - 20;
    }
    
    c += 1;
  }
}
