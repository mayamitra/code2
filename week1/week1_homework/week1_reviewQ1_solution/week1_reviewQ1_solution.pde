String myStrings [] = {"inspirational quote", "so inspirational", 
  "don't you feel so inspired", "motivating quotes are so motivating"};
float xPos [] = new float[4];
int size = 100;
int index = 0;

void setup() {
  size(600, 600);

  float spacing = width/4;

  for (int i = 0; i<4; i++) {
    xPos[i] = i*spacing + size*.75;
  }
}

void draw() {
  background(255);

  for (int i = 0; i<4; i++) {

    if (dist(mouseX, mouseY, xPos[i], 100) < size/2 && mousePressed) {
      index = i;
      fill(255);
    } else {
      fill(0);
    }
    ellipse(xPos[i], 100, size, size);
  }

  text(myStrings[index], width/2-textWidth(myStrings[index])/2, height/2);
}
