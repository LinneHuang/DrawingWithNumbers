float moonHeight = 350;
float blueValue = 255;

// set up the size of canvas
void setup() {
    size(800, 700);
    
    // integer for RGB
  int r = 136;
  int g = 213;
  int b = 198;
  
  int myStrokeWeight = 3;
  
  for (int i = 0; i < height; i++) {
    // let i change R/G/B value
    stroke(mouseX, mouseY, b);
    // make gradient with lines
    line(0, i, width, i);
  }
}


void draw() {
    
    //moonHeight = moonHeight - 0.2;
    moonHeight = random(moonHeight) - 0.1;
    blueValue = blueValue - 1;
    
    //println
    println("x: "+ mouseX);
    println("y: "+ mouseY);
    
    background(31, 4, blueValue);
    
    //moon
    noStroke();
    fill(mouseX, 255, mouseY);
    ellipse(mouseX, 100, 100, 100);
    
    //horizon
    stroke(#ffffff);
    line(0, 475, 800, 476);
    
    //roof
    noStroke();
    fill(#FF5F43);
    triangle(500, 408, 450, 450, 500+50, 450);
    
    //house body
    noStroke();
    fill(#ffffff);
    rect(460, 450, 80, 41);
    
    //door
    noStroke();
    fill(#000000);
    rect(493, 471, 16, 20, 15, 15, 0, 0);
}

void mousePressed() {
  stroke(203, 234, 44, 80);
}