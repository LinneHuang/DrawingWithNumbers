//// way 2
int mouseXLastFrame;
int mouseYLastFrame;

void setup() {
  size(800, 800);
}

void draw() {
  stroke(255);
  line(mouseX, mouseY, mouseXLastFrame, mouseYLastFrame);
  //ellipse(mouseXLastFrame, mouseYLastFrame, 10, 10);
  
  mouseXLastFrame = mouseX;
  mouseYLastFrame = mouseY;

}




//// way 1
//void setup() {
//  size(800, 800);
//}

//void draw() {
//  stroke(255);
//  line(mouseX, mouseY, pmouseX, pmouseY);
//}