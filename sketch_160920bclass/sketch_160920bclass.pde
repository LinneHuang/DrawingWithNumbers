//160920 quiz! + tutorial

float ballHeight = 650;
float bubbleSize = 0;
float gradually = 0;

void setup() {
 size(800, 800);
 
 ballHeight = height - 100;
 background(#317EFF); // only "draw" background once
 
 stroke(245, 245, 245, 50);
 noFill();
}

void draw() {
  // // logic
  ballHeight = ballHeight - 5;
  bubbleSize = bubbleSize + 5.0;
  println("ballHeight = " + ballHeight);
  
  // if the ball is too far up
  // bring the ball back down
  if (ballHeight <= 0)  {
   ballHeight = 800;
   bubbleSize = 0;
 } else {
   println("I'm rolling");
 }
  
  
  
  // // draw
  //background(#317EFF);
  ellipse(gradually++, ballHeight, bubbleSize, bubbleSize);
}


////////////////////////////////////
//// extra notes on assignments ////
////////////////////////////////////
// 1. mapping: set the boundary
//    float varOne;
//    varOne = map(mouseX, 0, width, 244, 590);
//    float varTwo;
//    varTwo = map(mouseY, 0, height, 244, 590);
//
// 2. translate, and pushMatrix + popMatrix
//    tranlate(400, 100); -> change the position
//    pushMatrix + popMatrix -> set the range of variations / animations
//
// 3. colorMode(HSB);
// 4. frameRate(30);
// 5. 