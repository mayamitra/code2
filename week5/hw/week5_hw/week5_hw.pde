int sceneNumber = 0;
int carzNumber = 0;

Car car1; 
Cloud cloudz[] = new Cloud[5];
Star stars[] = new Star[20];


void setup() { 
  size(600, 600);
  noStroke();

  car1 = new Car(0, height*.77);
  for (int i=0; i<cloudz.length; i++) {
    cloudz[i] = new Cloud();
  }
  
  for (int i=0; i<stars.length; i++) {
    stars[i] = new Star(random(0, width), random(0, height*.8), 5, 10);
  }
}

void draw() {
  switch(sceneNumber) {
  case 0:
    scene0();
   // carz0();
    break; //kinda like push pop. break btwn cases

  case 1:
    scene1();
    //carz1();
    break;

  case 2:
    scene2();
    //carz2();
    break;

  case 3:
    sceneNumber = 0;
    //carzNumber = 0;
    break;
  }
  
  switch(carzNumber) {
  case 0:
    carz0();
    break; //kinda like push pop. break btwn cases

  case 1:
    carz1();
    break;

  case 2:
    carz2();
    break;

  case 3:
    carzNumber = 0;
    break;
  } 
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
        carzNumber++;
    }
  }
  if (key == ' '){
      sceneNumber++; 
  }
}

void scene0() {
  //BACKGROUND
  background(199, 228, 252);
  fill(100);
  rect(0, height*.8, width, height);
  for (int i=0; i<cloudz.length; i++) {
    cloudz[i].display();
  }
  textSize(20);
  text("Press the spacebar to change time of day!", 95, height*.92);
  text("Press right arrow to change car speed/direction", 70, height*.97);
}

void carz0() {
  //CAR
  car1.speed = 1; //reset speed bc of scene 2
  car1.display0();
  car1.move();
  car1.restart();
}

void scene1() {
  //BACKGROUND
  background(138, 180, 216);
  fill(100);
  rect(0, height*.8, width, height);
  for (int i=0; i<cloudz.length; i++) {
    cloudz[i].displayGREY();
  } 
  fill(255);
  textSize(20);
  text("Press the spacebar to change time of day!", 95, height*.92);
  text("Press right arrow to change car speed/direction", 70, height*.97);
}

void carz1() {
  //CAR
  car1.display1();
  car1.move();
  car1.accelerate();
  car1.restart();
}

void scene2() {
  //BACKGROUND
  background(39, 91, 129);
  fill(100);
  rect(0, height*.8, width, height);
  for (int i=0; i<stars.length; i++) {
    stars[i].display();
  }
  
  fill(255);
  textSize(20);
  text("Press the spacebar to change time of day!", 95, height*.92);
  text("Press right arrow to change car speed/direction", 70, height*.97);
}

void carz2() {
  //CAR
  car1.display2();
  car1.move();
  car1.back();
  car1.restart();
}
