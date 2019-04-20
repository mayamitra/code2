//very much based on Code Train, with a few adjustments 

class Star {
  float x, y, z;
  float pz;

  Star() {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    pz = z;
  }

  void move() {
    z = z-10;
    if (z<1) {
      z = width;
      x = random(-width, width);
      y = random(-height, height);
      
      pz = z;
    } 
  }

  void display() {
    fill(255); 
    noStroke();

    float sx = map(x/z, 0, 1, 0, width);
    float sy = map(y/z, 0, 1, 0, height);
    
    float r = map(z, 0, width, 10, 0);

    ellipse(sx, sy, r, r);

    //for streak    
    float px = map(x/pz, 0, 1, 0, width);
    float py = map(y/pz, 0, 1, 0, height); 
    
    pz = z;
    stroke(255);
    line(px, py, sx, sy);

  }
}
