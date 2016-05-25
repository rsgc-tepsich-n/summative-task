//Variables
float x = 0;
float y = 0;

float x1 = 0;
float y1 = 0;

float x2 = 0;
float y2 = 0;

float x3 = 0;
float y3 = 0;

void setup() {
  // Create canvas to work on
  size(500, 500);
  x = 250;
  y = 250;
  x1 = 250;
  y1 = 250;
  x2 = 250;
  y2 = 250;
  x3 = 250;
  y3 = 250;
}
void draw() {
  background(0);
  //Circle number 1 - Vertical 
  x += 0;
  y += 2;
  //make circle
  ellipse(x, y, 50, 50);
  //detect top edge
  if (y > height) {
    y = 260;
  }
  //Circle number 2 - Vertical
  x1 +=0;
  y1 -= 2;
  //make circle
  ellipse(x1, y1, 50, 50);
  //detect top edge
  if (y1 < 0) {
    y1 = 260;
  }
  //Circle number 3 - Horizontal
  x2 += 2;
  y2 += 0;
  //make circle
  ellipse(x2, y2, 50, 50);
  //detect buttom edge
  if (x2 > width) {
    x2 = 260;
  }
  //Circle number 4 - Horizontal
  x3 -= 2;
  y3 += 0;
  //make circle
  ellipse(x3, y3, 50, 50);
  //detect buttom edge
  if (x3 < 0) {
    x3 = 260;
  }
  //Colour of Lines
  stroke(255);
  
  //Lines connecting to each circle
  line(x, y, x1, y1);
  line(x, y, x2, y2);
  line(x, y, x3, y3);
  line(x1, y1, x2, y2);
  line(x1, y1, x3, y3);
  line(x2, y2, x3, y3);
}