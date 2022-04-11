int cols = 3;
int rows = 200;

int increment = 40;

int x1 = 0;
int y1 = 0;
int z1 = 0;

int x2 = 0;
int y2 = 0;
int z2 = 0;

int x3 = 0;
int y3 = 0;
int z3 = 0;

int x4 = 0;
int y4 = 0;
int z4 = 0;

int x5 = 0;
int y5 = 0;
int z5 = 0;


int[][] test_array1 = new int[cols][rows];
int[][] test_array2= new int[cols][rows];
int[][] test_array3 = new int[cols][rows];
int[][] test_array4 = new int[cols][rows];
int[][] test_array5 = new int[cols][rows];
int[][] test_array6 = new int[cols][rows];

void setup() {
  //size(1200, 1200, P3D);
  size(1400, 1000, P3D);
  
  // 1
  for (int i = 0; i < rows; i++) {
    
    test_array1[0][i] = x1;
    test_array1[1][i] = y1;
    test_array1[2][i] = z1;
    
    int movement = int(random(1,7));
    println(movement);
    
    if (movement == 1) {
      x1 = x1 + increment; 
    }
    if (movement == 2) {
      x1 = x1 - increment;
    }
    
    if (movement == 3) {
      y1 = y1 + increment; 
    }
    if (movement == 4) {
      y1 = y1 - increment;
    }
    
    if (movement == 5) {
      z1 = z1 + increment; 
    }
    if (movement == 6) {
      z1 = z1 - increment;
    }
  }
  
  // 2
  for (int i = 0; i < rows; i++) {
    
    test_array2[0][i] = x2;
    test_array2[1][i] = y2;
    test_array2[2][i] = z2;
    
    int movement = int(random(1,7));
    println(movement);
    
    if (movement == 1) {
      x2 = x2 + increment; 
    }
    if (movement == 2) {
      x2 = x2 - increment;
    }
    
    if (movement == 3) {
      y2 = y2 + increment; 
    }
    if (movement == 4) {
      y2 = y2 - increment;
    }
    
    if (movement == 5) {
      z2 = z2 + increment; 
    }
    if (movement == 6) {
      z2 = z2 - increment;
    }
  }
  
  for (int i = 0; i < rows; i++) {
    
    test_array3[0][i] = x3;
    test_array3[1][i] = y3;
    test_array3[2][i] = z3;
    
    int movement = int(random(1,7));
    println(movement);
    
    if (movement == 1) {
      x3 = x3 + increment; 
    }
    if (movement == 2) {
      x3 = 3 - increment;
    }
    
    if (movement == 3) {
      y3 = y3 + increment; 
    }
    if (movement == 4) {
      y3 = y3 - increment;
    }
    
    if (movement == 5) {
      z3 = z3 + increment; 
    }
    if (movement == 6) {
      z3 = z3 - increment;
    }
  }
  
  for (int i = 0; i < rows; i++) {
    
    test_array4[0][i] = x4;
    test_array4[1][i] = y4;
    test_array4[2][i] = z4;
    
    int movement = int(random(1,7));
    println(movement);
    
    if (movement == 1) {
      x4 = x4 + increment; 
    }
    if (movement == 2) {
      x4 = x4 - increment;
    }
    
    if (movement == 3) {
      y4 = y4 + increment; 
    }
    if (movement == 4) {
      y4 = y4 - increment;
    }
    
    if (movement == 5) {
      z4 = z4 + increment; 
    }
    if (movement == 6) {
      z4 = z4 - increment;
    }
  }
  
  for (int i = 0; i < rows; i++) {
    
    test_array5[0][i] = x5;
    test_array5[1][i] = y5;
    test_array5[2][i] = z5;
    
    int movement = int(random(1,7));
    println(movement);
    
    if (movement == 1) {
      x5 = x5 + increment; 
    }
    if (movement == 2) {
      x5 = x5 - increment;
    }
    
    if (movement == 3) {
      y5 = y5 + increment; 
    }
    if (movement == 4) {
      y5 = y5 - increment;
    }
    
    if (movement == 5) {
      z5 = z5 + increment; 
    }
    if (movement == 6) {
      z5 = z5 - increment;
    }
  }
}

void draw() {
  background(0,0,0);
  translate(width / 2, height / 2, 0);
  rotateX(radians(45));
  //rotateY(frameCount * 0.003);
  //rotateZ(frameCount * 0.005);
  
  
  
  // cluster 1
  for (int i = 0; i < rows; i++) {
    
    rotateX(radians(45));
    float x = test_array1[0][i];
    float y = test_array1[1][i];
    float z = test_array1[2][i];
    
    z += 0.06;
    
    pushMatrix();
    translate(x, y, z);
    fill(104,172,163);
    //fill(0,0,0);
    stroke(0,0,0);
    //stroke(255,255,255);
    box(15);
    //box((float) (10 + (Math.sin(frameCount / 50.0)) * 15));
    popMatrix();
  }
  
  // cluster 2
  for (int i = 0; i < rows; i++) {
    
   
    float x = test_array2[0][i];
    float y = test_array2[1][i];
    float z = test_array2[2][i];
    
    z += 0.06;
    
    pushMatrix();
    translate(x, y, z);
    fill(245,115,113);
    //fill(0,0,0);
    stroke(0,0,0);
    //stroke(255,255,255);
    box(15);
    //box((float) (10 + (Math.sin(frameCount / 50.0)) * 15));
    popMatrix();
  }
  
  // cluster 3
  for (int i = 0; i < rows; i++) {
    
   
    float x = test_array3[0][i];
    float y = test_array3[1][i];
    float z = test_array3[2][i];
    
    z += 0.06;
    
    pushMatrix();
    translate(x, y, z);
    fill(89,116,151);
    //fill(0,0,0);
    stroke(0,0,0);
    //stroke(255,255,255);
    box(15);
    //box((float) (10 + (Math.sin(frameCount / 50.0)) * 15));
    popMatrix();
  }
  
  // cluster 4
  for (int i = 0; i < rows; i++) {
    
   
    float x = test_array4[0][i];
    float y = test_array4[1][i];
    float z = test_array4[2][i];
    
    z += 0.06;
    
    pushMatrix();
    translate(x, y, z);
    fill(212,61,138);
    //fill(0,0,0);
    stroke(0,0,0);
    //stroke(255,255,255);
    box(15);
    //box((float) (10 + (Math.sin(frameCount / 50.0)) * 15));
    popMatrix();
  }
  
  // cluster 5
  for (int i = 0; i < rows; i++) {
    
   
    float x = test_array5[0][i];
    float y = test_array5[1][i];
    float z = test_array5[2][i];
    
    z += 0.06;
    
    pushMatrix();
    translate(x, y, z);
    fill(84,42,113);
    //fill(0,0,0);
    stroke(0,0,0);
    //stroke(255,255,255);
    box(15);
    //box((float) (10 + (Math.sin(frameCount / 50.0)) * 15));
    popMatrix();
  }
  
  //// ME
  //pushMatrix();
  ////fill(11,11,69);
  //fill(255,255,255);
  ////stroke(255,255,255);
  //stroke(0,0,0);
  //box(100);
  //popMatrix();

}
