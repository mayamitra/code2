void setup() {
  size(640, 360, P3D);
  background(0);
}

void draw() {
  background(0);
  camera(mouseX, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  if (mousePressed) {
    spotLight(255, 0, 0, width/2, height/2, 400, 0, 0, -1, PI/4, 2);
  }

  translate(width/2, height/2, 0);
  stroke(255);
  rotateX(PI/2);
  rotateZ(-PI/6);


  PShape triangle;
  triangle = createShape();

  triangle.beginShape();
  //triangle.fill(255);

  vertex(-100, -100, -100);
  vertex( 100, -100, -100);
  vertex(   0, 0, 100);

  vertex( 100, -100, -100);
  vertex( 100, 100, -100);
  vertex(   0, 0, 100);

  vertex( 100, 100, -100);
  vertex(-100, 100, -100);
  vertex(   0, 0, 100);

  vertex(-100, 100, -100);
  vertex(-100, -100, -100);
  vertex(   0, 0, 100);
  triangle.endShape();
}
