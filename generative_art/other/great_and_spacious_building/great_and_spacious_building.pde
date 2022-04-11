// designed for odd number of rows


side s = new side(0,180,0,180,20,20.0,4,0); // 9 rows
float[][] data = new float[s.cols][s.rows];
float[] column_increment_array = new float[s.column_increment];

void setup() {
  
  size(1200, 800, P3D);
  
 
  
  
  for (int x = s.xstart; x < s.xend; x += s.spacing) { 
    s.ycount = 0;
    for (int y = s.ystart; y < s.yend; y += s.spacing) {
      
      // determine where we are
      // X
      //if ((x == s.xstart) || (x == s.xend)) {
        
      //}
      
      // Y
      if (y == s.ystart) {
        s.box_size = 20;
        s.set_y_neutral();
        
      }
      // decrease box size after ystart
      if (y == s.ystart + s.spacing) {
        s.set_y_decrease();
        s.ycount = 0;
        
      }
      // increase box size after halfway between ystart and yend
      if (y == (s.ystart + (s.side_length/2 * s.spacing) + s.spacing)) {
        s.set_y_increase();
        s.ycount = 0;
      }
      
      
      
      
      // Logic for box size
      if (s.y_decrease) {
        // decrease s.box_size by square root of s.box_size
        s.box_size = s.box_size - sqrt(s.box_size);
        // save the exact increment for when we are increasing again.
        column_increment_array[s.ycount] = sqrt(s.box_size);

        data[3][s.row_position] = s.box_size;
      }
      
      else if (s.y_increase) {
        s.box_size = s.box_size + sqrt(s.box_size);
        data[3][s.row_position] = s.box_size;
      }
      else {
        data[3][s.row_position] = s.box_size;
      }
      
      // add points to the array
      data[0][s.row_position] = x;
      //println(x);
      data[1][s.row_position] = y;
      //println(y);
      data[2][s.row_position] = 0;
      //println(data[2][s.row_position]);
     
      
     
      s.row_position += 1;
      s.ycount += 1;
      
    }
  }
}

void draw() {
  background(0,0,0);
  translate(width / 2, height / 2, 0);
  
  for (int i = 0; i < s.rows; i++) {
    float x = data[0][i];
    float y = data[1][i];
    float z = data[2][i];
    float box_size = data[3][i];

    
    pushMatrix();
    translate(x, y, z);
    //fill(255,0,0);
    box(box_size);
    popMatrix();
  }
}


class side {
   int xstart, xend, ystart, yend, spacing, side_length, cols, rows, row_position, column_increment, ycount;
   float box_size;
  
   boolean y_decrease = false;
   boolean y_increase = false;
   
   side (int c_xstart, int c_xend, int c_ystart, int c_yend, int c_spacing, float c_box_size, int c_cols, int c_row_position) {
     xstart = c_xstart;
     xend = c_xend;
     ystart = c_ystart;
     yend = c_yend;
     spacing = c_spacing;
     box_size = c_box_size;
     side_length = (((xend - xstart) / spacing));
     cols = c_cols;
     rows = ((side_length) * (side_length));
     row_position = c_row_position;
     column_increment = ((side_length / 2) + 1);
     ycount = 0;
   }
   
   void set_y_decrease() {
      y_decrease = true;
      y_increase = false;
   }
   
   void set_y_increase() {
     y_decrease = false; 
     y_increase = true;
   }
   
   void set_y_neutral() {
     y_decrease = false;
     y_increase = false;
   }
}
