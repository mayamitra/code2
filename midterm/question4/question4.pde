int sceneNumber = 0;

void setup() { 
  size(600, 600);
  noStroke();
}

void draw() {
  switch(sceneNumber) {
  case 0:
    scene0();
    break; 

  case 1:
    scene1();
    break;

  case 2:
    scene2();
    break;

  case 3:
    scene3();
    break;

  case 4:
    scene4();
    break;

  case 5:
    sceneNumber = 0;
    break;
  }
}

void keyPressed() {
  if (key == ' ') {
    sceneNumber++;
  }
}

void scene0() {
  background(152, 217, 234);
  fill(255);
  textSize(50);
  text("Hey there!", width*.3, height*.5);
  textSize(20);
  text("Press the spacebar to continue!", 140, height*.92);
}

void scene1() {
  background(204, 172, 227);
  textSize(50); 
  text("My name is Maya!", width*.15, height*.5);
  fill(255);
  textSize(20);
  text("Press the spacebar to continue!", 140, height*.92);
}

void scene2() {
  background(245, 180, 232);
  textSize(50); 
  text("I like cookies!", width*.2, height*.5);
  fill(255);
  textSize(20);
  text("Press the spacebar to continue!", 140, height*.92);
}

void scene3() {
  background(125, 136, 252);
  textSize(43); 
  text("But I'm on a sugar cleanse :(", 8, height*.5);
  fill(255);
  textSize(20);
  text("Press the spacebar to continue!", 140, height*.92);
}

void scene4() {
  background(0);
  textSize(50); 
  text("So sad.", width*.37, height*.5);
  fill(255);
  textSize(20);
  text("Press the spacebar to continue!", 140, height*.92);
}
