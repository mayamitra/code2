class Car {

  float x, y;
  float r, g, b;
  float size;
  float sizeW; //wheel size
  float speed;
  float acceleration;

  //CONSTRUCTOR
  Car(float _x, float _y) {
    x = _x;
    y = _y;
    r = random(0, 255);
    g = random(0, 255);
    b = random(0, 255);
    size = random(50, 80);
    sizeW = size/5;
    speed = 1;
    acceleration = .05;
  }


  //METHODS
  void display() {
    //x = mouseX;
    //y = mouseY;
    fill(r, g, b);
    rect(x, y, size, size/2);
    fill(0);
    ellipse(x+sizeW, y+(size/2), sizeW, sizeW);
    ellipse(x+size-sizeW, y+(size/2), sizeW, sizeW);
  }

  void move() {
    x+=speed;
  }

  void accelerate() {
    speed = speed+acceleration;
  }

  boolean alive() {
    if (x<width) {
      return true;
    } else {
      return false;
    }
  }
}
