// draw a doge!

PImage img;

void setup() {
  size(537, 529);
  
  img = loadImage("doge.jpeg");
  background(0);
  noStroke();
}

void draw() {
  for (int i = 0; i < 10; i++) {
  
  int randX = (int) random(width);
  int randY = (int) random(height);
  
  color c = img.get(randX, randY);
  float b = brightness(c);
  fill(b);
  ellipse(randX, randY, 10, 10);
  } 
}