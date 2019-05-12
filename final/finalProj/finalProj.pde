TEXTBOX myTextbox1[] = new TEXTBOX [11];
TEXTBOX myTextbox2[] = new TEXTBOX [11]; 
TEXTBOX myTextbox3[] = new TEXTBOX [11]; 

String [] storyText1 = {"My ", "'s name is ", ". She's super cute! ", " has ten ", "s and likes to ", " around ", ". Yesterday, ", " ", 
  " up and down the ", " in my neighborhood. She bumped into a ", " and got a ", ". I was so scared! I don't think she'll be going out again soon."};

String [] storyText2 = {"Yesterday, I went to the Zoo. The weather was ", ", so the ", " were ", ". We ate fun zoo foods, like ", 
  ", and got to see the scary ", ". Everything was pretty normal, until a ", " ", " out of their display and stole my ", ". Then, it started ", 
  " away. I couldn't believe it! We tried to chase after it, but it was too ", ". I was so ", "! I won't be coming to the zoo again."};

String [] storyText3 = {"It's really hard to choose a TV show to watch when you're bored. If you're ", ", you might want to watch ", ", but if you're ", 
  ", you might want to watch ", ". You could also ask your friends and ", " for a rec. But don't ask ", "--they only watch shows about ", 
  "! If there's nothing good on TV, check ", ". There's always something there! If you're still stuck, just give up and try a new hobby instead, like ", 
  ". Or you could eat some ", " and ", "." };

String textValues[] = new String [11];

String [] story = new String [0];

String a;

int sceneNumber = 0;

void setup() {

  size(400, 650);

  //FOR CHOICE 1:
  for (int i =0; i < 11; i++) {
    myTextbox1[i] = new TEXTBOX(180, (i*50)+103, 200, 35);
  }

  //FOR CHOICE 2:
  for (int i =0; i < 11; i++) {
    myTextbox2[i] = new TEXTBOX(180, (i*50)+103, 200, 35);
  }

  //FOR CHOICE 3:
  for (int i =0; i < 11; i++) {
    myTextbox3[i] = new TEXTBOX(180, (i*50)+103, 200, 35);
  }
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
  textSize(23);
  text("Choose Your Mad Libs Adventure!", (width - textWidth("Choose Your Mad Libs Adventure!"))/2, 60);textSize(23);
  
  textSize(20);
  text("1) Me and My Pet", (width - textWidth("1) Me and My Pet"))/2, 200);
  text("2) A Trip to the Zoo", (width - textWidth("2) A Trip to the Zoo"))/2, 250);
  text("3) Choosing a TV Show to Watch", (width - textWidth("3) Choosing a TV Show to Watch"))/2, 300);
  
  text("Click on an option to begin...", (width - textWidth("Click on an option to begin..."))/2, height-20);
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

  for (TEXTBOX t : myTextbox1) {
    t.DRAW();
  }
}

