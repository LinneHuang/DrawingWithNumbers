// Let's draw with three brushes.

PImage crayons;
PImage blackboard;
boolean isAnimating = false;

void setup() {
  size(800, 526);
  noStroke();
  
  crayons = loadImage("crayons.png");
  blackboard = loadImage("blackboard.png");
  imageMode(CENTER);
  background(blackboard);
}

void draw() {  
  if (mouseX <= 800) {
    isAnimating = true;
  }
  
  if (isAnimating) {
    image(crayons, mouseX, mouseY, 30, 30);
    tint(random(255), random(255), random(255), 70);
  }
}

void mousePressed() {
  isAnimating = !isAnimating;
  saveFrame("myPicture" + "frameCount.png");
}