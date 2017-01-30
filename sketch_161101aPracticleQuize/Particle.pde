class Particle {
  float x;
  float y;
  float speed;
  
  void initialize() {
    x = random(width);
    y = random(height);
    speed = random(1, 4);
  }
  
  void update() {
    y += speed;
  
  }
  
  void display() {
    rect(x, y, 30, 30);
  }
};    