void scene2() {
  background(#FCCB00);
  fill(250);
  for (int i = 0; i<storyText1.length; i++) { 
    a = storyText1[0] + textValues[0] + storyText1[1] + textValues[1] + storyText1[2] + textValues[2] + storyText1[3] + textValues[3] + 
      storyText1[4] + textValues[4] + storyText1[5] + textValues[5] + storyText1[6] + textValues[6] + storyText1[7] + textValues[7] + 
      storyText1[8] + textValues[8] + storyText1[9] + textValues[9] + storyText1[10] + textValues[10] +storyText1[11];

    text(a, 5, 15, width-5, height);
  }

  text("Click Here to Save This Story!", (width - textWidth("Click Here to Save This Story!"))/2, height-40);

  if (mouseX > (width - textWidth("Click Here to Save This Story!"))/2 && mouseX < width-(width - textWidth("Click Here to Save This Story!"))/2
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
  for (TEXTBOX t : myTextbox2) {
    t.DRAW();
  }
}

void scene4() {
  //display text for choice 2 
  fill(250);
  background(#88C7DE);
  for (int i = 0; i<storyText2.length; i++) { 
    a = storyText2[0] + textValues[0] + storyText2[1] + textValues[1] + storyText2[2] + textValues[2] + storyText2[3] + textValues[3] + 
      storyText2[4] + textValues[4] + storyText2[5] + textValues[5] + storyText2[6] + textValues[6] + storyText2[7] + textValues[7] + 
      storyText2[8] + textValues[8] + storyText2[9] + textValues[9] + storyText2[10] + textValues[10] +storyText2[11];

    text(a, 5, 15, width-5, height);
  }

  text("Click Here to Save This Story!", (width - textWidth("Click Here to Save This Story!"))/2, height-40);

  if (mouseX > (width - textWidth("Click Here to Save This Story!"))/2 && mouseX < width-(width - textWidth("Click Here to Save This Story!"))/2
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
  for (TEXTBOX t : myTextbox2) {
    t.DRAW();
  }
}

void scene6() {
  //display text for choice 3
  background(#7BE598);

  fill(250);
  for (int i = 0; i<storyText2.length; i++) { 
    a = storyText3[0] + textValues[0] + storyText3[1] + textValues[1] + storyText3[2] + textValues[2] + storyText3[3] + textValues[3] + 
      storyText3[4] + textValues[4] + storyText3[5] + textValues[5] + storyText3[6] + textValues[6] + storyText3[7] + textValues[7] + 
      storyText3[8] + textValues[8] + storyText3[9] + textValues[9] + storyText3[10] + textValues[10] +storyText3[11];

    text(a, 5, 15, width-5, height);
  }

  text("Click Here to Save This Story!", (width - textWidth("Click Here to Save This Story!"))/2, height-40);

  if (mouseX > (width - textWidth("Click Here to Save This Story!"))/2 && mouseX < width-(width - textWidth("Click Here to Save This Story!"))/2
    && mouseY > (height-60) && mouseY < (height-40) && mousePressed) {
    story = append(story, a);  
    saveStrings("story.txt", story);
    exit();
  }
}

void mousePressed() {
  //PRESS ON BOX TO TYPE
  for (TEXTBOX t : myTextbox1) {
    t.PRESSED(mouseX, mouseY);
  }

  for (TEXTBOX t : myTextbox2) {
    t.PRESSED(mouseX, mouseY);
  }

  for (TEXTBOX t : myTextbox3) {
    t.PRESSED(mouseX, mouseY);
  }

  //CHOOSING MADLIBS ON INTRO SCENE!!
  if (sceneNumber == 0) {
    if (mouseX > (width - textWidth("1) Me and My Pet"))/2 && mouseX < width-(width - textWidth("1) Me and My Pet"))/2
      && mouseY > 180 && mouseY < 200) {
      sceneNumber=1;
    }

    if (mouseX > (width - textWidth("2) A Trip to the Zoo"))/2 && mouseX < width-(width - textWidth("2) A Trip to the Zoo"))/2
      && mouseY > 230 && mouseY < 250) {
      sceneNumber=3;
    }

    if (mouseX > (width - textWidth("3) Choosing a TV Show to Watch"))/2 && mouseX < width-(width - textWidth("3) Choosing a TV Show to Watch"))/2
      && mouseY > 280 && mouseY < 300) {
      sceneNumber=5;
    }
  }
}

//SUBMIT VALUES
void Submit1() {
  for (int i = 0; i<textValues.length; i++) { 
    textValues[i] = myTextbox1[i].Text;
    //println(textValues[i]);
  }
}

void Submit2() {
  for (int i = 0; i<textValues.length; i++) { 
    textValues[i] = myTextbox2[i].Text;
    println(textValues[i]);
  }
}
void Submit3() {
  for (int i = 0; i<textValues.length; i++) { 
    textValues[i] = myTextbox3[i].Text;
    println(textValues[i]);
  }
}

//PRESS KEYS TO TYPE; PRESS ENTER TO SUBMIT
void keyPressed() {
  for (TEXTBOX t : myTextbox1) {
    if (t.KEYPRESSED(key, (int)keyCode)) {
      Submit1();
      if (sceneNumber==1) {
        sceneNumber++;
      }
    }
  }

  for (TEXTBOX t : myTextbox2) {
    if (t.KEYPRESSED(key, (int)keyCode)) {
      Submit2();
      if (sceneNumber==3) {
        sceneNumber++;
      }
    }
  }
  for (TEXTBOX t : myTextbox3) {
    if (t.KEYPRESSED(key, (int)keyCode)) {
      Submit3();
      if (sceneNumber==5) {
        sceneNumber++;
      }
    }
  }
}
