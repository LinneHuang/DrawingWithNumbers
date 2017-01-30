class P { //P for Particle

  //float x;
  //float y;
  PVector position;
  
  int diameter;
  // float speedY = 2.5;
  // float speedX;
  PVector speed;
  color c;

  P(float tempX, float tempY, int tempDiameter, float tempSpeed) {
    position = new PVector();
    position.x = tempX;
    position.y = tempY;
    position.z = random(-150, 150);
    diameter = tempDiameter;
    
    speed = new PVector(); // have to create a new place holder here. So that the sketch would work.
    speed.x = random(-1, 1);
    speed.y = tempSpeed;
    
    c = color(random(255), random(255), random(255));
    
    // speedY = tempSpeed;
    // speedX = random(-1, 1);
  }

  void move() {
    //x += random(-speed, speed); //org
    //y += random(-speed, speed); //org
    //x += speedX;
    //y += speedY; // new
    
    //position.x += speed.x;
    //position.y += speed.y;
    
    position.add(speed);
    
    if (position.y > height) { //new
      position.y = 0;
    }
    // place the dots back to the original point
  }

  void display() {
    noStroke();
    pushMatrix();
      translate(position.x, position.y, position.z);
      fill(c);
      sphere(diameter);
    popMatrix();
  }
}