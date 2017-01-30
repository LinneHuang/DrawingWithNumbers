//float ballsHeight = 750;

//void setup() {
//  size(800, 800);
//}

//void draw() {
//  // setup
//  background(#818181);
//  ballsHeight -= 5;
  
//  pushMatrix();
//    translate(width / 2, ballsHeight);
//    noStroke();
//    fill(255, 50);
//    ellipse(10, 10, 40, 40);
//    ellipse(17, 30, 40, 40);
//    ellipse(-17, 34, 40, 40);
//  popMatrix();
  
  
//  if (ballsHeight <= 50)  {
//   ballsHeight = 750;
//   } else {
//   println("come back");
//   }
  
//}

float cloudHeight = 0;
boolean isAnimating = false;
int selectedColor = 0;


void setup() {
  size(800,800);
  cloudHeight = 800;
  noStroke();
  fill(90, 255);
}

void draw() {
  // logic
  if (selectedColor == 0) {
    fill(0, 0, 255, 70);
  }
  
  if (mouseY > 600) {
    isAnimating = true;
  }
  
  if (isAnimating) {
    cloudHeight -= 4;
  }
  println(selectedColor);
  
  background(0);
  pushMatrix();
    translate(width / 2, cloudHeight);
      noStroke();
      ellipse(10, 10, 40, 40);
      ellipse(17, 30, 40, 40);
      ellipse(-17, 34, 40, 40);
  popMatrix();
}

void mousePressed() {
  selectedColor += 1;
  isAnimating = !isAnimating;
}