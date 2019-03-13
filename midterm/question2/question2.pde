Object myObject; 

void setup() {
  size(600, 600); 

  myObject = new Object();
}

void draw() {
  background(255); 
  myObject.display(); 
  myObject.move(); 
  myObject.checkBoundaries();
}
