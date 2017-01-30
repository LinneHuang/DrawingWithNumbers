float growing;

void setup() {
  size(800, 800);
  
  // 1. Get a circulative output
  //for (int i = 0; i < 10; i++) {
  //  int otherInt = i % 4; // i%2 -> odd even odd even...
  //  println(otherInt);
  //}
}

void draw() {
  // Way 2: fast way
  background(0);
  translate(width / 2, height / 2);
  float size = sin(frameCount * 0.05);
  size = map(size, -1, 1, 0, 300);
  ellipse(0, 0, size, size);
  
  // Way 1
  //growing += 0.005;
  //float s = cos(growing);
  //s *= 300;
  
  //// "you would see sin and mapped all the time"
  //float redVal = sin(growing);
  //redVal = map(redVal, -1, 1, 0, 255);
  
  //background(redVal, redVal, redVal);
  
  //translate(width / 2, height / 2);
  //fill(255, redVal, 255);
  //ellipse(0, s, 40, 40);
}