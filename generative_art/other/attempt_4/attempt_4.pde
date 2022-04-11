int cols = 3;
int rows = 4;
int[][] myArray = {  {236, 189, 189},
                     {210,  80, 189},
                     {216,   0, 189},
                     {136,   0, 200}
                   };

int[][] myArray2 = {  {-236, -189, -189},
                     {-210,  -80, -189},
                     {-216,   0, -189},
                     {-136, 0, -200}  };



void setup() {
  //size(1200, 1200, P3D);
  size(1000, 980, P3D);
}


void draw() {
  background(0);
  translate(width / 2, height / 2, 0);
  rotateX(frameCount * 0.001);
  rotateY(frameCount * 0.005);
  rotateZ(frameCount * 0.005);
  
  for (int i = 0; i < rows; i++) {
    //int x = myArray[0][i];
    //int y = myArray[1][i];
    //int z = myArray[2][i];
    
    int x = myArray[i][0];
    int y = myArray[i][1];
    int z = myArray[i][2];
    
    pushMatrix();
    translate(x, y, z);
    box(10);
    popMatrix();
  }
  
  for (int i = 0; i < rows; i++) {
    //int x = myArray[0][i];
    //int y = myArray[1][i];
    //int z = myArray[2][i];
    
    int x = myArray2[i][0];
    int y = myArray2[i][1];
    int z = myArray2[i][2];
    
    pushMatrix();
    translate(x, y, z);
    box(10);
    popMatrix();
  }
}
