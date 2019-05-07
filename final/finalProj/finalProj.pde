ArrayList<TEXTBOX> textboxes1 = new ArrayList<TEXTBOX>();
ArrayList<TEXTBOX> textboxes2 = new ArrayList<TEXTBOX>();
ArrayList<TEXTBOX> textboxes3 = new ArrayList<TEXTBOX>();

String textValues[] = new String [11];

String [] story = new String [0];

String a;

int sceneNumber = 0;

void setup() {
  size(400, 650);

  //FOR CHOICE 1:
  TEXTBOX C1animal = new TEXTBOX(180, 103, 200, 35);
  TEXTBOX C1name = new TEXTBOX(180, 153, 200, 35);   
  TEXTBOX C1sameName = new TEXTBOX(180, 203, 200, 35);  
  TEXTBOX C1bodyPart = new TEXTBOX(180, 253, 200, 35);
  TEXTBOX C1verb = new TEXTBOX(180, 303, 200, 35);
  TEXTBOX C1place = new TEXTBOX(180, 353, 200, 35);
  TEXTBOX C1sameName1 = new TEXTBOX(180, 403, 200, 35);
  TEXTBOX C1verbPast = new TEXTBOX(180, 453, 200, 35);
  TEXTBOX C1properNoun = new TEXTBOX(180, 503, 200, 35);
  TEXTBOX C1noun = new TEXTBOX(180, 553, 200, 35);
  TEXTBOX C1injury = new TEXTBOX(180, 603, 200, 35);

  textboxes1.add(C1animal);
  textboxes1.add(C1name);
  textboxes1.add(C1sameName);
  textboxes1.add(C1bodyPart);
  textboxes1.add(C1verb);
  textboxes1.add(C1place);
  textboxes1.add(C1sameName1);
  textboxes1.add(C1verbPast);
  textboxes1.add(C1properNoun);
  textboxes1.add(C1noun);
  textboxes1.add(C1injury);

  //FOR CHOICE 2:
  TEXTBOX C2weather = new TEXTBOX(180, 103, 200, 35);
  TEXTBOX C2animal = new TEXTBOX(180, 153, 200, 35);   
  TEXTBOX C2mood = new TEXTBOX(180, 203, 200, 35);  
  TEXTBOX C2food = new TEXTBOX(180, 253, 200, 35);
  TEXTBOX C2animal1 = new TEXTBOX(180, 303, 200, 35);
  TEXTBOX C2animal2 = new TEXTBOX(180, 353, 200, 35);
  TEXTBOX C2verb = new TEXTBOX(180, 403, 200, 35);
  TEXTBOX C2noun = new TEXTBOX(180, 453, 200, 35);
  TEXTBOX C2verb1 = new TEXTBOX(180, 503, 200, 35);
  TEXTBOX C2adjective = new TEXTBOX(180, 553, 200, 35);
  TEXTBOX C2mood1 = new TEXTBOX(180, 603, 200, 35);


  textboxes2.add(C2weather);
  textboxes2.add(C2animal);
  textboxes2.add(C2mood);
  textboxes2.add(C2food);
  textboxes2.add(C2animal1);
  textboxes2.add(C2animal2);
  textboxes2.add(C2verb);
  textboxes2.add(C2noun);
  textboxes2.add(C2verb1);
  textboxes2.add(C2adjective);
  textboxes2.add(C2mood1);

  //FOR CHOICE 3:
  TEXTBOX C3mood = new TEXTBOX(180, 103, 200, 35);
  TEXTBOX C3genre = new TEXTBOX(180, 153, 200, 35);   
  TEXTBOX C3mood1 = new TEXTBOX(180, 203, 200, 35);  
  TEXTBOX C3noun = new TEXTBOX(180, 253, 200, 35);
  TEXTBOX C3pluralNoun = new TEXTBOX(180, 303, 200, 35);
  TEXTBOX C3name = new TEXTBOX(180, 353, 200, 35);
  TEXTBOX C3pluralNoun1 = new TEXTBOX(180, 403, 200, 35);
  TEXTBOX C3website = new TEXTBOX(180, 453, 200, 35);
  TEXTBOX C3verbING = new TEXTBOX(180, 503, 200, 35);
  TEXTBOX C3food = new TEXTBOX(180, 553, 200, 35);
  TEXTBOX C3verb = new TEXTBOX(180, 603, 200, 35);

  textboxes3.add(C3mood);
  textboxes3.add(C3genre);
  textboxes3.add(C3mood1);
  textboxes3.add(C3noun);
  textboxes3.add(C3pluralNoun);
  textboxes3.add(C3name);
  textboxes3.add(C3pluralNoun1);
  textboxes3.add(C3website);
  textboxes3.add(C3verbING);
  textboxes3.add(C3food);
  textboxes3.add(C3verb);
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
    scene5();
    break;

  case 6:
    scene6();
    break;
  }
}

