//Variables
float x = 0;
float y = 0;

void setup() {
  // Create canvas to work on
  size(500, 500);
  x = 250;
  y = 250;
}
void draw() {
  background(0);
  x += 0;
  y += 2;
  //make circle
  ellipse(x, y, 50, 50);
 //detect top edge
  if(y > height){
    y = 260; 
  //detect buttom edge
  if(x > width)
    x = 260;
  }
}