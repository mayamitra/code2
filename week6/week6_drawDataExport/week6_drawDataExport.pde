int [] x = new int[0];
int [] y = new int[0];

void setup(){
  size(600, 600);
}

void draw(){
  background(255);
  stroke(255);
  
  fill(0, 0, 255);
  //if(index < lines.length){
  //  String[] pieces = split(lines[index], "\t");
  //}
  
  beginShape();
  for(int i = 0; i<x.length; i++){
    vertex(x[i], y[i]);
    fill(200, 30, 200);
    ellipse(x[i], y[i], 10, 10);
    println("x: " + x[i] + "y+ " + y[i]);
  }
  endShape();
}

void mousePressed(){
  x = append(x, mouseX);
  y = append(y, mouseY);
}

void keyPressed(){
  //saving the data into text files
  if(key == 's'){
    String[] lines = new String[x.length];
    
    for(int i=0; i<x.length; i++){
      lines[i] = x[i] + "\t" + y[i];
    }
    
    //first parameter is what we want it to be called, second is what we're saving
    saveStrings("lines.txt.", lines);
    exit(); //exit the program whenever you save it
  }
}
