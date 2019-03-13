Obj myObject; 

void setup(){
  size(800, 600); 
  
  myObject = new Obj();  
}

void draw(){
  background(255); 
  
  PVector gravity = new PVector(0, .0981*myObject.mass); 
  PVector wind = new PVector(.1, 0); 
  
  myObject.display(); 
  myObject.move(); 
  myObject.checkBoundaries();
  myObject.addForce(gravity);
  myObject.addForce(wind);
}
