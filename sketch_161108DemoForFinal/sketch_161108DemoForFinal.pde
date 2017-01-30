import peasy.*; //*
PeasyCam cam; //*

P[] ps = new P[33]; //ps for particles
// means: class-array

void setup() {
  size(800, 400, P3D);
  
  cam = new PeasyCam(this, 100);
  cam.setMinimumDistance(50);
  cam.setMaximumDistance(500);
  
  for (int i = 0; i < ps.length; i++) {
    float x = random(width);
    float y = random(height);
    int r = i + 2;
    float s = random(1, 5);
    ps[i] = new P(x, y, r, s);
  }
}

void draw() {
  background(0); // new
  lights();
  // the reason why it's here because this is an universal element for the whole program. Not a specific class.
  for (int i = 0; i < ps.length; i++) {
    ps[i].move();
    ps[i].display();
  }
}