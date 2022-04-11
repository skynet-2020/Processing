

// Random NOISE CUBES
int p_cols = 3;
int p_rows = 5000;
int center_distance = 300;


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
    p_array[1][i] = y; 
    p_array[2][i] = z; 

  }  
  
  // go through and get rid of boxes that are close to the center.
  for (int i = 0; i < p_rows; i++) {
   
    float x = p_array[0][i];
    float y = p_array[1][i];
    float z = p_array[2][i];
    
    if (((x < (width/2 + center_distance)) && (x > (width/2 - center_distance))) && ((y < (height/2 + center_distance)) && (y > (height/2 - center_distance))) && ((z < (0 + center_distance)) && (z > (0 - center_distance))))  {
      println(x);
      println(y);
      println(z);
      p_array[0][i] = x + 400;
      p_array[1][i] = y + 400;
      p_array[2][i] = z + 400;
    }
    
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
    fill(85,0,0);
    //fill(0,0,0);
    stroke(0,0,0);
    //stroke(255,255,255);
    box((float) (10 + (Math.sin(frameCount / 50.0)) * 15));
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
  
  //saveFrame("output/idaho_####.png");

}

// TODO Create little clusters every so often. Of 2 - 10 cubes arranged in some way.
// TODO create a modified cube in the center. Only the lines, not the walls. Signifies openness.
// TODO Idaho 2022 -- pulse the cubes
