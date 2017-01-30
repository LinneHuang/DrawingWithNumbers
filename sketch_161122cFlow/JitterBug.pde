class JitterBug {

  float x;
  float y;
  int diameter;
  float speed = 2.5;

  JitterBug(float tempX, float tempY, int tempDiameter) {
    x = tempX;
    y = tempY;
    diameter = tempDiameter;
  }

  void move() {
    x += speed;
    
    if (x > width){
      x = 0;
      y = random(height);
    }
  }

  void display() {
    ellipse(x, y, diameter, diameter);
  }
}