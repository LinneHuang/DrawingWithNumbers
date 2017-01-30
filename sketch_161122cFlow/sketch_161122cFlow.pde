JitterBug[] bugs = new JitterBug[100];

PImage flow;

void setup() {
  size(900, 600);
  //flow = loadImage("flow.jpg");
  flow = loadImage("perlin.png");
  flow.filter(GRAY);
  flow.resize(width, height);
  
  for (int i = 0; i < bugs.length; i++) {
  float x = random(width);
  float y = random(height);
  int r = (int) random(10, 30);
  bugs[i] = new JitterBug(x, y, r);
  }
  
  background(0);
  
  noStroke();
  fill(255, 200);
}

void draw() {
  image(flow, 0, 0);
  
  //noFill();
  stroke(255);
  
  for (int i = 0; i < bugs.length; i++) {
  bugs[i].move();
  color c = flow.get((int)bugs[i].x, (int)bugs[i].y);
  float b = brightness(c);
  println(b);
  float mapped = -map(b, 0, 255, -10, 10);
 
  bugs[i].y += mapped;
  bugs[i].display();
  }
  
  //color c = flow.get(mouseX, mouseY);
  //float b = brightness(c);
  //println(b);
}