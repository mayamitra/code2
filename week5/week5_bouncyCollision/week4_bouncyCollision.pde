Ball[] balls = {new Ball(100, 100, random(40, 60)), new Ball(600, 600, random(50, 80))};

void setup(){
  size(800, 800);
  
}

void draw(){
  background(91, 123, 245);
  
  //new for loop method
  for(Ball b: balls){
    b.update();
    b.display();
    b.checkBound();
  }
  
  balls[0].checkCol(balls[1]);
  balls[1].checkCol(balls[0]);
}
