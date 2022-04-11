

// Random NOISE CUBES
int p_cols = 3;
int p_rows = 3000;


// create the array
float[][] p_array = new float[p_cols][p_rows];


void setup() {
  //size(1200, 1200, P3D);
  size(1200, 800, P3D);
  
  
  
  // Random Noise Cubes
  for (int i = 0; i < p_rows; i++) {
    float x = random(0, 800);
    float z = random(0, 800);
    float y = random(0, 800);
    
    float a = random(-2,3);
    float b = random(-2,3);
    float c = random(-2,3);
    if (a > 0) {
      x = x * -1;
    }
    if (b > 0) {
      y = y * -1;
    }
    if (c >0) {
      z = z * -1;
    }
    
    p_array[0][i] = x;
    println(x);
    p_array[1][i] = y; 
    println(y);
    p_array[2][i] = z; 
    println(z);

  }  
}


void draw() {
  background(0,0,0);
  translate(width / 2, height / 2, 0);
  //rotateX(frameCount * 0.001);
  rotateY(frameCount * 0.003);
  //rotateZ(frameCount * 0.005);
  
  
   //Noisy cubes
  for (int i = 0; i < p_rows; i++) {
   
    float x = p_array[0][i];
    float y = p_array[1][i];
    float z = p_array[2][i];
    
    pushMatrix();
    translate(x, y, z);
    //fill(85,0,0);
    fill(0,0,0);
    stroke(255,255,255);
    box((float) (10 + (Math.sin(frameCount / 1000.0)) * 15));
    popMatrix();
  }
  
  // ME
  pushMatrix();
  //fill(11,11,69);
  fill(255,255,255);
  //stroke(255,255,255);
  stroke(0,0,0);
  box(100);
  popMatrix();

}

// TODO Create little clusters every so often. Of 2 - 10 cubes arranged in some way.
// TODO create a modified cube in the center. Only the lines, not the walls. Signifies openness.
// TODO Idaho 2022 -- pulse the cubes
