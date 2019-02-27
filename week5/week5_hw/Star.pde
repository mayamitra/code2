class Star {
  float x, y, radius1, radius2;
  int npoints;

  //CONSTRUCTOR
  //change this to plain old x and y
  Star(float _x, float _y, float _radius1, float _radius2) {
    x = _x;
    y = _y;
    radius1 = _radius1;
    radius2 = _radius2;
  }

  //METHODS
  void display() {
    fill(255, 204, 0);
    npoints = 5;
    float angle = TWO_PI / npoints;
    float halfAngle = angle/2.0;
    beginShape();
    for (float a = 0; a < TWO_PI; a += angle) {
      float sx = x + cos(a) * radius2;
      float sy = y + sin(a) * radius2;
      vertex(sx, sy);
      sx = x + cos(a+halfAngle) * radius1;
      sy = y + sin(a+halfAngle) * radius1;
      vertex(sx, sy);
    }
    endShape(CLOSE);
  }
}
