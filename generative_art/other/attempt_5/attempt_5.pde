// changing only start, end loops, spacing (and box size) will determine figure.


// for loops
int start = 110;
int end = 290;
int spacing = 30;

// side length of cube
int side_length = (((290 - 110) / spacing) + 1);

// dimensions of array
int cols = 3;
int rows = side_length * side_length * side_length;

int[][] c1_array = new int[cols][rows];
int[][] c2_array = new int[cols][rows];

int row_position = 0;


void setup() {
  //size(1200, 1200, P3D);
  size(1000, 980, P3D);
  
  // fill the array with coordinates
  for (int x = start; x <= end; x += spacing) {  
    for (int y = start; y <= end; y += spacing) {
      for (int z = start; z <= end; z += spacing) {
        println(x);
        println(y);
        println(z);
        
        c1_array[0][row_position] = x;
        c1_array[1][row_position] = y;
        c1_array[2][row_position] = z;
        
        
        // row changes here every time
        row_position += 1;
      }
    }
  }
  
  // create other array
  
  
  
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
    
    int x = c1_array[0][i];
    int y = c1_array[1][i];
    int z = c1_array[2][i];
    
    pushMatrix();
    translate(x, y, z);
    box(20);
    popMatrix();
  }
  
  //for (int i = 0; i < rows; i++) {
  //  //int x = myArray[0][i];
  //  //int y = myArray[1][i];
  //  //int z = myArray[2][i];
    
  //  int x = myArray2[i][0];
  //  int y = myArray2[i][1];
  //  int z = myArray2[i][2];
    
  //  pushMatrix();
  //  translate(x, y, z);
  //  box(10);
  //  popMatrix();
  //}
}
