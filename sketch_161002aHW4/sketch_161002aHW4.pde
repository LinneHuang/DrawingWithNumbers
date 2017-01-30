// Spread kiwis in the plate. Woof.

PImage kiwi;
PImage plate;
PImage paw;

void setup() {
  size(1000, 1000);
  noStroke();
  fill(255, 50);
  
  kiwi = loadImage("kiwi.png");
  plate = loadImage("plate.png");
  paw = loadImage("paw.png");
  imageMode(CENTER);
  background(plate);

}

void draw() {
  //paw as cursor
  cursor(paw);
  
  // spread kiwis
  image(kiwi, mouseX, mouseY, 150, 150);
  }

void mousePressed() {
  // press to change kiwi's color
  tint(random(255), random(255), random(255), 70);
  
  // save as png
  saveFrame("myPicture" + "frameCount.png");
}