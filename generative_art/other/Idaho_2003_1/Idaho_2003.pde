
// LARGE CUBE
//  cube dimensions
int l_start = 200;
int l_end = 800;
int l_spacing = 50;

// side length of cube
int l_side_length = (((l_end - l_start) / l_spacing) + 1);

// dimensions of array
int l_cols = 3;
int l_rows = l_side_length * l_side_length * l_side_length;

// MEDIUM CUBE
// dimensions
//  cube dimensions
int m_start = 200;
int m_end = 600;
int m_spacing = 100;

// side length of cube
int m_side_length = (((m_end - m_start) / m_spacing) + 1);

// dimensions of array
int m_cols = 3;
int m_rows = m_side_length * m_side_length * m_side_length;


// SMALL CUBE
// dimensions
//  cube dimensions
int s_start = 200;
int s_end = 600;
int s_spacing = 100;

// side length of cube
int s_side_length = (((s_end - s_start) / s_spacing) + 1);

// dimensions of array
int s_cols = 3;
int s_rows = s_side_length * s_side_length * s_side_length;


// original arrays
int[][] l_array = new int[l_cols][l_rows]; // large cube
int[][] m_array = new int[m_cols][m_rows]; // medium
int[][] s_array = new int[s_cols][s_rows]; // small cube

// copied arrays
int[][] plus_plus_plus = new int[m_cols][m_rows];
int[][] minus_minus_minus = new int[m_cols][m_rows];
int[][] plus_plus_minus = new int[m_cols][m_rows];
int[][] plus_minus_minus = new int[m_cols][m_rows];

int[][] minus_plus_plus = new int[l_cols][l_rows]; // large
int[][] minus_minus_plus = new int[l_cols][l_rows]; // large

int[][] minus_plus_minus = new int[s_cols][s_rows]; // small
int[][] plus_minus_plus = new int[s_cols][s_rows]; // small

// row_position of 2D arrays
int l_row_position = 0;
int m_row_position = 0;
int s_row_position = 0;

// PERLIN NOISE CUBES
int p_cols = 3;
int p_rows = 3000;
float x_offset = 0;
float y_offset = 10000;

// create the array
float[][] p_array = new float[p_cols][p_rows];


void setup() {
  //size(1200, 1200, P3D);
  size(1200, 800, P3D);
  
  // Large Cube 
  for (int x = l_start; x <= l_end; x += l_spacing) {  
    for (int y = l_start; y <= l_end; y += l_spacing) {
      for (int z = l_start; z <= l_end; z += l_spacing) {
        
        l_array[0][l_row_position] = x;
        l_array[1][l_row_position] = y;
        l_array[2][l_row_position] = z;
        
        // row changes here 
        l_row_position += 1;
      }
    }
  }
  
  // Medium Cube 
  for (int x = m_start; x <= m_end; x += m_spacing) {  
    for (int y = m_start; y <= m_end; y += m_spacing) {
      for (int z = m_start; z <= m_end; z += m_spacing) {
        
        m_array[0][m_row_position] = x;
        println(x);
        m_array[1][m_row_position] = y;
        println(y);
        m_array[2][m_row_position] = z;
        println(z);
        
        // row changes here 
        m_row_position += 1;
      }
    }
  }
  
  // Small Cube 
  for (int x = s_start; x <= s_end; x += s_spacing) {  
    for (int y = s_start; y <= s_end; y += s_spacing) {
      for (int z = s_start; z <= s_end; z += s_spacing) {
        
        s_array[0][s_row_position] = x;
        s_array[1][s_row_position] = y;
        s_array[2][s_row_position] = z;
        
        // row changes here 
        s_row_position += 1;
      }
    }
  }
  
  // LARGE CUBES shift coordinates
  for (int i = 0; i < l_rows; i++) {
    // -++
    minus_plus_plus[0][i] = (-1 * l_array[0][i]);
    minus_plus_plus[1][i] = (l_array[1][i]);
    minus_plus_plus[2][i] = (l_array[2][i]);
    
    // --+
    minus_minus_plus[0][i] = (-1 * l_array[0][i]);
    minus_minus_plus[1][i] = (-1 * l_array[1][i]);
    minus_minus_plus[2][i] = (l_array[2][i]);
  }
  
  // MEDIUM CUBES shift coordinates
  for (int i = 0; i < m_rows; i++) {
    
    // +++ stays the same
    plus_plus_plus[0][i] = (m_array[0][i]);
    plus_plus_plus[1][i] = (m_array[1][i]);
    plus_plus_plus[2][i] = (m_array[2][i]);
    
    // ---
    minus_minus_minus[0][i] = (-1 * m_array[0][i]);
    minus_minus_minus[1][i] = (-1 * m_array[1][i]);
    minus_minus_minus[2][i] = (-1 * m_array[2][i]);
    
    // ++-
    plus_plus_minus[0][i] = (m_array[0][i]);
    plus_plus_minus[1][i] = (m_array[1][i]);
    plus_plus_minus[2][i] = (-1 * m_array[2][i]);
    
    // +--
    plus_minus_minus[0][i] = (m_array[0][i]);
    plus_minus_minus[1][i] = (-1 * m_array[1][i]);
    plus_minus_minus[2][i] = (-1 * m_array[2][i]);
    
  }
  
  // SMALL CUBES shift coordinates
  for (int i = 0; i < s_rows; i++) {
    // +-+
    plus_minus_plus[0][i] = (s_array[0][i]);
    plus_minus_plus[1][i] = (-1 * s_array[1][i]);
    plus_minus_plus[2][i] = (s_array[2][i]);
    
    // -+-
    minus_plus_minus[0][i] = (-1 * s_array[0][i]);
    minus_plus_minus[1][i] = (s_array[1][i]);
    minus_plus_minus[2][i] = (-1 * s_array[2][i]);
  }
  
  // Perlin Noise Cubes
  for (int i = 0; i < p_rows; i++) {
    float x = map(noise(x_offset), 0, 1, 0, width/1.8);
    float y = map(noise(y_offset), 0, 1, 0, height/1.8);
    //float y = 0.0;
    //float z = 0.0;
    
    println(x);
    println(y);
    
    p_array[0][i] = x;
    p_array[1][i] = y;
    
    if (random(0,2) == 1) {
      p_array[2][i] = 200;
    }
    if (random(0,2) == 0) {
      p_array[2][i] = -200;
    }
    
    
    x_offset += 0.1;
    y_offset += 0.1;

  }  
}


