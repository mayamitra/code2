String text = "Good evening ladies and gentlemen, we love coding!";
int n =3;
ArrayList<String> ngrams = new ArrayList<String>();
int gramCounter;

void setup(){
  int ngramSize = text.length()/n;
  
  //ngrams = new String[ngramSize];
  
  for(int i=0; i<text.length()-2; i+=3){
    String gram = text.substring(i, i+3);
    
    if(!ngrams.contains(gram)){ //if gram is not contained in ngrams arraylist
      gramCounter = 1;
    }else{
      gramCounter+=1; 
    }
    
    ngrams.add(gram);
    println(gram, gramCounter, '\n');
    
    //ngrams[i] = gram;
    //println(ngrams[i]);
  }
}
