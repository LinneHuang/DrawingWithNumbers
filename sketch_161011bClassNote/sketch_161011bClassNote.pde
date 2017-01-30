float rotationAmount = 0;

void setup() {
  size(800, 800);
  stroke(255);
}

void draw() {
  //rotationAmount += 1.0;
  
  background(0);
  
  pushMatrix();
  // means: make 400, 400 the new zero, zero.
  translate(400, 400); 
  line(0, 0, 200, 0);
  
  for (int i = 0; i < 100; i++) {
    translate(200, 0);
    //rotate(radians(0));
    rotate(radians(frameCount / 2));
    scale(0.95);
    line(0, 0, 200, 0);
    ellipse(0, 0, 40, 40);  
  }
  popMatrix();

  text("Transforms", width / 2, 40);
  
}