int numP = 100;
Particle [] particles; // 2
// Particle p = new Particle();

// 3 create ONE particle


// 1
void setup() {
  size(800, 400);
  
  particles = new Particle[numP];
  
  p = new Particle();
  p.initialize();
}

void draw() {
  p.update();
  
  background(0);
  
  p.display();
}