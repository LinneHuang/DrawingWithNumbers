int currentFrame = 0;

void setup() {
  size(800, 800);
  noFill();
  stroke(255);
}

void draw() {
  background(0);
  rectMode(CENTER);
  
  for (int i = 0; i < 80; i++) {
    noFill();
    pushMatrix();
      translate(i * 40, 100);
      ellipse(0, 0, 40, 40);
      fill(255, i * 8);
      rect(0, 0, 20, 20);
    popMatrix();
  }

}


//float speed = 0;

//void setup() {
//  size(800, 800);
//  noFill();
//  stroke(255);
//}

//void draw() {
//  background(0);
//  speed = speed + 1;
  
//  for (int i = 0; i <= 800; i = i + 10) {
//    ellipse(i, speed, mouseX, mouseX);
//    stroke(random(255), random(255), random(255), 80);
//    strokeWeight(10);
//  }
  
//   if (speed >= 800)  {
//   speed = 0;
//   } else {
//   println("come back");
//   }
//}