Car car1;
Cloud cloudz[] = new Cloud[5];
ArrayList <Car> cars;

void setup() {
  size(600, 600);
  car1 = new Car(random(0, width), random(height*.75, height));
  cars = new ArrayList<Car>();
  noStroke();

  for (int i=0; i<cloudz.length; i++) {
    cloudz[i] = new Cloud();
  }
}

void draw() {
  //BACKGROUND
  background(81, 123, 155);
  for (int i=0; i<cloudz.length; i++) {
    cloudz[i].display();
  }
  fill(100);
  rect(0, width*.8, width, width*.25);


  //CARS
  for (int i=0; i<cars.size(); i++) {
    Car c = cars.get(i);
    c.display();
    c.move();
    c.accelerate();
    if (c.alive() == false) {
      cars.remove(i);
    }
  }

  //SINGLE INSTANCE OF CAR
  car1.display();
  car1.move();
  car1.accelerate();
}

void mousePressed() {
  cars.add(new Car(mouseX, random(height*.75, height*.9)));
}
