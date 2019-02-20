class Paddle {
  int w = 100; 
  int h = 25; 
  float x, y; 

  //CONSTRUCTOR
  Paddle() {
    x = width/2; 
    y = height*.75;
  }

  //METHODS
  void display() {
    fill(255, 255, 0);
    rect(x, y, w, h);
  }

  //void move() {
  //  x = mouseX;
  //}
  
  void getSmaller(){
    if (frameCount%60 == 0) {
      w = w-=.5;
    }
  }

  void moveLeft() {
       x-= 10;
  }

  void moveRight() {
    x+= 10;
  }

  void reset() {
    if (x >= (width+w/2)) {
      x = 0;
    }

    if (x<= (-w/2)) {
      x = width;
    }
  }
}
