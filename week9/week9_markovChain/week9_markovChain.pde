char c = 'b'; //char is a single character

float xPos = 100;
float yPos = height/2;
float targetX, targetY, easingRate;

void setup() {
  size(500, 500);
  easingRate = .01;

  targetY = height/2;
}

void draw() {
  background(255);
  println(stateProb());
  if (c =='a') {
    targetX=100;
  } else if (c == 'b') {
    targetX = 400;
  }

  //target-pos gives us how far away we are from our target point
  xPos += (targetX - xPos) * easingRate; 
  yPos += (targetY - yPos) * easingRate;

  ellipse(xPos, yPos, 50, 50);
}

char stateProb() {
  float r = random(0, 1); //for random probability
  if (c == 'a') {
    if (r<=.9) {
      c = 'a';
    } else {
      c='b';
    }
  }

  if (c == 'b') {
    if (r>=.5) {
      c = 'b';
    } else {
      c='a';
    }
  }
  return c;
}
