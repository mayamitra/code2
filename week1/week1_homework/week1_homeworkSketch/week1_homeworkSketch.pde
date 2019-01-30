//This sketch features booleans and the map function

boolean clicked;
int size;
int dist;
float r, g;

void setup(){
  size(600, 600);
}

void draw(){
  background(255);
  size = 50;
  
  r = map(mouseX, 0, width, 0, 255);
  g = map(mouseX, 0, width, 255, 0);
  
  if (clicked){
    background(r, g, 255);
  }
  
  fill(0);
  text("Click me for colors!", 240, 250);
  ellipse(width/2, height/2, size, size);
  
}

void mousePressed(){
  dist = int(dist(mouseX, mouseY, width/2, height/2));
  if (dist < size/2){
    clicked = true;
  }
}
