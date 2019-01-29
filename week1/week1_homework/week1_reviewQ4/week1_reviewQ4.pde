PVector position; 
float theta = 0; 
int orbitSize = 300; 
int yIncrement;
int size = 100;
boolean clicked;
int distance;

void setup() {
  size (600, 600); 
  background(0);
  position = new PVector (20, 20);
}

void draw () {
  background(0);
  distance = int(dist(position.x, position.y, mouseX, mouseY));

  theta +=.01; 

  position.x = width/2 + sin(theta)*orbitSize;

  //position.y += yIncrement;

  //if (position.y >= height-(size/2)) {
  //  yIncrement = -5;
  //}

  //if (position.y >= (size/2)) {
  //  yIncrement = 5;
  //}

  ellipse (position.x, position.y, size, size);
}

void mousePressed() {
  if (distance < size/2) {
    background(0);
    position.x = position.x;
    position.y = height/2 + sin(theta)*orbitSize;
    
    //ellipse(position.y, position.x, size, size);
  }
}
