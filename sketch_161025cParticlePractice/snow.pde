class Snow {
  
  float xP; //X Position
  float yP; //Y Position
  float yS; //Y Speed
  float r;
  
  void initialize() {
    xP = random(width);
    yP = random(height);
    yS = random(1, 3);
    r = random(10, 20);
  }
  
  void update() {
    yP += yS;
    
    if (yP > height) {
      yP = 0;
    }  
  }
  
  void draw() {
    ellipse(xP, yP, r, r);
  }

};