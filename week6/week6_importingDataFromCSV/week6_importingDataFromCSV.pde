Table table; //built in processing class for a table

int numRows;
int largestHigh, smallestHigh;
int largestLow, smallestLow;

void setup() {
  size(displayWidth, displayHeight);
  table = loadTable("nyWeather.csv", "header");

  numRows = table.getRowCount(); //method in the pre-written Table class

  int [] year = new int[numRows];
  int [] high = new int[numRows];
  int [] low = new int[numRows];
  int [] yearMap = new int[numRows];
  int [] highMap = new int[numRows];
  int [] lowMap = new int[numRows];

  for (int i = 0; i<numRows; i++) {
    //returns the integer value from a specified row and column. 
    //first parameter is row, second is column 
    year[i] = table.getInt(i, 0); 
    low[i] = table.getInt(i, 1);
    high[i] = table.getInt(i, 2);
  }

  largestHigh = high[0];
  smallestHigh = high[0];
  for (int i = 0; i<numRows-1; i++) {
    if (high[i] > largestHigh) {
      largestHigh = high[i];
    }

    if (high[i] < smallestHigh) {
      smallestHigh = high[i];
    }
    
    if (low[i] < smallestLow) {
      smallestLow = low[i];
    }
    
    if (low[i] > largestLow) {
      largestLow = low[i];
    }
  }
}