void draw() {
  background(0);
  translate(width / 2, height / 2, 0);
  //rotateX(frameCount * 0.001);
  rotateY(frameCount * 0.005);
  //rotateZ(frameCount * 0.005);
  
  // LARGE CUBE
  for (int i = 0; i < l_rows; i++) {
   
    int x = minus_plus_plus[0][i];
    int y = minus_plus_plus[1][i];
    int z = minus_plus_plus[2][i];
    
    pushMatrix();
    translate(x, y, z);
    fill(0,0,0);
    box(10);
    popMatrix();
    
    int x1 = minus_minus_plus[0][i];
    int y1 = minus_minus_plus[1][i];
    int z1 = minus_minus_plus[2][i];
    
    pushMatrix();
    translate(x1, y1, z1);
    fill(0,0,0);
    box(10);
    popMatrix();
  }
  
  // MEDIUM CUBE A
  for (int i = 0; i < m_rows; i++) {
   
    int x = plus_plus_plus[0][i];
    int y = plus_plus_plus[1][i];
    int z = plus_plus_plus[2][i];
    
    pushMatrix();
    translate(x, y, z);
    fill(0,0,0);
    box(10);
    popMatrix();
    
    int x1 = minus_minus_minus[0][i];
    int y1 = minus_minus_minus[1][i];
    int z1 = minus_minus_minus[2][i];
    
    pushMatrix();
    translate(x1, y1, z1);
    fill(0,0,0);
    box(10);
    popMatrix();
    
    int x2 = plus_plus_minus[0][i];
    int y2 = plus_plus_minus[1][i];
    int z2 = plus_plus_minus[2][i];
    
    pushMatrix();
    translate(x2, y2, z2);
    fill(0,0,0);
    box(10);
    popMatrix();
    
    int x3 = plus_minus_minus[0][i];
    int y3 = plus_minus_minus[1][i];
    int z3 = plus_minus_minus[2][i];
    
    pushMatrix();
    translate(x3, y3, z3);
    fill(0,0,0);
    box(10);
    popMatrix();
  }
  
  // SMALL CUBE
  for (int i = 0; i < s_rows; i++) {
    
    int x = minus_plus_minus[0][i];
    int y = minus_plus_minus[1][i];
    int z = minus_plus_minus[2][i];
    
    pushMatrix();
    translate(x, y, z);
    fill(0,0,0);
    box(10);
    popMatrix();
    
    int x1 = plus_minus_plus[0][i];
    int y1 = plus_minus_plus[1][i];
    int z1 = plus_minus_plus[2][i];
    
    pushMatrix();
    translate(x1, y1, z1);
    fill(0,0,0);
    box(10);
    popMatrix();
  }
  
  // Noisy cubes
  //for (int i = 0; i < p_rows; i++) {
   
  //  float x = p_array[0][i];
  //  float y = p_array[1][i];
  //  float z = p_array[2][i];
    
  //  pushMatrix();
  //  translate(x, y, z);
  //  fill(255,0,0);
  //  //fill(255,0,0);
  //  box(20);
  //  popMatrix();
  //}
  
  // ME
  pushMatrix();
  fill(255,255,255);
  box(250);
  popMatrix();

}
