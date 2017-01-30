PImage cloud;

void setup() {
  size(800, 530);
  noStroke();
  fill(255, 50);
  
  cloud = loadImage("kiwi.png");
  imageMode(CENTER);
  background(0);
  noCursor();
}

void draw() {
  image(cloud, mouseX, mouseY, 200, 200);
}

void mousePressed() {
  tint(random(255), random(255), random(255), 80);
  //tint(255, 5);
  //tint(255, 255, 255, random(50));
  //saveFrame("myPicture" + "frameCount.png");
  //saveFrame("myPicture####.png");
}