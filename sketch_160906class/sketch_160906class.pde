void setup() {
  size(800, 800);
  background(210, 233, 40);
  
  // head
  rect(200, 200, 400, 400, 400);
  
  fill(0, 0, 0);
  stroke(0,0,0);
  // draw circle eyes
  // (0,0) upper left
  ellipse(300, 350, 55, 55);
  ellipse(500, 350, 55, 55);
  
  // mouth
  rect(300, 400, 200, 100, 40, 40, 200, 200);
  
}