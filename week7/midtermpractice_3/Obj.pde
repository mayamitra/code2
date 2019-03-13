class Obj{
  float mass; 
  PVector pos, vel, accel; 
  
  Obj(){
    pos = new PVector(random(width), random(height)); 
    vel = new PVector(0, 0); 
    accel = new PVector(0, 0); 
    
    mass = 10.0; 
  }
  
  void display(){
    fill(50, 60) ;
    ellipse(pos.x, pos.y, mass*10, mass*10); 
  }
  
  void move(){
    vel.add(accel); 
    pos.add(vel); 
    
    accel.mult(0); 
  }

  void checkBoundaries() {
    if (pos.x >= width-(mass*5)) {
      vel.x *= -1;
    } else if (pos.x <= mass*5) {
      vel.x *= -1;
    }
 
    if (pos.y >= height-(mass*5)) {
      vel.y *= -1;
    }
  }
  
  //use the force = mass*acceleration formula to calc here  
  void addForce(PVector force){
    //PVector f = PVector.div(force, mass); 
    //accel.add(f);
    force.div(mass); 
    accel.add(force); 
  }
}
