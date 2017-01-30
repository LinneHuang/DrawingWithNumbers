// gradient!

void setup () {
  size(800, 800);
}


void draw () {
  
  background(0);
  rectMode(CENTER);
  noStroke();
  noFill();

  for (int i = 0; i < 80; i++) {
    for (int j = 0; j < 80; j++) {
      fill(j * 20, i * 20, random(180, 255));
      ellipse(i * 40, j * 40 + random(mouseX * 0), i, i);
    }
  
  } 
}