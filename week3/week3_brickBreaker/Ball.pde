class Ball{
  PVector pos; 
  PVector vel; 
  
  int size = 20; 
  
  //CONSTRUCTOR
  Ball(float x, float y, float xSpeed, float ySpeed){
    pos = new PVector(x, y); 
    vel = new PVector(xSpeed, ySpeed); 
  }
  
  //METHODS
  void bounceSide(){
     vel.x = vel.x*-1; 
  }
  
  void bounceTop(){
     vel.y = vel.y*-1; 
  }
  
  void ballReset(){
    pos.x = width/2;
    pos.y = height*.75;
  }
  
  void paddleBounce(){
     vel = vel.mult(-1); 
  }
  
  void move(){
    pos.add(vel);   
  }
  
  void display(){
    fill(255); 
    ellipse(pos.x, pos.y, size, size); 
  }
}
