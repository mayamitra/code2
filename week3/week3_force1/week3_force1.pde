Mover mover;
Attracc a;

void setup(){
  size(500, 500);
  mover = new Mover(15, random(0, width), random(0, height));
  a = new Attracc();
}

void draw(){
  background(0);
  
  a.display();
  PVector f = a.attracc(mover);
  
  mover.display();
  mover.update();
  mover.applyForce(f);
}
