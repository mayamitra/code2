//2D array
//color
//size
//conditional to see if we're clicking on the square (mousePressed)
//boolean 2d array

int num = 10; //refer to number of rows and columns
color c [][]; //2 brackets in a row means 2d array
boolean clicked[][];
int size;

void setup() {
  size(600, 600);
  noStroke();
  size = width/num; //size = 60

  c = new color [num][num]; //setting up size of array
  clicked = new boolean [num][num];

  for (int i=0; i<num; i++) {
    for (int j=0; j<num; j++) {
      c[i][j] = color(random(0, 255), random(0, 255), random(0, 255));
      clicked[i][j] = false;
    }
  }
}

void draw() {
  background(255);
  for (int i=0; i<num; i++) {
    for (int j=0; j<num; j++) {
      if (mouseX>i*size && mouseX<=(i+1)*size 
        && mouseY>j*size && mouseY<=(j+1)*size
        && mousePressed) {
        clicked[i][j] = true;
      }

      if (clicked[i][j]) {
        fill(c[i][j]);
      } else {
        fill(255);
      }

      rect(i*size, j*size, size, size);
    }
  }
}
