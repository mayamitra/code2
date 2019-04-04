String text = "This unicorn has a horn and is a mythological creature";

int order = 3; //the pieces we'll be chunking it into

int generatedTextLength = 100;

HashMap<String, ArrayList<String>>chain;
//hashmap stores a collection
//instead of array and index to access the location but this uses a key to access

void setup() {
  size(600, 600);
  chain = new HashMap<String, ArrayList<String>>();
  for (int i = 0; i<text.length() - order; i++) {
    String gram = text.substring(i, i+order);
    //substring (where to start the cut, where you end the cut)
    ArrayList<String> characters;
    if (!chain.containsKey(gram)){ 
      //if my long storage conatiner does not contain the key of my chunk...
      characters = new ArrayList<String>();
      chain.put(gram, characters);
    } else {
      characters = chain.get(gram);
    }
    characters.add(text.substring(i+order, i+order+1));
    //if my characters isn't there, create another array list and add an extra character
  }
}

void draw() {
  background(0);
  fill(255);
  textAlign(CENTER);
  text(results, width/4, height/4, width/2, height/2);
}

String results = " ";

void mousePressed() {
  String currentGram = text.substring(0, order);
  results = currentGram;
  for (int i = 0; i<generatedTextLength; i++){
    if(chain.containsKey(currentGram)){
      ArrayList<String> characters = chain.get(currentGram);
      results += characters.get(round(random(characters.size()-1)));
      
      currentGram = results.substring(results.length()-order, results.length());
    }
  }
}
