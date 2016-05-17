//Variables
float x = 0;
float y = 0;

void setup() {
  // Create canvas to work on
  size(500, 500);
}
void draw() {
  background(810);
  x += 2;
  y += - 2;
  ellipse(250 + x, 250 + y, 50, 50);
  if (x > width - 210) {
   x = 0;
  }
   if (y > height + 0) {
   y = 0;
  }
}