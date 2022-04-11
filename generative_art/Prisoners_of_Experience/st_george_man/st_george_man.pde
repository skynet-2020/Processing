// COLORS
// color1 = fill(104,172,163) #68ACA3
// color2 = fill(245,115,113) #F57371
// color3 = fill(89,116,151) #597497
// color4 = fill(212,61,138) #D43D8A
// color5 = fill(84,42,113) #542A71

// Random NOISE CUBES
int c1_cols = 3;
int c1_rows = 7000;

int c2_cols = 3;
int c2_rows = 2500;

int c3_cols = 3;
int c3_rows = 8000;

int c4_cols = 3;
int c4_rows = 7000;


// create the array
float[][] c1_array = new float[c1_cols][c1_rows];
float[][] c2_array = new float[c2_cols][c2_rows];
float[][] c3_array = new float[c3_cols][c3_rows];
float[][] c4_array = new float[c4_cols][c4_rows];





void setup() {
 size(1200, 800, P3D);
 
  // XXL square
   for (int i = 0; i < c4_rows; i++) {
    float x = random(-200, 1400);
    float z = -1000;
    float y = random(-400,1200);
    
    c4_array[0][i] = x;
    c4_array[1][i] = y; 
    c4_array[2][i] = z; 
  }
  
  // XL square
   for (int i = 0; i < c3_rows; i++) {
    float x = random(0, 1200);
    float z = -1000;
    float y = random(-200,1000);
    
    c3_array[0][i] = x;
    c3_array[1][i] = y; 
    c3_array[2][i] = z; 
  }
  
  
  // L square
   for (int i = 0; i < c1_rows; i++) {
    //float x = random(-200,1400); // rectangle
    float x = random(200,1000); // sqaure
    float z = -1000;
    float y = random(0, 800); // rectangle
    
    c1_array[0][i] = x;
    c1_array[1][i] = y; 
    c1_array[2][i] = z; 
  }
  
  
  // M square
  for (int i = 0; i < c2_rows; i++) {
    //float x = random(200, 1000); // rectangle
    float x = random(400,800); // sqaure
    float z = -1000;
    float y = random(200, 600); // rectangle
    
    c2_array[0][i] = x;
    c2_array[1][i] = y; 
    c2_array[2][i] = z; 
  }
  
 
 
}

void draw () {
 
  background(0,0,0);
  
  // XXL square
  for (int i = 0; i < c4_rows; i++) {
   
    float x = c4_array[0][i];
    float y = c4_array[1][i];
    float z = c4_array[2][i];
    
    pushMatrix();
    translate(x, y, z);
    fill(212,61,138); // #D43D8A
    stroke(212,61,138);
    box(10);
    popMatrix();
  }
  
  // XL square
  for (int i = 0; i < c3_rows; i++) {
   
    float x = c3_array[0][i];
    float y = c3_array[1][i];
    float z = c3_array[2][i];
    
    pushMatrix();
    translate(x, y, z);
    fill(89,116,151); // #597497
    stroke(89,116,151);
    box(10);
    popMatrix();
  }
  
  
  // large square
  for (int i = 0; i < c1_rows; i++) {
   
    float x = c1_array[0][i];
    float y = c1_array[1][i];
    float z = c1_array[2][i];
    
    pushMatrix();
    translate(x, y, z);
    fill(104,172,163); // #68ACA3
    stroke(104,172,163);
    box(10);
    popMatrix();
    
    //pushMatrix();
    //translate(x, y, z);
    //fill(212,61,138);
    //box(10);
    //popMatrix();
    
    
  }
  
  
  
  // medium square
  for (int i = 0; i < c2_rows; i++) {
   
    float x = c2_array[0][i];
    float y = c2_array[1][i];
    float z = c2_array[2][i];
    
    pushMatrix();
    translate(x, y, z);
    fill(245,115,113); // #F57371
    stroke(245,115,113);
    box(10);
    popMatrix();
   
  }
  
  ////find the bounds here
  //pushMatrix();
  //translate(-150,-50,-1000);
  //box(10);
  //popMatrix();
  
  //pushMatrix();
  //translate(-150,900,-1000);
  //box(10);
  //popMatrix();
  
  //pushMatrix();
  //translate(1350,-50,-1000);
  //box(10);
  //popMatrix();
  
  //pushMatrix();
  //translate(1350,900,-1000);
  //box(10);
  //popMatrix();
  
  
  
  pushMatrix();
  translate(width / 2, height / 2, 0);
  
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  rotateZ(frameCount * 0.01);
  fill(0,0,0);
  stroke(255,255,255);
  box(40);
  popMatrix();
  
  //saveFrame("output/stgeezy_####.png");
  
}

//TODO: play with color, box sizing, num boxes
//TODO: fill all of it
