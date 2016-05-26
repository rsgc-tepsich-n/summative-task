//Variables
float x = 0;
float y = 0;

float x1 = 0;
float y1 = 0;

float x2 = 0;
float y2 = 0;

float x3 = 0;
float y3 = 0;

PImage photo;

  void setup() {
    // Create canvas to work on
    size(500, 400);
    photo = loadImage("DJ.1.jpg");
  x = 290;
  y = 290;
  x1 = 285;
  y1 = 290;
  x2 = 285;
  y2 = 290;
  x3 = 285;
  y3 = 290;
}
void draw(){
  image(photo, 0, 0);

  // Bright red
  fill(255, 0, 0);
  //Circle number 1 - Vertical 
  x += 0;
  y += 2;
  //make circle
  ellipse(x, y, 10, 10);
  //detect top edge
  if (y > 350) {
    y = 260;
  }
  //Circle number 2 - Vertical
  x1 +=0;
  y1 -= 2;
  //make circle
  ellipse(x1, y1, 10, 10);
  //detect top edge
  if (y1 < 220) {
    y1 = 260;
  }
  //Circle number 3 - Horizontal
  x2 += 2;
  y2 += 0;
  //make circle
  ellipse(x2, y2, 10, 10);
  //detect buttom edge
  if (x2 > 355) {
    x2 = 260;
  }
  //Circle number 4 - Horizontal
  x3 -= 2;
  y3 += 0;
  //make circle
  ellipse(x3, y3, 10, 10);
  //detect buttom edge
  if (x3 < 205) {
    x3 = 260;
  }
  //Colour of Lines
  stroke(0);
  //Lines connecting to each circle
  line(x, y, x1, y1);
  line(x, y, x2, y2);
  line(x, y, x3, y3);
  line(x1, y1, x2, y2);
  line(x1, y1, x3, y3);
  line(x2, y2, x3, y3);
}