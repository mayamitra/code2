Star[] stars = new Star[500];

PShape sun, planet1, planet2;
PImage sunText, planet1Text, planet2Text;

void setup() {
  fullScreen(P3D, 2);
  noStroke();

  sunText = loadImage("sun.jpg"); 
  planet1Text = loadImage("earth.jpg");
  planet2Text = loadImage("jupiter.jpg");

  fill(255);

  sun = createShape(SPHERE, 200);
  sun.setTexture(sunText);

  planet1 = createShape(SPHERE, 90);
  planet1.setTexture(planet1Text);

  planet2 = createShape(SPHERE, 150);
  planet2.setTexture(planet2Text);
  
  for (int i =0; i< stars.length; i++){
    stars[i] = new Star();
  }
}

void draw() {
  background(0);
  
  //STARFIELD
  pushMatrix();
  translate(width/2, height/2);
  for (int i =0; i <stars.length; i++){
   stars[i].move();
   stars[i].display();
  }
  popMatrix();

  pushMatrix();

  translate(width/2, height/2, -250); //translate the sun

  pushMatrix();
  rotateY(PI * frameCount / 500); //rotate the sun
  shape(sun);
  popMatrix();

  rotateY(PI * frameCount / 300); //rotate earth 
  //translate(350, 0, 250);  
  translate(0, 0, 500); //translate earth
  shape(planet1);

  pushMatrix();
  rotateY(PI * frameCount / 300); //rotate jupiter 
  translate(0, 0, 300); //translate jupiter 
  shape(planet2);
  popMatrix();
  popMatrix();
}

//make rotations more realistic
//create starfield using classes of spheres and arrays
//think abouta adding point lights/spotlights
