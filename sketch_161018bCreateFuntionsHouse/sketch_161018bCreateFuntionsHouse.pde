void setup() {
  size(800, 800);
}

void draw() {
  background (0);
  
  drawHouse(100, 100);

}

void drawHouse(float houseX, float houseY) {
  pushMatrix();
    //body
    fill(0, 255, 0);
    rect(10, 50, 60, 50);
    
    //roof
    triangle(2, 50, 80, 50, 43, 19);
    
    //chimney
    fill(#E59807);
    rect(21, 16, 11, 25);
  popMatrix();

}