PImage donut;
PImage bakingPaper;

void setup() {
  size(800, 525);
  
  donut = loadImage("donut.png");
  bakingPaper = loadImage("bakingPaper.png");
  imageMode(CENTER);
  noStroke();
  noCursor();
}

void draw() {
   background(bakingPaper);
    
  // spread kiwis
  for (int k = 140; k <= 420; k = k + 120) {
    for (int i = 100; i <= 730; i = i + 120) {
      image(donut, i, k, 80, 80);
    }
  }
}

void mousePressed() {
  tint(random(255), random(255), random(255));
  saveFrame("myPicture" + "frameCount.png");
}