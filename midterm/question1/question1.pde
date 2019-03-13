float radius;
float scale = 5; 

void setup() {
  size(500, 500);
}

void draw() {
  background(0); 

  ellipse(width/2, height/2, radius, radius);  

  radius += scale;

  if (radius == width) {
    radius = -radius;
  }
  
  text(printText(), width*.1, height*.1);
}

String printText() {
  String txt = "blank";
  textSize(15);
  if (radius >= 0) {
    txt = "GROW";
  }
  if (radius <= 0) {
    txt = "SHRINK";
  }
  return txt;
}