void scene0() {
  background(#E37EB0);
  fill(250);
  textSize(20);
  text("Choose Your Mad Libs Adventure!", (width - textWidth("Choose Your Mad Libs Adventure!"))/2, 60);
  //CHOOSE YOUR MAD LIB ADVENTURE
  text("1) Me and My Pet", (width - textWidth("1) Me and My Pet"))/2, 160);
  text("2) A Trip to the Zoo", (width - textWidth("2) A Trip to the Zoo"))/2, 210);
  text("3) Choosing a TV Show to Watch", (width - textWidth("3) Choosing a TV Show to Watch"))/2, 260);
}

void scene1() {
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
  text("Injury: ", 20, 630);

  // DRAW THE TEXTBOXES
  for (TEXTBOX t : textboxes1) {
    t.DRAW();
  }
}

void scene2() {
  background(#FCCB00);
  fill(250);
  for (int i = 0; i<textValues.length; i++) { 
    a = "My " + textValues[0] + 
      "'s name is " + textValues[1] + ". She's super cute!" +
      textValues[2] + " has ten " + textValues[3] + "s and likes to " + textValues[4] + " around " + textValues[5] + ". " +
      "Yesterday, " + textValues[6] + " " + textValues[7] + " up and down the " + textValues[8] + " in my neighborhood. " +
      "She bumped into a " + textValues[9] + " and got a " + textValues[10] + ". I was so scared! " + 
      "I don't think she'll be going out again soon.";

    text(a, 5, 15, width-5, height);
  }

  text("Save This Story!", (width - textWidth("Save This Story!"))/2, height-40);

  if (mouseX > (width - textWidth("Save This Story!"))/2 && mouseX < width-(width - textWidth("Save This Story!"))/2
    && mouseY > (height-60) && mouseY < (height-40) && mousePressed) {
    story = append(story, a);  
    saveStrings("story.txt", story);
    exit();
  }
}

void scene3() {
  background(#88C7DE);
  fill(250);

  // LABELS
  fill(250, 250, 250);
  text("Mad Libs 2", (width - textWidth("Mad Libs 2")) / 2, 60);
  textSize(15);
  text("Press Enter to Submit", (width - textWidth("Press Enter to Submit")) / 2, 80);
  textSize(24);
  text("Weather: ", 20, 130);
  text("Animal, Plural: ", 21, 180);
  text("Mood: ", 20, 230);
  text("Food: ", 20, 280);
  text("Animal: ", 20, 330);
  text("Animal: ", 20, 380);
  text("Verb, Past: ", 20, 430);
  text("Noun: ", 20, 480);
  text("Verb, -ing: ", 20, 530);
  text("Adjective: ", 20, 580);
  text("Mood: ", 20, 630);

  // DRAW THE TEXTBOXES
  for (TEXTBOX t : textboxes2) {
    t.DRAW();
  }
}

void scene4() {
  //display text for choice 2 
  fill(250);
  background(#88C7DE);
  for (int i = 0; i<textValues.length; i++) { 
    a = "Yesterday, I went to the Zoo. The weather was " + textValues[0] + ", "+ 
      "so the " + textValues[1] + " were " + textValues[2] + ". " +
      "We ate fun zoo foods, like " + textValues[3] + ", and got to see the scary " + textValues[4] + ". " + 
      "Everything was pretty normal, until a " + textValues[5] + " " + textValues[6] + 
      " out of their display and stole my " + textValues[7] + ". " + 
      "Then, it started " + textValues[8] + " away. " +
      "I couldn't believe it! We tried to chase after it, but it was too " + textValues[9] + ". " + 
      "I was so " + textValues[10] + "! I won't be coming to the zoo again.";
    text(a, 5, 15, width-5, height);
  }

  text("Save This Story!", (width - textWidth("Save This Story!"))/2, height-40);

  if (mouseX > (width - textWidth("Save This Story!"))/2 && mouseX < width-(width - textWidth("Save This Story!"))/2
    && mouseY > (height-60) && mouseY < (height-40) && mousePressed) {
    story = append(story, a);  
    saveStrings("story.txt", story);
    exit();
  }
}

void scene5() {
  //imput text for choice 3
  background(#7BE598);
  fill(250);

  // LABELS
  fill(250, 250, 250);
  text("Mad Libs 3", (width - textWidth("Mad Libs 3")) / 2, 60);
  textSize(15);
  text("Press Enter to Submit", (width - textWidth("Press Enter to Submit")) / 2, 80);
  textSize(24);
  text("Mood: ", 20, 130);
  text("Genre: ", 20, 180);
  text("Mood: ", 20, 230);
  text("Noun: ", 20, 280);
  text("Plural Noun: ", 20, 330);
  text("Name: ", 20, 380);
  text("Plural Noun: ", 20, 430);
  text("Website: ", 20, 480);
  text("Verb, -ing: ", 20, 530);
  text("Food: ", 20, 580);
  text("Verb: ", 20, 630);

  // DRAW THE TEXTBOXES
  for (TEXTBOX t : textboxes2) {
    t.DRAW();
  }
}

void scene6() {
  //display text for choice 3
  background(#7BE598);

  fill(250);
  for (int i = 0; i<textValues.length; i++) { 
    a = "It's really hard to choose a TV show to watch when you're bored. If you're " + textValues[0] + 
      ", you might want to watch " + textValues[1] + ", but if you're " +
      textValues[2] + ", you might want to watch " + textValues[3] + ". " + 
      "You could also ask your friends and " + textValues[4] + " for a rec. " + 
      "But don't ask " + textValues[5] + "--they only watch shows about " + textValues[6] + "! " +
      "If there's nothing good on TV, check " + textValues[7] + ". " + 
      "There's always something there! If you're still stuck, ust give up and try a new hobby instead, " + 
      "like " + textValues[8] + ". Or you could eat some " + textValues[9] + " and " + textValues[10] + ".";

    text(a, 5, 15, width-5, height);
  }

  text("Save This Story!", (width - textWidth("Save This Story!"))/2, height-40);

  if (mouseX > (width - textWidth("Save This Story!"))/2 && mouseX < width-(width - textWidth("Save This Story!"))/2
    && mouseY > (height-60) && mouseY < (height-40) && mousePressed) {
    story = append(story, a);  
    saveStrings("story.txt", story);
    exit();
  }
}

void mousePressed() {
  //PRESS ON BOX TO TYPE
  for (TEXTBOX t : textboxes1) {
    t.PRESSED(mouseX, mouseY);
  }

  for (TEXTBOX t : textboxes2) {
    t.PRESSED(mouseX, mouseY);
  }

  for (TEXTBOX t : textboxes3) {
    t.PRESSED(mouseX, mouseY);
  }

  //CHOOSING MADLIBS ON INTRO SCENE!!
  if (sceneNumber == 0) {
    if (mouseX > (width - textWidth("1) Me and My Pet"))/2 && mouseX < width-(width - textWidth("1) Me and My Pet"))/2
      && mouseY > 140 && mouseY < 160) {
      sceneNumber=1;
    }

    if (mouseX > (width - textWidth("2) A Trip to the Zoo"))/2 && mouseX < width-(width - textWidth("2) A Trip to the Zoo"))/2
      && mouseY > 190 && mouseY < 210) {
      sceneNumber=3;
    }

    if (mouseX > (width - textWidth("3) Choosing a TV Show to Watch"))/2 && mouseX < width-(width - textWidth("3) Choosing a TV Show to Watch"))/2
      && mouseY > 240 && mouseY < 260) {
      sceneNumber=5;
    }
  }
}

//SUBMIT VALUES
void Submit1() {
  for (int i = 0; i<textValues.length; i++) { 
    textValues[i] = textboxes1.get(i).Text;
    println(textValues[i]);
  }
}
void Submit2() {
  for (int i = 0; i<textValues.length; i++) { 
    textValues[i] = textboxes2.get(i).Text;
    println(textValues[i]);
  }
}
void Submit3() {
  for (int i = 0; i<textValues.length; i++) { 
    textValues[i] = textboxes3.get(i).Text;
    println(textValues[i]);
  }
}

//PRESS KEYS TO TYPE; PRESS ENTER TO SUBMIT
void keyPressed() {
  for (TEXTBOX t : textboxes1) {
    if (t.KEYPRESSED(key, (int)keyCode)) {
      Submit1();
      if (sceneNumber==1) {
        sceneNumber++;
      }
    }
  }
  for (TEXTBOX t : textboxes2) {
    if (t.KEYPRESSED(key, (int)keyCode)) {
      Submit2();
      if (sceneNumber==3) {
        sceneNumber++;
      }
    }
  }
  for (TEXTBOX t : textboxes3) {
    if (t.KEYPRESSED(key, (int)keyCode)) {
      Submit3();
      if (sceneNumber==5) {
        sceneNumber++;
      }
    }
  }
}
