String [] colors;
String lastColor;

float r; 
color bgColor; 

void setup() {
  size(600, 600);
  
  colors = loadStrings("colors.csv");
  lastColor = colors[0];
  for (int i = 0; i<colors.length; i++) {
    if (i > i-1) {
      lastColor = colors[i];
    }
  }

  background(int(lastColor)); 
}

void draw() {
  background(bgColor); 
  text("Background # : " + bgColor, 100, 100);
}

void mousePressed() {
  bgColor = color(random(0, 255), random(0, 255), random(0, 255)); 
  ellipse(mouseX, mouseY, 50, 50);
}

void keyPressed() {
  if (key== ' ') {
    colors = append(colors, str(bgColor));
    saveStrings("colors.csv", colors);
  }
}
