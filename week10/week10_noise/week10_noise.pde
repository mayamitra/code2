float x;
float randomY, noiseY;
float t;

void setup(){
 size(800, 600);
 background(255);
}

void draw(){
  if(x>=width){
    x = 0;
  }
  
  x++;
  randomY = random(0, height/2);
  t += .01; //t is the step between each number
  float n = noise(t);
  noiseY = map(n, 0, 1, height/2, height);
  
  rect(x, randomY, 10, 10);
  rect(x, noiseY, 10, 10);
}
