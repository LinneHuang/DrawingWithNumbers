boolean isAnimating = false;
float ballYPosition = 0;

void setup() {
  size(800, 800);
  ballYPosition = height;
}

void draw() {
  background(0);
  if (isAnimating) {
    ballYPosition -= 5.0
  }

  ellipse(width * 0.5, ballYPosition, 40, 40);
}

void mousePressed() {
  //if (isAnimating == true) {
  //  isAnimating = false;
  //} else if (isAnimating == false) {
  //  isAnimating = true;
  //}  
  
  isAnimating = !isAnimating;
}