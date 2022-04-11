
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
  vertex(-450, -450, -1000);
  vertex(-500, -500, -1000);
  vertex(-500, 500,  -1000);
  vertex(-450, 450, -1000);
  endShape();
  
  stroke(104,172,163);
  fill(104,172,163);
  beginShape();
  vertex(450, 450, -1000);
  vertex(500, 500, -1000);
  vertex(500, -500,  -1000);
  vertex(450, -450, -1000);
  endShape();
  
  stroke(104,172,163);
  fill(104,172,163);
  beginShape();
  vertex(-500, -500, -1000);
  vertex(-450, -450, -1000);
  vertex(450, -450, -1000);
  vertex(500, -500, -1000);
  endShape();
  
  stroke(104,172,163);
  fill(104,172,163);
  beginShape();
  vertex(-450, 450, -1000);
  vertex(-500, 500, -1000);
  vertex(500, 500,  -1000);
  vertex(450, 450, -1000);
  endShape();
  
  // layer2
  stroke(245,115,113);
  fill(245,115,113);
  beginShape();
  vertex(-400, -400, -1000);
  vertex(-450, -450, -1000);
  vertex(-450, 450,  -1000);
  vertex(-400, 400, -1000);
  endShape();
  
  stroke(245,115,113);
  fill(245,115,113);
  beginShape();
  vertex(400, 400, -1000);
  vertex(450, 450, -1000);
  vertex(450, -450,  -1000);
  vertex(400, -400, -1000);
  endShape();
  
  stroke(245,115,113);
  fill(245,115,113);
  beginShape();
  vertex(-450, -450, -1000);
  vertex(-400, -400, -1000);
  vertex(400, -400, -1000);
  vertex(450, -450, -1000);
  endShape();
  
  stroke(245,115,113);
  fill(245,115,113);
  beginShape();
  vertex(-400, 400, -1000);
  vertex(-450, 450, -1000);
  vertex(450, 450,  -1000);
  vertex(400, 400, -1000);
  endShape();
  
  // layer 3
  stroke(89,116,151);
  fill(89,116,151);
  beginShape();
  vertex(-350, -350, -1000);
  vertex(-400, -400, -1000);
  vertex(-400, 400,  -1000);
  vertex(-350, 350, -1000);
  endShape();
  
  stroke(89,116,151);
  fill(89,116,151);
  beginShape();
  vertex(350, 350, -1000);
  vertex(400, 400, -1000);
  vertex(400, -400,  -1000);
  vertex(350, -350, -1000);
  endShape();
  
  stroke(89,116,151);
  fill(89,116,151);
  beginShape();
  vertex(-400, -400, -1000);
  vertex(-350, -350, -1000);
  vertex(350, -350, -1000);
  vertex(400, -400, -1000);
  endShape();
  
  stroke(89,116,151);
  fill(89,116,151);
  beginShape();
  vertex(-350, 350, -1000);
  vertex(-400, 400, -1000);
  vertex(400, 400,  -1000);
  vertex(350, 350, -1000);
  endShape();
  
  // layer 4
  stroke(212,61,138);
  fill(212,61,138);
  beginShape();
  vertex(-300, -300, -1000);
  vertex(-350, -350, -1000);
  vertex(-350, 350,  -1000);
  vertex(-300, 300, -1000);
  endShape();
  
  stroke(212,61,138);
  fill(212,61,138);
  beginShape();
  vertex(300, 300, -1000);
  vertex(350, 350, -1000);
  vertex(350, -350,  -1000);
  vertex(300, -300, -1000);
  endShape();
  
  stroke(212,61,138);
  fill(212,61,138);
  beginShape();
  vertex(-350, -350, -1000);
  vertex(-300, -300, -1000);
  vertex(300, -300, -1000);
  vertex(350, -350, -1000);
  endShape();
  
  stroke(212,61,138);
  fill(212,61,138);
  beginShape();
  vertex(-300, 300, -1000);
  vertex(-350, 350, -1000);
  vertex(350, 350,  -1000);
  vertex(300, 300, -1000);
  endShape();
  
  // layer 5
  stroke(84,42,113);
  fill(84,42,113);
  beginShape();
  vertex(-250, -250, -1000);
  vertex(-300, -300, -1000);
  vertex(-300, 300,  -1000);
  vertex(-250, 250, -1000);
  endShape();
  
  stroke(84,42,113);
  fill(84,42,113);
  beginShape();
  vertex(250, 250, -1000);
  vertex(300, 300, -1000);
  vertex(300, -300,  -1000);
  vertex(250, -250, -1000);
  endShape();
  
  stroke(84,42,113);
  fill(84,42,113);
  beginShape();
  vertex(-300, -300, -1000);
  vertex(-250, -250, -1000);
  vertex(250, -250, -1000);
  vertex(300, -300, -1000);
  endShape();
  
  stroke(84,42,113);
  fill(84,42,113);
  beginShape();
  vertex(-250, 250, -1000);
  vertex(-300, 300, -1000);
  vertex(300, 300,  -1000);
  vertex(250, 250, -1000);
  endShape();
  
  // layer 6
  stroke(104,172,163);
  fill(104,172,163);
  beginShape();
  vertex(-200, -200, -1000);
  vertex(-250, -250, -1000);
  vertex(-250, 250,  -1000);
  vertex(-200, 200, -1000);
  endShape();
  
  stroke(104,172,163);
  fill(104,172,163);
  beginShape();
  vertex(200, 200, -1000);
  vertex(250, 250, -1000);
  vertex(250, -250,  -1000);
  vertex(200, -200, -1000);
  endShape();
  
  stroke(104,172,163);
  fill(104,172,163);
  beginShape();
  vertex(-250, -250, -1000);
  vertex(-200, -200, -1000);
  vertex(200, -200, -1000);
  vertex(250, -250, -1000);
  endShape();
  
  stroke(104,172,163);
  fill(104,172,163);
  beginShape();
  vertex(-200, 200, -1000);
  vertex(-250, 250, -1000);
  vertex(250, 250,  -1000);
  vertex(200, 200, -1000);
  endShape();
  
  // layer 7
  stroke(245,115,113);
  fill(245,115,113);
  beginShape();
  vertex(-150, -150, -1000);
  vertex(-200, -200, -1000);
  vertex(-200, 200,  -1000);
  vertex(-150, 150, -1000);
  endShape();
  
  stroke(245,115,113);
  fill(245,115,113);
  beginShape();
  vertex(150, 150, -1000);
  vertex(200, 200, -1000);
  vertex(200, -200,  -1000);
  vertex(150, -150, -1000);
  endShape();
  
  stroke(245,115,113);
  fill(245,115,113);
  beginShape();
  vertex(-200, -200, -1000);
  vertex(-150, -150, -1000);
  vertex(150, -150, -1000);
  vertex(200, -200, -1000);
  endShape();
  
  stroke(245,115,113);
  fill(245,115,113);
  beginShape();
  vertex(-150, 150, -1000);
  vertex(-200, 200, -1000);
  vertex(200, 200,  -1000);
  vertex(150, 150, -1000);
  endShape();
  
  // layer 8
  stroke(89,116,151);
  fill(89,116,151);
  beginShape();
  vertex(-100, -100, -1000);
  vertex(-150, -150, -1000);
  vertex(-150, 150,  -1000);
  vertex(-100, 100, -1000);
  endShape();
  
  stroke(89,116,151);
  fill(89,116,151);
  beginShape();
  vertex(100, 100, -1000);
  vertex(150, 150, -1000);
  vertex(150, -150,  -1000);
  vertex(100, -100, -1000);
  endShape();
  
  stroke(89,116,151);
  fill(89,116,151);
  beginShape();
  vertex(-150, -150, -1000);
  vertex(-100, -100, -1000);
  vertex(100, -100, -1000);
  vertex(150, -150, -1000);
  endShape();
  
  stroke(89,116,151);
  fill(89,116,151);
  beginShape();
  vertex(-100, 100, -1000);
  vertex(-150, 150, -1000);
  vertex(150, 150,  -1000);
  vertex(100, 100, -1000);
  endShape();
  
  // layer 8
  stroke(212,61,138);
  fill(212,61,138);
  beginShape();
  vertex(-50, -50, -1000);
  vertex(-100, -100, -1000);
  vertex(-100, 100,  -1000);
  vertex(-50, 50, -1000);
  endShape();
  
  stroke(212,61,138);
  fill(212,61,138);
  beginShape();
  vertex(50, 50, -1000);
  vertex(100, 100, -1000);
  vertex(100, -100,  -1000);
  vertex(50, -50, -1000);
  endShape();
  
  stroke(212,61,138);
  fill(212,61,138);
  beginShape();
  vertex(-100, -100, -1000);
  vertex(-50, -50, -1000);
  vertex(50, -50, -1000);
  vertex(100, -100, -1000);
  endShape();
  
  stroke(212,61,138);
  fill(212,61,138);
  beginShape();
  vertex(-50, 50, -1000);
  vertex(-100, 100, -1000);
  vertex(100, 100,  -1000);
  vertex(50, 50, -1000);
  endShape();
  
  
  popMatrix();
  

  
  pushMatrix();
  translate(width / 2, height / 2, 0);
  
  rotateX(frameCount * 0.005);
  rotateY(frameCount * 0.005);
  rotateZ(frameCount * 0.005);
  fill(0,0,0);
  stroke(255);
  box(50);
  popMatrix();
  
}

// close the background cube. enlarge the cube.
