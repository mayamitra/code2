class Mover{
  PVector pos, vel, accel;
  float mass;
  
  //CONSTRUCTOR
  Mover(float m, float x, float y){
    mass = m;
    pos = new PVector(x, y);
    vel = new PVector(1,0);
    accel = new PVector(0,0);
  }
  
  //METHODS
  void display(){
    fill(255, 100);
    ellipse(pos.x, pos.y, 50, 50);
  }
  
  void update(){
    vel.add(accel);
    pos.add(vel);
    accel.mult(0); //clear the acceleration each time
  }
  
  void applyForce(PVector force){
    PVector f = PVector.div(force, mass); //bc f = ma 
    accel.add(f);
  }
}
