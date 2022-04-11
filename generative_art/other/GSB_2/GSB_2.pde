

side s = new side(0,180,0,180,20,20.0, 4,0,0.61); // 9 rows
float[][] data = new float[s.cols][s.rows*6];






void setup() {
  
  size(1200, 800, P3D);
  
  // fill the array with data
  
  // x,y
  for (int x = s.astart; x < s.aend; x += s.spacing) { 
    s.b_count = 0;
    s.a_rules();
    for (int y = s.bstart; y < s.bend; y += s.spacing) {
      //println(s.a_count);
      //println(s.b_count);
      
      s.b_rules();
     
      // fill the a,b,z coordinate
      data[0][s.row_position] = x;
      data[1][s.row_position] = y;
      data[2][s.row_position] = s.astart;
      data[3][s.row_position] = s.b_boxsize; 
      
      data[0][s.row_position + 1] = x;
      data[1][s.row_position + 1] = y;
      data[2][s.row_position + 1] = s.aend;
      data[3][s.row_position + 1] = s.b_boxsize;
      
      s.b_count += 1;
      s.row_position += 2;
    }
    s.a_count += 1;
  }
  
  // y,z
  for (int y = s.astart; y < s.aend; y += s.spacing) { 
    s.b_count = 0;
    s.a_rules();
    for (int z = s.bstart; z < s.bend; z += s.spacing) {
      //println(s.a_count);
      //println(s.b_count);
      
      s.b_rules();
     
      // fill the a,b,z coordinate
      data[0][s.row_position] = y;
      data[1][s.row_position] = s.astart;
      data[2][s.row_position] = z;
      data[3][s.row_position] = s.b_boxsize; 
      
      // fill the a,b,z coordinate
      data[0][s.row_position + 1] = y;
      data[1][s.row_position + 1] = s.aend;
      data[2][s.row_position + 1] = z;
      data[3][s.row_position + 1] = s.b_boxsize; 
      
      s.row_position += 1;
      s.b_count += 1;
      
    }
    s.a_count += 1;
  }
  
}

void draw() {
  background(0,0,0);
  translate(width / 2, height / 2, 0);
  rotateX(frameCount * 0.003);
  rotateY(frameCount * 0.003);
  rotateZ(frameCount * 0.003);
  
  for (int i = 0; i < s.rows * 5; i++) {
    float a = data[0][i];
    float b = data[1][i];
    float z = data[2][i];
    float box_size = data[3][i];

    
    pushMatrix();
    translate(a, b, z);
    //fill(255,0,0);
    box(box_size);
    popMatrix();
  }
}

class side {
   int astart, aend, bstart, bend, spacing, side_length, cols, rows, row_position, column_increment, a_count, b_count;
   float original_boxsize, a_boxsize, b_boxsize, a_shift_constant;
   float[] b_prev_boxsizes = new float[4];
   float[] a_prev_boxsizes = new float[4];
   
   side (int c_astart, int c_aend, int c_bstart, int c_bend, int c_spacing, float c_boxsize, int c_cols, int c_row_position, float c_a_shift_constant) {
     astart = c_astart;
     aend = c_aend;
     bstart = c_bstart;
     bend = c_bend;
     spacing = c_spacing;
     original_boxsize = c_boxsize;
     cols = c_cols;
     row_position = c_row_position;
     a_shift_constant = c_a_shift_constant;
     
     side_length = (((aend - astart) / spacing));
     rows = ((side_length) * (side_length));
     
 
     a_count = 0;
     b_count = 0;
     a_boxsize = original_boxsize;
     b_boxsize = original_boxsize;
     
   }
   
   void a_rules() {
     if ((a_count == 0) || (a_count == side_length - 1)) {
       a_boxsize = original_boxsize;
     }
     
     else {
       a_shift();
     }
   }
   
   void b_rules() {
     
     if ((b_count == 0) || (b_count == side_length - 1)) {
       b_boxsize = a_boxsize;
     }
     else {
       // function determining box sizes for bcount 1-7
       b_shift();
       
     }
   }
   
   
   void a_shift() {
     if (a_count == 1) {
       a_boxsize = a_boxsize - sqrt(a_boxsize*a_shift_constant);
       s.a_prev_boxsizes[0] = a_boxsize;
       println(a_prev_boxsizes[0]);
     }
     if (a_count == 2) {
       a_boxsize = a_boxsize - sqrt(a_boxsize*a_shift_constant);
       s.a_prev_boxsizes[1] = a_boxsize;
       println(a_prev_boxsizes[1]);
       
     }
     if (a_count == 3) {
       a_boxsize = a_boxsize - sqrt(a_boxsize*a_shift_constant);
       s.a_prev_boxsizes[2] = a_boxsize;
       println(a_prev_boxsizes[2]);
     }
     if (a_count == 4) {
       a_boxsize = a_boxsize - sqrt(a_boxsize*a_shift_constant);
       s.a_prev_boxsizes[3] = a_boxsize;
       println(a_prev_boxsizes[3]);
     }
     if (a_count == 5) {
       float temp = s.a_prev_boxsizes[2];
       a_boxsize = a_boxsize + sqrt(temp*a_shift_constant);
       println(a_boxsize);
       
     }
     if (a_count == 6) {
       float temp = s.a_prev_boxsizes[1];
       a_boxsize = a_boxsize + sqrt(temp*a_shift_constant);
       
     }
     if (a_count == 7) {
       float temp = s.a_prev_boxsizes[0];
       a_boxsize = a_boxsize + sqrt(temp*a_shift_constant);
     }
   }
   
   void b_shift() {
     
     if (b_count == 1) {
       b_boxsize = b_boxsize - sqrt(b_boxsize*a_shift_constant);
       s.b_prev_boxsizes[0] = b_boxsize;
       //println(prev_boxsizes[0]);
     }
     if (b_count == 2) {
       b_boxsize = b_boxsize - sqrt(b_boxsize*a_shift_constant);
       s.b_prev_boxsizes[1] = b_boxsize;
       //println(prev_boxsizes[1]);
       
     }
     if (b_count == 3) {
       b_boxsize = b_boxsize - sqrt(b_boxsize*a_shift_constant);
       s.b_prev_boxsizes[2] = b_boxsize;
       //println(prev_boxsizes[2]);
     }
     if (b_count == 4) {
       b_boxsize = b_boxsize - sqrt(b_boxsize*a_shift_constant);
       s.b_prev_boxsizes[3] = b_boxsize;
       //println(prev_boxsizes[0]);
     }
     if (b_count == 5) {
       float temp = s.b_prev_boxsizes[2];
       //println(temp);
       b_boxsize = b_boxsize + sqrt(temp*a_shift_constant);
       
     }
     if (b_count == 6) {
       float temp = s.b_prev_boxsizes[1];
       b_boxsize = b_boxsize + sqrt(temp*a_shift_constant);
       
     }
     if (b_count == 7) {
       float temp = s.b_prev_boxsizes[0];
       b_boxsize = b_boxsize + sqrt(temp*a_shift_constant);
     }
   }
}
