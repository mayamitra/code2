class Cloud {  
  float x, y;

  //CONSTRUCTOR
  Cloud() {
    x = random(0, width);
    y = random(0, height*.5);
  }

  //METHODS
  void display() {
    fill(255);
    //50 = x
    ellipse(x, y, 30, 30);
    ellipse(x+10, y+10, 35, 35);
    ellipse(x+25, y, 25, 25);
  }
  
  void displayGREY() {
    fill(190);
    //50 = x
    ellipse(x, y, 30, 30);
    ellipse(x+10, y+10, 35, 35);
    ellipse(x+25, y, 25, 25);
  }
}
