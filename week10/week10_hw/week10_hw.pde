float x;
float noiseY;
float t;

void setup() {
  size(600, 600);
  background(#B5DEF0);
}

void draw() {
  x++;
  if (x>width){
   x = width; //how do i stop x?
  }
  println(x);
  noiseY = height/2; //want to start it at the middle each time 

  t += .01; //t is the step between each number
  float n = noise(t);
  noiseY = map(n, 0, 1, height/2, height);  
  vertex(x, noiseY);
  fill(#3A5D2B);
  beginShape();
  ellipse(x, noiseY, 10, 10);
  endShape();
}
