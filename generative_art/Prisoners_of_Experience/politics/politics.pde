// changing only start, end loops, spacing (and box size) will determine figure.
// adjustable only to a point. Starting below zero I believe is the only way to break it.

// cube dimensions
int start = 80;
int end = 400;
int spacing = 35;

// side length of cube
int side_length = (((end - start) / spacing) + 1);

// dimensions of array
int cols = 4;
int rows = side_length * side_length * side_length;

// create the arrays
int[][] c1_array = new int[cols][rows]; // REPUBLICAN
int[][] c2_array = new int[cols][rows]; // DEMOCRAT

// colors 
int x_increment = 255 / side_length; // dividing color scale (0-255) evenly between cube sides
int color_value = x_increment; // start with the initial x_increment value

// row_position of 2D array
int row_position = 0;

void setup() {
  //size(1200, 1200, P3D);
  size(1200, 800, P3D);
  
  // fill the REPUBLICAN array with coordinates 
  for (int x = start; x <= end; x += spacing) {  
    for (int y = start; y <= end; y += spacing) {
      for (int z = start; z <= end; z += spacing) {
        
        c1_array[0][row_position] = x;
        c1_array[1][row_position] = y;
        c1_array[2][row_position] = z;
        c1_array[3][row_position] = color_value;
        
        // row changes here 
        row_position += 1;
      }
    }
    color_value += x_increment;
    
  }
  
  // create DEMOCRAT array
  for (int i = 0; i < rows; i++) {
    c2_array[0][i] = (-1 * c1_array[0][i]);
    c2_array[1][i] = (-1 * c1_array[1][i]);
    c2_array[2][i] = (-1 * c1_array[2][i]);
    c2_array[3][i] = c1_array[3][i];
  }
}


void draw() {
  background(0,0,0);
  translate(width / 2, height / 2, 0);
  rotateX(frameCount * 0.003);
  rotateY(frameCount * 0.003);
  rotateZ(frameCount * 0.003);
  
  // REPUBLICANS
  for (int i = 0; i < rows; i++) {
   
    int x = c1_array[0][i];
    int y = c1_array[1][i];
    int z = c1_array[2][i];
    int red_value = c1_array[3][i];
    
    pushMatrix();
    translate(x, y, z);
    //rotateX(frameCount * 0.01);
    //rotateY(frameCount * 0.01);
    //rotateZ(frameCount * 0.01);
    fill(red_value,0,0);
    //fill(255,0,0);
    box(25);
    popMatrix();
  }
  
  // DEMOCRATS
  for (int i = 0; i < rows; i++) {
    
    int x = c2_array[0][i];
    int y = c2_array[1][i];
    int z = c2_array[2][i];
    int blue_value = c2_array[3][i];
    
    pushMatrix();
    translate(x, y, z);
    //rotateX(frameCount * 0.01);
    //rotateY(frameCount * 0.01);
    //rotateZ(frameCount * 0.01);
    fill(0,0,blue_value);
    //fill(0,0,255);
    box(25);
    popMatrix();
  }
  
  //saveFrame("output/politics_####.png");
}

//int color_function(int row) {
//  for 
  
//}
