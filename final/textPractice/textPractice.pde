ArrayList<TEXTBOX> textboxes = new ArrayList<TEXTBOX>();
String textValues[] = new String [10];

void setup() {
   size(400, 600);
   
   TEXTBOX animal = new TEXTBOX(180, 103, 200, 35);
   TEXTBOX name = new TEXTBOX(180, 153, 200, 35);   
   TEXTBOX sameName = new TEXTBOX(180, 203, 200, 35);  
   TEXTBOX bodyPart = new TEXTBOX(180, 253, 200, 35);
   TEXTBOX verb = new TEXTBOX(180, 303, 200, 35);
   TEXTBOX place = new TEXTBOX(180, 353, 200, 35);
   TEXTBOX sameName1 = new TEXTBOX(180, 403, 200, 35);
   TEXTBOX verbPast = new TEXTBOX(180, 453, 200, 35);
   TEXTBOX properNoun = new TEXTBOX(180, 503, 200, 35);
   TEXTBOX noun = new TEXTBOX(180, 553, 200, 35);
   
   textboxes.add(animal);
   textboxes.add(name);
   textboxes.add(sameName);
   textboxes.add(bodyPart);
   textboxes.add(verb);
   textboxes.add(place);
   textboxes.add(sameName1);
   textboxes.add(verbPast);
   textboxes.add(properNoun);
   textboxes.add(noun);
}

void draw() {
   background(#FCCB00);
   
   // LABELS
   fill(250, 250, 250);
   text("Mad Libs 1", (width - textWidth("Mad Libs 1")) / 2, 60);
   textSize(15);
   text("Press Enter to Submit", (width - textWidth("Press Enter to Submit")) / 2, 80);
   textSize(24);
   text("Animal: ", 20, 130);
   text("Name: ", 20, 180);
   text("Same Name: ", 20, 230);
   text("Body Part: ", 20, 280);
   text("Verb: ", 20, 330);
   text("Place, Plural: ", 20, 380);
   text("Same Name: ", 20, 430);
   text("Verb, Past: ", 20, 480);
   text("Proper Noun: ", 20, 530);
   text("Noun: ", 20, 580);
   
   // DRAW THE TEXTBOXES
   for (TEXTBOX t : textboxes) {
      t.DRAW();
   }
   
}

//PRESS ON BOX TO TYPE
void mousePressed() {
   for (TEXTBOX t : textboxes) {
      t.PRESSED(mouseX, mouseY);
   }
}

//SUBMIT VALUES
void Submit() {
  for (int i = 0; i <10; i++){ 
    textValues[i] = textboxes.get(i).Text;
    println(textValues[i]);
  }

}

//PRESS KEYS TO TYPE; PRESS ENTER TO SUBMIT
void keyPressed() {
   for (TEXTBOX t : textboxes) {
      if (t.KEYPRESSED(key, (int)keyCode)) {
         Submit();
      }
   }
}
