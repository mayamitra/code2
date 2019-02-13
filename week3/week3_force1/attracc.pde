class Attracc{
  float mass;
  float G;
  PVector pos, dragOffset; 
  
  //CONSTRUCTORS
  Attracc(){
    pos = new PVector(width/2, height/2);
    mass = 20;
    G = .981;
    dragOffset = new PVector(0.0, 0.0);
  }
  
  //METHODS
  PVector attracc(Mover m){
    //calculates the diff in position btween attracc and mover
    PVector force = PVector.sub(pos, m.pos); 
    
    //gets the absolute value of the distance calculated in PVector force
    float d = force.mag(); 
    //constrains d into a range of values
    d = constrain(d, 5.0, 25.0);
    //normalize function scales a vector down to be within 1
      //aka, 5:4:3 --> 1:.8:.6
    force.normalize();
    float strength = (G * mass * m.mass)/(d*d);
    force.mult(strength);
    return force;
  }
  
  void display(){
    fill(255);
    ellipse(pos.x, pos.y, mass*2, mass*2);
  }
}
