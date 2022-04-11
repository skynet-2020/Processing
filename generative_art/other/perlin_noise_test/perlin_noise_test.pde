


int cols = 3;
int rows = 3300; 
float x_offset = 0;
float y_offset = 10000;
float z_offset = 100;

// create the arrays
float[][] test_array = new float[cols][rows];

void setup() {
  //size(1200, 1200, P3D);
  size(1400, 1000, P3D);
  
  for (int i = 0; i < rows; i++) {
    float x = map(noise(x_offset), 0, 1, 0, width/1.8);
    float y = map(noise(y_offset), 0, 1, 0, height/1.8);
    float z = map(noise(z_offset), 0, 1, 0, height);
    //float y = 0.0;
    //float z = 0.0;
    
    println(x);
    println(y);
    println(z);
    
    test_array[0][i] = x;
    test_array[1][i] = y;
    test_array[2][i] = z;
    
    x_offset += 0.1;
    y_offset += 0.1;
    z_offset += 0.1;
  }  
}

void draw() {
  background(0);
  translate(width / 4, height / 4, 0);
  //rotateX(frameCount * 0.001);
  rotateY(frameCount * 0.005);
  //rotateZ(frameCount * 0.005);
  
  for (int i = 0; i < rows; i++) {
   
    float x = test_array[0][i];
    float y = test_array[1][i];
    float z = test_array[2][i];
    
    
    pushMatrix();
    translate(x, y, z);
    //rotateX(frameCount * 0.01);
    //rotateY(frameCount * 0.01);
    //rotateZ(frameCount * 0.01);
    //fill(red_value,0,0);
    fill(255,255,255);
    box(10);
    popMatrix();
  }

}
