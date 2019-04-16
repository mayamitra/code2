void setup(){
  size(600, 600);
  background(255);
  noFill();
}

void draw(){
  drawTriangle(width/2, 0, 300);
}

//for a recursive funciton, set up a base case and a rule
void drawTriangle(int x2, int y2, int wide){
  triangle(x2-wide, y2+(wide*2), x2, y2, x2+wide, y2+(wide*2));
  
  if(wide > 5){ //this is the base case
  wide *= .75; //this is the rule
  drawTriangle(x2, y2+(wide/2), wide);
  //drawTriangle(x2/4, y2/4, width/2);
  //drawCircle(x/2, y*2, radius/2);
  //drawCircle(x*2, y/2, radius/2);
  //drawCircle(x*2, y*2, radius/2);
  }
}
