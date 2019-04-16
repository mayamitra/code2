void setup(){
  size(600, 600);
  background(255);
  noFill();
}

void draw(){
  drawCircle(width/2, height/2, width);
}

//for a recursive funciton, set up a base case and a rule
void drawCircle(int x, int y, float radius){
  ellipse(x ,y, radius, radius);
  
  if(radius > 5){ //this is the base case
  radius *= .75; //this is the rule
  drawCircle(x, y, radius);
  drawCircle(x/2, y/2, radius/2);
  drawCircle(x/2, y*2, radius/2);
  drawCircle(x*2, y/2, radius/2);
  drawCircle(x*2, y*2, radius/2);
  }
}
