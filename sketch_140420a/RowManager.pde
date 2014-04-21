class RowManager{
Table data;
Words[] ward;
int colcount;
int rowcount;
String words;
int xval;
int yval;
float s;
int rval;
int gval;
int bval;
int aval;
PFont font;

  RowManager(){
    data = loadTable("data.csv", "header");
    colcount = data.getColumnCount();
    rowcount = data.getRowCount();
    ward = new Words[rowcount]; 
   
    for(int i = 0; i < rowcount; i++){
     TableRow row = data.getRow(i);
     words = row.getString("word");
     xval = row.getInt("x");
     yval = row.getInt("y");
     s = row.getFloat("size");
     rval = row.getInt("r");
     gval = row.getInt("g");
     bval = row.getInt("b");
     aval = row.getInt("a");
     ward[i] = new Words(words,xval,yval,s,rval,gval,bval,aval);
    }
  }
  
  void display(){
   displayWord(); 
  }
  
  void displayWord(){
    for(int k = 0; k < rowcount; k++){
      noStroke();
      font = createFont("Sylfaen", ward[k].s);
      textFont(font);
      fill(ward[k].r,ward[k].g,ward[k].b,ward[k].a);
      text(ward[k].word,ward[k].x,ward[k].y);
    }
  }
}
