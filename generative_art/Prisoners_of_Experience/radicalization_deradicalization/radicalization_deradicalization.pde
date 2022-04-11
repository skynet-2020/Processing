
int z = -1000;


void setup() {
  size(1200, 800, P3D);
}

void draw () {
 
  background(0,0,0);
  pushMatrix();
  translate(width / 2, height / 2, 0);
  
  // layer1
  stroke(104,172,163);
  fill(104,172,163);
  beginShape();
  vertex(-450, -450, z);
  vertex(-500, -500, z);
  vertex(-500, 500,  z);
  vertex(-450, 450, z);
  endShape();
  
  stroke(104,172,163);
  fill(104,172,163);
  beginShape();
  vertex(450, 450, z);
  vertex(500, 500, z);
  vertex(500, -500,  z);
  vertex(450, -450, z);
  endShape();
  
  stroke(104,172,163);
  fill(104,172,163);
  beginShape();
  vertex(-500, -500, z);
  vertex(-450, -450, z);
  vertex(450, -450, z);
  vertex(500, -500, z);
  endShape();
  
  stroke(104,172,163);
  fill(104,172,163);
  beginShape();
  vertex(-450, 450, z);
  vertex(-500, 500, z);
  vertex(500, 500,  z);
  vertex(450, 450, z);
  endShape();
  
  // layer2
  stroke(245,115,113);
  fill(245,115,113);
  beginShape();
  vertex(-400, -400, z);
  vertex(-450, -450, z);
  vertex(-450, 450,  z);
  vertex(-400, 400, z);
  endShape();
  
  stroke(245,115,113);
  fill(245,115,113);
  beginShape();
  vertex(400, 400, z);
  vertex(450, 450, z);
  vertex(450, -450,  z);
  vertex(400, -400, z);
  endShape();
  
  stroke(245,115,113);
  fill(245,115,113);
  beginShape();
  vertex(-450, -450, z);
  vertex(-400, -400, z);
  vertex(400, -400, z);
  vertex(450, -450, z);
  endShape();
  
  stroke(245,115,113);
  fill(245,115,113);
  beginShape();
  vertex(-400, 400, z);
  vertex(-450, 450, z);
  vertex(450, 450,  z);
  vertex(400, 400, z);
  endShape();
  
  // layer 3
  stroke(89,116,151);
  fill(89,116,151);
  beginShape();
  vertex(-350, -350, z);
  vertex(-400, -400, z);
  vertex(-400, 400,  z);
  vertex(-350, 350, z);
  endShape();
  
  stroke(89,116,151);
  fill(89,116,151);
  beginShape();
  vertex(350, 350, z);
  vertex(400, 400, z);
  vertex(400, -400,  z);
  vertex(350, -350, z);
  endShape();
  
  stroke(89,116,151);
  fill(89,116,151);
  beginShape();
  vertex(-400, -400, z);
  vertex(-350, -350, z);
  vertex(350, -350, z);
  vertex(400, -400, z);
  endShape();
  
  stroke(89,116,151);
  fill(89,116,151);
  beginShape();
  vertex(-350, 350, z);
  vertex(-400, 400, z);
  vertex(400, 400,  z);
  vertex(350, 350, z);
  endShape();
  
  // layer 4
  stroke(212,61,138);
  fill(212,61,138);
  beginShape();
  vertex(-300, -300, z);
  vertex(-350, -350, z);
  vertex(-350, 350,  z);
  vertex(-300, 300, z);
  endShape();
  
  stroke(212,61,138);
  fill(212,61,138);
  beginShape();
  vertex(300, 300, z);
  vertex(350, 350, z);
  vertex(350, -350,  z);
  vertex(300, -300, z);
  endShape();
  
  stroke(212,61,138);
  fill(212,61,138);
  beginShape();
  vertex(-350, -350, z);
  vertex(-300, -300, z);
  vertex(300, -300, z);
  vertex(350, -350, z);
  endShape();
  
  stroke(212,61,138);
  fill(212,61,138);
  beginShape();
  vertex(-300, 300, z);
  vertex(-350, 350, z);
  vertex(350, 350,  z);
  vertex(300, 300, z);
  endShape();
  
  // layer 5
  stroke(84,42,113);
  fill(84,42,113);
  beginShape();
  vertex(-250, -250, z);
  vertex(-300, -300, z);
  vertex(-300, 300,  z);
  vertex(-250, 250, z);
  endShape();
  
  stroke(84,42,113);
  fill(84,42,113);
  beginShape();
  vertex(250, 250, z);
  vertex(300, 300, z);
  vertex(300, -300,  z);
  vertex(250, -250, z);
  endShape();
  
  stroke(84,42,113);
  fill(84,42,113);
  beginShape();
  vertex(-300, -300, z);
  vertex(-250, -250, z);
  vertex(250, -250, z);
  vertex(300, -300, z);
  endShape();
  
  stroke(84,42,113);
  fill(84,42,113);
  beginShape();
  vertex(-250, 250, z);
  vertex(-300, 300, z);
  vertex(300, 300,  z);
  vertex(250, 250, z);
  endShape();
  
  // layer 6
  stroke(104,172,163);
  fill(104,172,163);
  beginShape();
  vertex(-200, -200, z);
  vertex(-250, -250, z);
  vertex(-250, 250,  z);
  vertex(-200, 200, z);
  endShape();
  
  stroke(104,172,163);
  fill(104,172,163);
  beginShape();
  vertex(200, 200, z);
  vertex(250, 250, z);
  vertex(250, -250,  z);
  vertex(200, -200, z);
  endShape();
  
  stroke(104,172,163);
  fill(104,172,163);
  beginShape();
  vertex(-250, -250, z);
  vertex(-200, -200, z);
  vertex(200, -200, z);
  vertex(250, -250, z);
  endShape();
  
  stroke(104,172,163);
  fill(104,172,163);
  beginShape();
  vertex(-200, 200, z);
  vertex(-250, 250, z);
  vertex(250, 250,  z);
  vertex(200, 200, z);
  endShape();
  
  // layer 7
  stroke(245,115,113);
  fill(245,115,113);
  beginShape();
  vertex(-150, -150, z);
  vertex(-200, -200, z);
  vertex(-200, 200,  z);
  vertex(-150, 150, z);
  endShape();
  
  stroke(245,115,113);
  fill(245,115,113);
  beginShape();
  vertex(150, 150, z);
  vertex(200, 200, z);
  vertex(200, -200,  z);
  vertex(150, -150, z);
  endShape();
  
  stroke(245,115,113);
  fill(245,115,113);
  beginShape();
  vertex(-200, -200, z);
  vertex(-150, -150, z);
  vertex(150, -150, z);
  vertex(200, -200, z);
  endShape();
  
  stroke(245,115,113);
  fill(245,115,113);
  beginShape();
  vertex(-150, 150, z);
  vertex(-200, 200, z);
  vertex(200, 200,  z);
  vertex(150, 150, z);
  endShape();
  
  // layer 8
  stroke(89,116,151);
  fill(89,116,151);
  beginShape();
  vertex(-100, -100, z);
  vertex(-150, -150, z);
  vertex(-150, 150,  z);
  vertex(-100, 100, z);
  endShape();
  
  stroke(89,116,151);
  fill(89,116,151);
  beginShape();
  vertex(100, 100, z);
  vertex(150, 150, z);
  vertex(150, -150,  z);
  vertex(100, -100, z);
  endShape();
  
  stroke(89,116,151);
  fill(89,116,151);
  beginShape();
  vertex(-150, -150, z);
  vertex(-100, -100, z);
  vertex(100, -100, z);
  vertex(150, -150, z);
  endShape();
  
  stroke(89,116,151);
  fill(89,116,151);
  beginShape();
  vertex(-100, 100, z);
  vertex(-150, 150, z);
  vertex(150, 150,  z);
  vertex(100, 100, z);
  endShape();
  
  // layer 8
  stroke(212,61,138);
  fill(212,61,138);
  beginShape();
  vertex(-50, -50, z);
  vertex(-100, -100, z);
  vertex(-100, 100,  z);
  vertex(-50, 50, z);
  endShape();
  
  stroke(212,61,138);
  fill(212,61,138);
  beginShape();
  vertex(50, 50, z);
  vertex(100, 100, z);
  vertex(100, -100,  z);
  vertex(50, -50, z);
  endShape();
  
  stroke(212,61,138);
  fill(212,61,138);
  beginShape();
  vertex(-100, -100, z);
  vertex(-50, -50, z);
  vertex(50, -50, z);
  vertex(100, -100, z);
  endShape();
  
  stroke(212,61,138);
  fill(212,61,138);
  beginShape();
  vertex(-50, 50, z);
  vertex(-100, 100, z);
  vertex(100, 100,  z);
  vertex(50, 50, z);
  endShape();
  
  // layer 9
  stroke(84,42,113);
  fill(84,42,113);
  beginShape();
  vertex(0, 0, z);
  vertex(-50, -50, z);
  vertex(-50, 50,  z);
  vertex(0, 0, z);
  endShape();
  
  stroke(84,42,113);
  fill(84,42,113);
  beginShape();
  vertex(0, 0, z);
  vertex(50, 50, z);
  vertex(50, -50,  z);
  vertex(0, 0, z);
  endShape();
  
  stroke(84,42,113);
  fill(84,42,113);
  beginShape();
  vertex(-50, -50, z);
  vertex(0, 0, z);
  vertex(0, 0, z);
  vertex(50, -50, z);
  endShape();
  
  stroke(84,42,113);
  fill(84,42,113);
  beginShape();
  vertex(0, 0, z);
  vertex(-50, 50, z);
  vertex(50, 50,  z);
  vertex(0, 0, z);
  endShape();
  
  
  popMatrix();
  

  
  pushMatrix();
  translate(width / 2, height / 2, 0);
  
  rotateX(frameCount * 0.005);
  rotateY(frameCount * 0.005);
  rotateZ(frameCount * 0.005);
  fill(0,0,0);
  //stroke(255);
  stroke(50,50,50);
  box((float) (10 + (Math.sin(frameCount / 200.0)) * 400));
  //box(50);
  popMatrix();
  
  //saveFrame("output/rad_####.png");
  
}

// close the background cube. enlarge the cube.
