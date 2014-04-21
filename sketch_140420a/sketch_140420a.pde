RowManager row;

void setup() {
  size(500,500);
  textAlign(CENTER);
  row = new RowManager();
}

void draw() {
  background(0);
 row.display();
}
