String currentString = "A";
int generations = 0;

void setup() {
  println("Generations: " + generations + ": " + currentString); //to print the 0
}

void draw() {
}

void mousePressed() {
  String nextString = "";

  for (int i = 0; i < currentString.length(); i++) {
    char c = currentString.charAt(i);
    if (c == 'A') {
      nextString += "AB";
    } else if (c== 'B') {
      nextString += "A";
    }
  }
  currentString = nextString;
  generations++;
  println("Generations: " + generations + ": " + currentString);
}
