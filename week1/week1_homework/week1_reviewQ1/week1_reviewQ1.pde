String [] quotes = new String[4];
int dist1, dist2, dist3, dist4;
boolean button1, button2, button3, button4;
int size;

void setup() {
  size(600, 600);

  size = 100;

  quotes[0] = "inspirational quote";
  quotes[1] = "so inspirational";
  quotes[2] = "don't you feel so inspired";
  quotes[3] = "motivating quotes are so motivating";
}

void draw() {
  background(255);
  fill(0);
  ellipse(75, 100, size, size);
  ellipse(225, 100, size, size);
  ellipse(375, 100, size, size);
  ellipse(525, 100, size, size);

  if (button1) {
    textSize(30);
    text(quotes[0], 150, 300);
  } 

  if (button2) {
    textSize(30);
    text(quotes[1], 175, 300);
  } 

  if (button3) {
    textSize(30);
    text(quotes[2], 100, 300);
  } 

  if (button4) {
    textSize(30);
    text(quotes[3], 50, 300);
  }
}

void mousePressed() {
  dist1 = int(dist(mouseX, mouseY, 75, 100));
  dist2 = int(dist(mouseX, mouseY, 225, 100));
  dist3 = int(dist(mouseX, mouseY, 375, 100));
  dist4 = int(dist(mouseX, mouseY, 525, 100));

  if (dist1 < size/2) {
    button1 = true;
  }else {
    button1 = false;
  }

  if (dist2 < size/2) {
    button2 = true;
  }else {
    button2 = false;
  }

  if (dist3 < size/2) {
    button3 = true;
  }else {
    button3 = false;
  }

  if (dist4 < size/2) {
    button4 = true;
  }else {
    button4 = false;
  }
}
