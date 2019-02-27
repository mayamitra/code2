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
  void display0() {
    //x = mouseX;
    //y = mouseY;
    fill(r, g, b);
    rect(x, y, size, size/2);
    fill(0);
    ellipse(x+sizeW, y+(size/2), sizeW, sizeW);
    ellipse(x+size-sizeW, y+(size/2), sizeW, sizeW);
  }
  
  void display1() {
    //x = mouseX;
    //y = mouseY;
    fill(g, r, b);
    rect(x, y, size, size/2);
    fill(0);
    ellipse(x+sizeW, y+(size/2), sizeW, sizeW);
    ellipse(x+size-sizeW, y+(size/2), sizeW, sizeW);
  }
  
  void display2() {
    //x = mouseX;
    //y = mouseY;
    fill(b, r, g);
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
  
  void restart(){
    if(x >= width){
      x = 1;
    }
    if(x <= 0){
      x = width-1;
    }
  }
  
  void back(){
    speed = 0;
    x--;
  }

  boolean alive() {
    if (x<width) {
      return true;
    } else {
      return false;
    }
  }
}
